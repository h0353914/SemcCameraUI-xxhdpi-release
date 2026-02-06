package com.sonyericsson.cameracommon.storage;

import android.content.Context;
import android.net.Uri;
import android.os.Debug;
import android.os.Environment;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.provider.DocumentsContract;
import android.support.annotation.AnyThread;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.ThreadUtil;
import com.sonyericsson.cameracommon.mediasaving.MediaSavingResult;
import com.sonyericsson.cameracommon.mediasaving.StoreDataResult;
import com.sonyericsson.cameracommon.mediasaving.updator.MediaProviderUpdator;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Semaphore;
import org.apache.commons.imaging.ImageReadException;
import org.apache.commons.imaging.ImageWriteException;

public class SavingTaskManager {
    private static final String CAN_PUSH_STORE_TASK_HPROF_FILE_NAME = "/can_push_store_task.hprof";
    private static final String SUFFIX_TEMP_FILE = ".rewrite-exif";
    public static final String TAG = "SavingTaskManager";
    private static final String THREAD_NAME = "SavingTask";
    private static final ExecutorService mExecutor = ThreadUtil.buildExecutor("SavingTask");
    Context mContext;
    private Handler mHandler;
    private final SavingTaskManager$MediaScanController mMediaScanController;
    private final Map<Storage$StorageType, Queue<SavingTaskManager$PhotoSavingTask>> mSavingTaskQueueMap;
    private Map<Storage$StorageType, Semaphore> mStorageAccessSemaphoreMap;
    private CameraStorageManager mStorageManager;
    private Handler mStoreDataHandler;
    private MediaProviderUpdator mUpdator;
    private Thread mStoreVideoThread = null;
    private SavingTaskInquiry mInquiry = new SavingTaskManager$1(this);
    private final SavingTaskManager$MediaScanController$OnScanCompletedListener mOnScanCompletedListener = new SavingTaskManager$3(this);

    static /* synthetic */ Map access$000(SavingTaskManager savingTaskManager) {
        return savingTaskManager.mSavingTaskQueueMap;
    }

    static /* synthetic */ SavingTaskManager$MediaScanController access$1000(SavingTaskManager savingTaskManager) {
        return savingTaskManager.mMediaScanController;
    }

    static /* synthetic */ Thread access$1202(SavingTaskManager savingTaskManager, Thread thread) {
        savingTaskManager.mStoreVideoThread = thread;
        return thread;
    }

    static /* synthetic */ CameraStorageManager access$200(SavingTaskManager savingTaskManager) {
        return savingTaskManager.mStorageManager;
    }

    static /* synthetic */ Map access$300(SavingTaskManager savingTaskManager) {
        return savingTaskManager.mStorageAccessSemaphoreMap;
    }

    static /* synthetic */ void access$400(SavingTaskManager savingTaskManager, SavingTaskManager$PhotoSavingTask savingTaskManager$PhotoSavingTask) {
        savingTaskManager.popPhotoSavingTask(savingTaskManager$PhotoSavingTask);
    }

    static /* synthetic */ void access$500(SavingTaskManager savingTaskManager, Runnable runnable) {
        savingTaskManager.runOnUiThread(runnable);
    }

    static /* synthetic */ void access$600(SavingTaskManager savingTaskManager, MediaSavingResult mediaSavingResult, Uri uri, SavingRequest savingRequest) {
        savingTaskManager.notifyStoreComplete(mediaSavingResult, uri, savingRequest);
    }

    static /* synthetic */ void access$700(JpegMetadata jpegMetadata, File file) throws Throwable {
        rewriteInplace(jpegMetadata, file);
    }

    static /* synthetic */ void access$800(SavingTaskManager savingTaskManager, JpegMetadata jpegMetadata, File file) throws ImageWriteException, IOException, ImageReadException {
        savingTaskManager.rewriteInplaceForSdCard(jpegMetadata, file);
    }

    static /* synthetic */ MediaProviderUpdator access$900(SavingTaskManager savingTaskManager) {
        return savingTaskManager.mUpdator;
    }

    public SavingTaskManager(Context context, CameraStorageManager cameraStorageManager, Map<Storage$StorageType, Semaphore> map) {
        this.mContext = null;
        this.mStorageManager = null;
        this.mStoreDataHandler = null;
        this.mContext = context;
        this.mStorageAccessSemaphoreMap = map;
        this.mStorageManager = cameraStorageManager;
        HandlerThread handlerThread = new HandlerThread("SavingTaskManager");
        handlerThread.start();
        this.mStoreDataHandler = new Handler(handlerThread.getLooper());
        this.mUpdator = new MediaProviderUpdator(context);
        this.mHandler = new Handler(Looper.getMainLooper());
        this.mMediaScanController = new SavingTaskManager$MediaScanController(this.mContext, this.mOnScanCompletedListener);
        this.mSavingTaskQueueMap = new HashMap();
        Iterator<Storage$StorageType> it = StorageUtil.getMountableStorageTypes().iterator();
        while (it.hasNext()) {
            this.mSavingTaskQueueMap.put(it.next(), new ConcurrentLinkedQueue());
        }
    }

