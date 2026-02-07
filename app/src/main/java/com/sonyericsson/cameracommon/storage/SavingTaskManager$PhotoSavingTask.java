package com.sonyericsson.cameracommon.storage;

import android.database.sqlite.SQLiteFullException;
import android.net.Uri;
import android.os.SystemClock;
import com.sonyericsson.android.camera.mediasaving.ExifOption;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.CapturePerformanceLogger;
import com.sonyericsson.cameracommon.mediasaving.MediaSavingResult;
import com.sonyericsson.cameracommon.mediasaving.updator.MediaProviderUpdator;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.Semaphore;
import org.apache.commons.imaging.ImageReadException;
import org.apache.commons.imaging.ImageWriteException;
import org.apache.commons.imaging.formats.tiff.constants.TiffTagConstants;

/* JADX INFO: loaded from: classes.dex */
public class SavingTaskManager$PhotoSavingTask implements Runnable {
    private volatile boolean mIsCanceled = false;
    private volatile boolean mIsRunning = false;
    private final PhotoSavingRequest mRequest;
    final /* synthetic */ SavingTaskManager this$0;

    static /* synthetic */ int access$100(SavingTaskManager$PhotoSavingTask savingTaskManager$PhotoSavingTask) {
        return savingTaskManager$PhotoSavingTask.getExpectedFileSize();
    }

    public SavingTaskManager$PhotoSavingTask(SavingTaskManager savingTaskManager, PhotoSavingRequest photoSavingRequest) {
        this.this$0 = savingTaskManager;
        this.mRequest = photoSavingRequest;
    }

    private Uri assignOutput() {
        String predictiveCapturePhotoPath;
        if (this.mRequest.getExtraOutput() != null) {
            if (CamLog.VERBOSE) {
                CamLog.d("assignOutput getExtraOutput != null");
            }
            if ("file".equalsIgnoreCase(this.mRequest.getExtraOutput().getScheme())) {
                if (CamLog.VERBOSE) {
                    CamLog.d("assignOutput getExtraOutput != null 2");
                }
                File file = new File(this.mRequest.getExtraOutput().getPath());
                if (file.getParentFile().mkdirs()) {
                    if (CamLog.VERBOSE) {
                        CamLog.d("Create dir: " + file.getParentFile().getPath());
                    }
                } else {
                    CamLog.e("Filed mkdirs() : " + file.getParentFile().getPath());
                }
            }
            return this.mRequest.getExtraOutput();
        }
        if (CamLog.VERBOSE) {
            CamLog.d("assignOutput getExtraOutput != null");
        }
        if (this.mRequest.getSomcType() == 129) {
            if (CamLog.VERBOSE) {
                CamLog.d("assignOutput getSaveTimeForPredictiveCapture() =  null");
            }
            predictiveCapturePhotoPath = SavingTaskManager.access$200(this.this$0).getBurstPhotoPath(this.mRequest);
        } else if (this.mRequest.getSaveTimeForPredictiveCapture() == null) {
            if (CamLog.VERBOSE) {
                CamLog.d("assignOutput getSaveTimeForPredictiveCapture() =  null");
            }
            predictiveCapturePhotoPath = SavingTaskManager.access$200(this.this$0).getPhotoPath(this.mRequest.getStorageType());
        } else {
            if (CamLog.VERBOSE) {
                CamLog.d("assignOutput getSaveTimeForPredictiveCapture() !=  null");
            }
            predictiveCapturePhotoPath = SavingTaskManager.access$200(this.this$0).getPredictiveCapturePhotoPath(this.mRequest);
        }
        if (predictiveCapturePhotoPath == null) {
            if (!CamLog.VERBOSE) {
                return null;
            }
            CamLog.d("assignOutput path =  null");
            return null;
        }
        return Uri.fromFile(new File(predictiveCapturePhotoPath));
    }