    @AnyThread
    public void storePicture(PhotoSavingRequest photoSavingRequest) {
        if (CamLog.VERBOSE) {
            CamLog.d("### storePicture() is called.");
        }
        if (CamLog.VERBOSE) {
            CamLog.d("PhotoSavingRequest: at storePicture.");
        }
        photoSavingRequest.log();
        if (photoSavingRequest.getImageData() != null || photoSavingRequest.isImageReaderUsing()) {
            pushPhotoSavingTask(photoSavingRequest);
            return;
        }
        CamLog.e("### can't store a specified image file.");
        CamLog.e("### so, notify a failure of storing the specified image file.");
        Iterator<SavingTaskManager$PhotoSavingTask> it = this.mSavingTaskQueueMap.get(photoSavingRequest.getStorageType()).iterator();
        while (it.hasNext()) {
            it.next().cancel();
        }
        this.mStorageManager.requestVolumeCheck(photoSavingRequest.getStorageType(), CameraStorageManager$UpdateInterval.IMMEDIATE, CameraStorageManager$UpdateRequestReason.STORING_FAILED);
        this.mStorageManager.requestWriteCheck(photoSavingRequest.getStorageType(), CameraStorageManager$UpdateRequestReason.STORING_FAILED);
        runOnUiThread(new SavingTaskManager$2(this, photoSavingRequest));
    }

    private void pushPhotoSavingTask(PhotoSavingRequest photoSavingRequest) {
        if (CamLog.VERBOSE) {
            CamLog.d("### pushPhotoSavingTask : " + photoSavingRequest.getRequestId());
        }
        photoSavingRequest.setOneShot(photoSavingRequest.isOneShot());
        SavingTaskManager$PhotoSavingTask savingTaskManager$PhotoSavingTask = new SavingTaskManager$PhotoSavingTask(this, photoSavingRequest);
        this.mSavingTaskQueueMap.get(photoSavingRequest.getStorageType()).add(savingTaskManager$PhotoSavingTask);
        mExecutor.execute(savingTaskManager$PhotoSavingTask);
    }

    private void popPhotoSavingTask(SavingTaskManager$PhotoSavingTask savingTaskManager$PhotoSavingTask) {
        if (CamLog.VERBOSE) {
            CamLog.d("### popPhotoSavingTask");
        }
        Iterator<Storage$StorageType> it = StorageUtil.getMountableStorageTypes().iterator();
        while (it.hasNext()) {
            this.mSavingTaskQueueMap.get(it.next()).remove(savingTaskManager$PhotoSavingTask);
        }
    }

    public SavingTaskInquiry getInquiry() {
        return this.mInquiry;
    }

    private void notifyStoreComplete(MediaSavingResult mediaSavingResult, Uri uri, SavingRequest savingRequest) {
        if (CamLog.VERBOSE) {
            CamLog.d("onNotifyStoreComplete");
        }
        if (this.mStoreDataHandler != null) {
            if (!savingRequest.isOneShot() && mediaSavingResult == MediaSavingResult.SUCCESS) {
                MediaProviderUpdator.sendBroadcastCameraShot(this.mContext, uri);
            }
            this.mStoreDataHandler.post(new SavingTaskManager$NotifyStoreCompletedTask(new StoreDataResult(mediaSavingResult, uri, savingRequest), null));
            return;
        }
        if (CamLog.VERBOSE) {
            CamLog.d("Maybe Main activity has gone. So cannot send complete message");
        }
    }

    @AnyThread
    public void storeVideo(VideoSavingRequest videoSavingRequest) {
        if (CamLog.VERBOSE) {
            CamLog.d("VideoSavingRequest: at storeVideo.");
        }
        videoSavingRequest.log();
        if (CamLog.VERBOSE) {
            CamLog.d("storeVideo: " + videoSavingRequest.getFilePath());
        }
        if (this.mStoreVideoThread != null) {
            if (CamLog.VERBOSE) {
                CamLog.d("Another thread has already started.");
            }
            try {
                try {
                    if (CamLog.VERBOSE) {
                        CamLog.d("wait for thread.");
                    }
                    this.mStoreVideoThread.join(3000L);
                } catch (InterruptedException unused) {
                    if (CamLog.VERBOSE) {
                        CamLog.d("Interrupted.");
                    }
                }
                if (this.mStoreVideoThread != null) {
                    CamLog.e("storeVideo: mStoreVideoThread timeout.");
                    Storage$StorageType storageType = videoSavingRequest.getStorageType();
                    this.mStorageManager.requestVolumeCheck(storageType, CameraStorageManager$UpdateInterval.IMMEDIATE, CameraStorageManager$UpdateRequestReason.VIDEO_STORING_COMPLETED);
                    this.mStorageManager.requestWriteCheck(storageType, CameraStorageManager$UpdateRequestReason.VIDEO_STORING_COMPLETED);
                    this.mStorageManager.checkRemain(true, storageType);
                    return;
                }
                if (CamLog.VERBOSE) {
                    CamLog.d("wait end.");
                }
            } finally {
                this.mStoreVideoThread = null;
            }
        }
        this.mStoreVideoThread = new Thread(new SavingTaskManager$SavingVideoTask(this, videoSavingRequest), "Store video thread");
        this.mStoreVideoThread.setPriority(1);
        this.mStoreVideoThread.start();
    }

    public boolean canPushStoreTask(Storage$StorageType storage$StorageType) {
        if (isEnoughMemory(getUsedMemory())) {
            return true;
        }
        Runtime.getRuntime().gc();
        if (isEnoughMemory(getUsedMemory())) {
            return true;
        }
        CamLog.e("Temporarily reject capture request since app is low on memory:");
        CamLog.e("\t saving: " + getRemainQueueSize(storage$StorageType));
        CamLog.e("\tusedMemory: " + getUsedMemory() + "byte");
        CamLog.e("\t maxMemory: " + Runtime.getRuntime().maxMemory() + "byte");
        if (CamLog.DEBUG && getRemainQueueSize(storage$StorageType) == 0) {
            try {
                Debug.dumpHprofData(Environment.getExternalStorageDirectory() + "/can_push_store_task.hprof");
            } catch (IOException unused) {
                CamLog.e("canPushStoreTask() fail to dump hprof");
            }
        }
        return false;
    }

    private static long getUsedMemory() {
        return Runtime.getRuntime().totalMemory() - Runtime.getRuntime().freeMemory();
    }

    private static boolean isEnoughMemory(long j) {
        return j < (Runtime.getRuntime().maxMemory() * 7) / 10;
    }

    public void release() {
        if (this.mStoreDataHandler != null && this.mStoreDataHandler.getLooper().getThread() != Looper.getMainLooper().getThread()) {
            this.mStoreDataHandler.getLooper().quitSafely();
        }
        this.mStoreDataHandler = null;
    }

    private static void rewriteInplace(JpegMetadata jpegMetadata, File file) throws Throwable {
        boolean zRenameTo;
        long jLastModified = file.lastModified();
        File fileCreateTempFile = File.createTempFile(file.getName(), ".rewrite-exif", file.getParentFile());
        FileOutputStream fileOutputStream = new FileOutputStream(fileCreateTempFile);
        try {
            try {
                jpegMetadata.rewrite(file, (OutputStream) fileOutputStream, true);
                fileOutputStream.flush();
                fileOutputStream.close();
                zRenameTo = fileCreateTempFile.renameTo(file);
            } catch (Throwable th) {
                fileOutputStream.close();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            zRenameTo = false;
        }
        try {
            if (zRenameTo) {
                if (!file.setLastModified(jLastModified)) {
                    CamLog.w("Failed to set last modified time to " + file.getAbsolutePath());
                }
                if (zRenameTo || fileCreateTempFile.delete()) {
                    return;
                }
                CamLog.w("Could not delete temporary file " + fileCreateTempFile.getAbsolutePath());
                return;
            }
            throw new IOException("Could not replace file " + file);
        } catch (Throwable th3) {
            th = th3;
            if (!zRenameTo && !fileCreateTempFile.delete()) {
                CamLog.w("Could not delete temporary file " + fileCreateTempFile.getAbsolutePath());
            }
            throw th;
        }
    }

    private void rewriteInplaceForSdCard(JpegMetadata jpegMetadata, File file) throws ImageWriteException, IOException, ImageReadException {
        long jLastModified = file.lastModified();
        Uri uriSearchDocumentSdCard = StorageUtil.searchDocumentSdCard(this.mContext, file.getPath());
        String name = file.getName();
        Uri uriCreateDocumentSdCard = StorageUtil.createDocumentSdCard(this.mContext, file.getPath() + ".rewrite-exif");
        if (uriCreateDocumentSdCard != null) {
            FileOutputStream fileOutputStream = new FileOutputStream(this.mContext.getContentResolver().openFileDescriptor(uriCreateDocumentSdCard, "rw").getFileDescriptor());
            try {
                jpegMetadata.rewrite(file, (OutputStream) fileOutputStream, true);
                fileOutputStream.flush();
                fileOutputStream.close();
                if (!DocumentsContract.deleteDocument(this.mContext.getContentResolver(), uriSearchDocumentSdCard)) {
                    CamLog.w("Could not delete old file " + uriSearchDocumentSdCard.toString());
                }
                if (DocumentsContract.renameDocument(this.mContext.getContentResolver(), uriCreateDocumentSdCard, name) != null) {
                    if (file.setLastModified(jLastModified)) {
                        return;
                    }
                    CamLog.w("Failed to set last modified time to " + file.getAbsolutePath());
                    return;
                }
                throw new IOException("Could not replace file " + file);
            } catch (Throwable th) {
                fileOutputStream.close();
                throw th;
            }
        }
        throw new IOException("Could not create temp file");
    }

    private void runOnUiThread(Runnable runnable) {
        this.mHandler.post(runnable);
    }

    public int getRemainQueueSize(Storage$StorageType storage$StorageType) {
        return this.mSavingTaskQueueMap.get(storage$StorageType).size();
    }
}