    private int verifyImageDataBeforeStoring(PhotoSavingRequest photoSavingRequest, Uri uri) {
        int length;
        if (photoSavingRequest.isImageReaderUsing()) {
            length = photoSavingRequest.getImageReaderData().limit();
        } else {
            length = photoSavingRequest.getImageData().length;
        }
        if (length != 0) {
            return length;
        }
        String str = "The image data is empty. Camera will create broken file. uri:" + uri;
        ByteBuffer imageReaderData = photoSavingRequest.getImageReaderData();
        if (imageReaderData != null) {
            str = ((str + " buff.capacity:" + imageReaderData.capacity()) + " buff.limit:" + imageReaderData.limit()) + " buff.position:" + imageReaderData.position();
        }
        throw new RuntimeException(str);
    }

    private void verifyImageDataAfterStoring(int i, Uri uri) {
        if ("file".equalsIgnoreCase(uri.getScheme())) {
            File file = new File(uri.getPath());
            if (file.length() != i) {
                throw new RuntimeException("The requested image data is not stored correctly. uri:" + uri + " expected:" + i + " actual:" + file.length());
            }
        }
    }

    private boolean writeToStorage(PhotoSavingRequest photoSavingRequest, Uri uri) {
        boolean zStoreData;
        try {
            int iVerifyImageDataBeforeStoring = verifyImageDataBeforeStoring(photoSavingRequest, uri);
            if (photoSavingRequest.isImageReaderUsing()) {
                zStoreData = new SavingTaskManager$ImageToFile(this.this$0, photoSavingRequest.getImageReaderData(), uri).storeData(null);
                photoSavingRequest.close();
            } else {
                zStoreData = new SavingTaskManager$ImageToFile(this.this$0, photoSavingRequest.getImageData(), uri).storeData(null);
            }
            if (CapturePerformanceLogger.get(photoSavingRequest) != null) {
                CapturePerformanceLogger.get(photoSavingRequest).fileSize = iVerifyImageDataBeforeStoring;
            }
            if (CamLog.DEBUG && zStoreData) {
                verifyImageDataAfterStoring(iVerifyImageDataBeforeStoring, uri);
            }
            return zStoreData;
        } catch (IllegalStateException e) {
            CamLog.e("Failed to store image. : " + e);
            return false;
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.mIsCanceled) {
            return;
        }
        this.mIsRunning = true;
        Storage$StorageType storageType = this.mRequest.getStorageType();
        Semaphore semaphore = (Semaphore) SavingTaskManager.access$300(this.this$0).get(storageType);
        try {
            semaphore.acquire();
            if (CamLog.DEBUG) {
                CamLog.d("PhotoSavingTask[" + storageType + "]: E");
            }
            Uri uriAssignOutput = assignOutput();
            if (uriAssignOutput != null) {
                store(uriAssignOutput);
                SavingTaskManager.access$400(this.this$0, this);
                SavingTaskManager.access$200(this.this$0).updateStorageState(storageType, CameraStorageManager$UpdateRequestReason.PHOTO_STORING_COMPLETED);
                SavingTaskManager.access$200(this.this$0).checkAndNotifyStateChanged(storageType);
            } else {
                if (CamLog.VERBOSE) {
                    CamLog.d("assignOutput() is null");
                }
                SavingTaskManager.access$400(this.this$0, this);
                SavingTaskManager.access$200(this.this$0).updateStorageState(storageType, CameraStorageManager$UpdateRequestReason.PHOTO_STORING_COMPLETED);
                this.mRequest.close();
                SavingTaskManager.access$500(this.this$0, new SavingTaskManager$PhotoSavingTask$1(this, storageType));
                SavingTaskManager.access$600(this.this$0, MediaSavingResult.FAIL, Uri.EMPTY, this.mRequest);
            }
            semaphore.release();
            if (CamLog.DEBUG) {
                CamLog.d("PhotoSavingTask[" + storageType + "]: X");
            }
        } catch (InterruptedException unused) {
            CamLog.e("Failed to acquire of storage access permit.");
        }
    }

    public void cancel() {
        this.mIsCanceled = true;
    }

    private int getExpectedFileSize() {
        if (this.mIsRunning) {
            return 0;
        }
        if (this.mRequest.isImageReaderUsing()) {
            return 15728640;
        }
        return this.mRequest.getImageData().length;
    }

    private void store(Uri uri) {
        Date date;
        if (CapturePerformanceLogger.get(this.mRequest) != null) {
            CapturePerformanceLogger.get(this.mRequest).startSave = SystemClock.uptimeMillis();
        }
        if (CamLog.VERBOSE) {
            CamLog.d("storeContent E URI:" + uri.toString());
        }
        if ("file".equalsIgnoreCase(uri.getScheme())) {
            if (CamLog.VERBOSE) {
                CamLog.d("This uri is file path. " + uri.getPath());
            }
            this.mRequest.setFilePath(uri.getPath());
        } else if ("content".equalsIgnoreCase(uri.getScheme())) {
            if (CamLog.VERBOSE) {
                CamLog.d("This uri is file content. " + uri.getPath());
            }
            this.mRequest.setFilePath(uri.getPath());
        }
        CamLog.d("[datetaken:" + this.mRequest.getDateTaken() + "]start saving");
        if (!writeToStorage(this.mRequest, uri)) {
            SavingTaskManager.access$600(this.this$0, MediaSavingResult.FAIL, Uri.EMPTY, this.mRequest);
            return;
        }
        if (CapturePerformanceLogger.get(this.mRequest) != null) {
            CapturePerformanceLogger.get(this.mRequest).writeFileDone = SystemClock.uptimeMillis();
        }
        if (this.mRequest.shouldUpdateOrientationBeforeStoring) {
            try {
                File file = new File(uri.getPath());
                JpegMetadata jpegMetadata = new JpegMetadata(file);
                jpegMetadata.set(TiffTagConstants.TIFF_TAG_ORIENTATION, ExifOption.getExifOrientation(this.mRequest.common.orientation));
                if (StorageUtil.getStorageTypeFromPath(uri.getPath(), this.this$0.mContext) != Storage$StorageType.EXTERNAL_CARD) {
                    SavingTaskManager.access$700(jpegMetadata, file);
                } else {
                    SavingTaskManager.access$800(this.this$0, jpegMetadata, file);
                }
            } catch (IOException | ImageReadException | ImageWriteException e) {
                CamLog.e("Failed to save exifOrientation. : " + e);
            }
        }
        CamLog.d("[datetaken:" + this.mRequest.getDateTaken() + "]store is success");
        if (this.mRequest.common.addToMediaStore || this.mRequest.getExtraOutput() == null) {
            try {
                String filePath = this.mRequest.getFilePath();
                if (PredictiveCapturePathBuilder.isPredictiveCaptureImage(filePath)) {
                    try {
                        date = new SimpleDateFormat("yyyyMMddHHmmssSSS").parse(this.mRequest.getSaveTimeForPredictiveCapture());
                    } catch (ParseException unused) {
                        CamLog.e("store: parse failed. filePath:" + filePath + " time:" + this.mRequest.getSaveTimeForPredictiveCapture());
                        date = null;
                    }
                    if (date != null && !new File(filePath).setLastModified(date.getTime())) {
                        CamLog.e("store: setLastModified failed. filePath:" + filePath + " time:" + date.getTime());
                    }
                }
                if (StorageUtil.getStorageTypeFromPath(uri.getPath(), this.this$0.mContext) == Storage$StorageType.EXTERNAL_CARD) {
                    SavingTaskManager.access$900(this.this$0);
                    Uri uriQueryPhotoFromDatabase = MediaProviderUpdator.queryPhotoFromDatabase(filePath, this.this$0.mContext);
                    if (uriQueryPhotoFromDatabase == null) {
                        SavingTaskManager.access$1000(this.this$0).requestScanFile(this.mRequest);
                    } else {
                        SavingTaskManager.access$600(this.this$0, MediaSavingResult.SUCCESS, uriQueryPhotoFromDatabase, this.mRequest);
                    }
                } else {
                    SavingTaskManager.access$1000(this.this$0).requestScanFile(this.mRequest);
                }
            } catch (SQLiteFullException unused2) {
                SavingTaskManager.access$600(this.this$0, MediaSavingResult.FAIL_MEMORY_FULL, Uri.EMPTY, this.mRequest);
            }
        } else {
            SavingTaskManager.access$600(this.this$0, MediaSavingResult.SUCCESS, this.mRequest.getExtraOutput(), this.mRequest);
        }
        CamLog.d("store() X");
    }
}
