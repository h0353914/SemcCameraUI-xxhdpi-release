package com.sonyericsson.cameracommon.storage;

import android.content.Context;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import com.sonyericsson.android.camera.CameraApplication$Pausable;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.ThreadUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.Semaphore;

public class StorageImpl implements Storage, CameraApplication$Pausable {
    private static final int DATA_LOAD_TASK_SIZE = 1;
    private static final int MULTI_STORAGE_ACCESS_PERMIT_NUM = 2;
    static final long NO_INTERVAL_REMAIN_THRESHOLD = 307200;
    private static final int SINGLE_STORAGE_ACCESS_PERMIT_NUM = 1;
    private static final String TAG = "StrorageImpl";
    private static final String THREAD_NAME_DATE_LOADER_TASK = "DataLoaderTask";
    private Context mContext;
    private ExecutorService mDataLoadExecutor;
    private LinkedBlockingDeque<Future<Long>> mDataLoaderTaskQueue;
    private SavingTaskManager mSavingTaskManager;
    private StorageController mStorageController;
    private CameraStorageManager mCameraStorageManager = null;
    private StorageImpl$StorageBroadcastReceiver mStorageBroadcastReceiver = new StorageImpl$StorageBroadcastReceiver(this, null);
    private Map<Storage$StorageType, Semaphore> mStorageAccessSemaphoreMap = new HashMap();
    private final Object mRequestLock = new Object();

    static /* synthetic */ StorageController access$100(StorageImpl storageImpl) {
        return storageImpl.mStorageController;
    }

    static /* synthetic */ CameraStorageManager access$200(StorageImpl storageImpl) {
        return storageImpl.mCameraStorageManager;
    }

    static /* synthetic */ void access$300(StorageImpl storageImpl) {
        storageImpl.initialize();
    }

    CameraStorageManager getCameraStorageManager() {
        return this.mCameraStorageManager;
    }

    public void open(Context context) {
        if (CamLog.VERBOSE) {
            CamLog.d("StorageImpl open");
        }
        this.mContext = context;
        for (Storage$StorageType storage$StorageType : StorageUtil.getMountableStorageTypes()) {
            if (storage$StorageType == Storage$StorageType.INTERNAL) {
                this.mStorageAccessSemaphoreMap.put(storage$StorageType, new Semaphore(2, true));
            } else {
                this.mStorageAccessSemaphoreMap.put(storage$StorageType, new Semaphore(1, true));
            }
        }
        this.mStorageController = new StorageController();
        this.mCameraStorageManager = new CameraStorageManager(context, this.mStorageController);
        this.mSavingTaskManager = new SavingTaskManager(context, this.mCameraStorageManager, this.mStorageAccessSemaphoreMap);
        prepareReceiver();
        this.mDataLoaderTaskQueue = new LinkedBlockingDeque<>(1);
        this.mDataLoadExecutor = ThreadUtil.buildExecutor("DataLoaderTask");
        new StorageImpl$StorageInitializeThread(this).start();
    }

    private void initialize() {
        if (CamLog.VERBOSE) {
            CamLog.d("StorageImpl initialize");
        }
        this.mCameraStorageManager.initialize(this.mSavingTaskManager.getInquiry(), this.mStorageAccessSemaphoreMap);
    }

    private void prepareReceiver() {
        if (CamLog.VERBOSE) {
            CamLog.d("StorageImpl prepareReceiver");
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addDataScheme("file");
        intentFilter.addAction("android.intent.action.MEDIA_MOUNTED");
        intentFilter.addAction("android.intent.action.MEDIA_UNMOUNTED");
        intentFilter.addAction("android.intent.action.MEDIA_EJECT");
        intentFilter.addAction("android.intent.action.MEDIA_SCANNER_FINISHED");
        this.mContext.registerReceiver(this.mStorageBroadcastReceiver, intentFilter);
    }

    public void close() {
        if (CamLog.VERBOSE) {
            CamLog.d("StorageImpl close");
        }
        release();
    }

    private void releaseReceiver() {
        if (CamLog.VERBOSE) {
            CamLog.d("StorageImpl releaseReceiver");
        }
        this.mContext.unregisterReceiver(this.mStorageBroadcastReceiver);
    }

    private void release() {
        if (CamLog.VERBOSE) {
            CamLog.d("StorageImpl release");
        }
        if (this.mDataLoadExecutor != null) {
            this.mDataLoadExecutor.shutdownNow();
            this.mDataLoadExecutor = null;
        }
        if (this.mDataLoaderTaskQueue != null) {
            synchronized (this.mRequestLock) {
                this.mDataLoaderTaskQueue.clear();
            }
            this.mDataLoaderTaskQueue = null;
        }
        releaseReceiver();
        this.mStorageController.release();
        this.mStorageController = null;
        this.mCameraStorageManager.release();
        this.mCameraStorageManager = null;
        this.mSavingTaskManager.release();
        this.mSavingTaskManager = null;
    }

    @Override // com.sonyericsson.cameracommon.storage.Storage
    public boolean requestStore(SavingRequest savingRequest, Storage$StorageType storage$StorageType, Storage$OnStoreCompletedListener storage$OnStoreCompletedListener) {
        if (CamLog.VERBOSE) {
            CamLog.d("requestStore");
        }
        if (!this.mSavingTaskManager.canPushStoreTask(storage$StorageType)) {
            return false;
        }
        savingRequest.addCallback(storage$OnStoreCompletedListener);
        if (savingRequest instanceof VideoSavingRequest) {
            if (CamLog.VERBOSE) {
                CamLog.d("StorageImpl storeVideo");
            }
            this.mSavingTaskManager.storeVideo((VideoSavingRequest) savingRequest);
            return true;
        }
        if (CamLog.VERBOSE) {
            CamLog.d("StorageImpl Photo");
        }
        this.mSavingTaskManager.storePicture((PhotoSavingRequest) savingRequest);
        return true;
    }

    @Override // com.sonyericsson.cameracommon.storage.Storage
    public void requestLoad(Uri uri, int i, Storage$OnLoadCompletedListener storage$OnLoadCompletedListener) throws Throwable {
        if (CamLog.VERBOSE) {
            CamLog.d("StorageImpl requestLoad");
        }
        new Handler().post(new StorageImpl$1(this, storage$OnLoadCompletedListener, new ImageLoader(this.mContext, uri, i).load(), uri));
    }

    @Override // com.sonyericsson.cameracommon.storage.Storage
    public void requestLoad(byte[] bArr, int i, Storage$OnLoadCompletedListener storage$OnLoadCompletedListener) throws Throwable {
        if (CamLog.VERBOSE) {
            CamLog.d("StorageImpl requestLoad");
        }
        new Handler().post(new StorageImpl$2(this, storage$OnLoadCompletedListener, new ImageLoader(this.mContext, bArr, i).load()));
    }

    @Override // com.sonyericsson.cameracommon.storage.Storage
    public void cancelDataLoad(boolean z) {
        if (CamLog.VERBOSE) {
            CamLog.d("StorageImpl cancelDataLoad");
        }
        if (this.mDataLoaderTaskQueue != null) {
            synchronized (this.mRequestLock) {
                Iterator<Future<Long>> it = this.mDataLoaderTaskQueue.iterator();
                while (it.hasNext()) {
                    it.next().cancel(z);
                }
                this.mDataLoaderTaskQueue.clear();
            }
        }
    }

    @Override // com.sonyericsson.cameracommon.storage.Storage
    public void requestDataLoad(int i, boolean z, Storage$OnLoadCompletedListener storage$OnLoadCompletedListener) {
        if (CamLog.VERBOSE) {
            CamLog.d("StorageImpl requestDataLoad");
        }
        loadData(new DataLoader(this.mContext, this.mCameraStorageManager.getReadableStoragePaths(), i, storage$OnLoadCompletedListener, z));
    }

    @Override // com.sonyericsson.cameracommon.storage.Storage
    public void requestDataLoad(int i, Uri uri, boolean z, Storage$OnLoadCompletedListener storage$OnLoadCompletedListener) {
        if (CamLog.VERBOSE) {
            CamLog.d("StorageImpl requestDataLoad");
        }
        loadData(new DataLoader(i, uri, this.mContext, storage$OnLoadCompletedListener, z));
    }

    @Override // com.sonyericsson.cameracommon.storage.Storage
    public void requestLastDataLoad(int i, boolean z, Storage$OnLoadCompletedListener storage$OnLoadCompletedListener) {
        if (CamLog.VERBOSE) {
            CamLog.d("StorageImpl requestDataLoad");
        }
        loadData(new DataLoader(this.mContext, this.mCameraStorageManager.getReadableStoragePaths(), i, 0, storage$OnLoadCompletedListener, z));
    }

    @Override // com.sonyericsson.cameracommon.storage.Storage
    public void requestCreateContentInfoSync(ArrayList<Uri> arrayList, Storage$OnLoadCompletedListener storage$OnLoadCompletedListener) {
        if (CamLog.VERBOSE) {
            CamLog.d("StorageImpl requestCreateContentInfoSync");
        }
        try {
            new DataLoader(this.mContext, arrayList, storage$OnLoadCompletedListener, true).call();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.sonyericsson.cameracommon.storage.Storage
    public void cancelDataLoad(long j) {
        if (CamLog.VERBOSE) {
            CamLog.d("StorageImpl cancelDataLoad");
        }
        removeFuture(j);
    }

    private void removeFuture(long j) {
        if (CamLog.VERBOSE) {
            CamLog.d("StorageImpl removeFuture");
        }
        if (this.mDataLoaderTaskQueue == null) {
            return;
        }
        synchronized (this.mRequestLock) {
            Iterator<Future<Long>> it = this.mDataLoaderTaskQueue.iterator();
            while (it.hasNext()) {
                Future<Long> next = it.next();
                if (next.isDone() && !next.isCancelled()) {
                    long jLongValue = 0;
                    try {
                        jLongValue = next.get().longValue();
                    } catch (InterruptedException unused) {
                        if (CamLog.VERBOSE) {
                            CamLog.d("StrorageImpl", "InterruptedException at future.get().");
                        }
                    } catch (ExecutionException unused2) {
                        if (CamLog.VERBOSE) {
                            CamLog.d("StrorageImpl", "ExecutionException at future.get().");
                        }
                    }
                    if (jLongValue == j) {
                        if (CamLog.VERBOSE) {
                            CamLog.d("StrorageImpl", "remove queue. id = " + jLongValue);
                        }
                        it.remove();
                    }
                }
            }
        }
    }

    private void loadData(DataLoader dataLoader) {
        if (CamLog.VERBOSE) {
            CamLog.d("StorageImpl loadData");
        }
        if (this.mDataLoadExecutor == null || this.mDataLoaderTaskQueue == null) {
            if (CamLog.VERBOSE) {
                CamLog.d("mDataLoadExecutor or mDataLoadQueue is null");
                return;
            }
            return;
        }
        Future<Long> futureSubmit = this.mDataLoadExecutor.submit(dataLoader);
        synchronized (this.mRequestLock) {
            if (!this.mDataLoaderTaskQueue.offerLast(futureSubmit)) {
                Future<Long> futurePollFirst = this.mDataLoaderTaskQueue.pollFirst();
                if (futurePollFirst != null) {
                    futurePollFirst.cancel(true);
                }
                this.mDataLoaderTaskQueue.addLast(futureSubmit);
            }
        }
    }

    @Override // com.sonyericsson.cameracommon.storage.Storage
    public void addStorageStateListener(Storage$StorageStateListener storage$StorageStateListener) {
        if (CamLog.VERBOSE) {
            CamLog.d("StorageImpl addStorageStateListener");
        }
        this.mStorageController.addStorageListener(storage$StorageStateListener);
    }

    @Override // com.sonyericsson.cameracommon.storage.Storage
    public void removeStorageStateListener(Storage$StorageStateListener storage$StorageStateListener) {
        if (CamLog.VERBOSE) {
            CamLog.d("StorageImpl removeStorageStateListener");
        }
        this.mStorageController.removeStorageListener(storage$StorageStateListener);
    }

    @Override // com.sonyericsson.cameracommon.storage.Storage
    public Storage$StorageState getCurrentState(Storage$StorageType storage$StorageType) {
        if (CamLog.VERBOSE) {
            CamLog.d("StorageImpl getCurrentState");
        }
        return this.mStorageController.getStorageState(storage$StorageType);
    }

    @Override // com.sonyericsson.cameracommon.storage.Storage
    public long getRemainStorage(Storage$StorageType storage$StorageType) {
        if (CamLog.VERBOSE) {
            CamLog.d("StorageImpl getRemainStorage");
        }
        this.mCameraStorageManager.checkRemain(false, storage$StorageType);
        return this.mStorageController.getAvailableStorageSize(storage$StorageType);
    }

    @Override // com.sonyericsson.cameracommon.storage.Storage
    public boolean checkValidUri(Uri uri) {
        if (CamLog.VERBOSE) {
            CamLog.d("StorageImpl isIllegalUri");
        }
        return StorageUtil.getPathFromUri(this.mContext, uri) != null;
    }

    @Override // com.sonyericsson.cameracommon.storage.Storage
    public boolean canPushStoreRequest(Storage$StorageType storage$StorageType) {
        if (isStorageActivated() && getAvailableStorage().contains(storage$StorageType)) {
            return this.mSavingTaskManager.canPushStoreTask(storage$StorageType);
        }
        return false;
    }

    @Override // com.sonyericsson.cameracommon.storage.Storage
    public List<Storage$StorageType> getAvailableStorage() {
        ArrayList arrayList = new ArrayList(Storage$StorageType.values().length);
        for (Storage$StorageType storage$StorageType : Storage$StorageType.values()) {
            if (checkStorageState(storage$StorageType, Storage$StorageState.AVAILABLE_NEAR_FULL, Storage$StorageState.AVAILABLE)) {
                arrayList.add(storage$StorageType);
            }
        }
        return arrayList;
    }

    private boolean checkStorageState(Storage$StorageType storage$StorageType, Storage$StorageState... storage$StorageStateArr) {
        Storage$StorageState currentState = getCurrentState(storage$StorageType);
        for (Storage$StorageState storage$StorageState : storage$StorageStateArr) {
            if (currentState == storage$StorageState) {
                return true;
            }
        }
        return false;
    }

    @Override // com.sonyericsson.cameracommon.storage.Storage
    public boolean isStorageReadable() {
        for (Storage$StorageType storage$StorageType : StorageUtil.getMountableStorageTypes()) {
            if (!isStorageReadable(storage$StorageType)) {
                if (CamLog.DEBUG) {
                    CamLog.d("type = " + storage$StorageType + ", readyState = " + this.mStorageController.getStorageReadyState(storage$StorageType));
                }
                return false;
            }
        }
        return true;
    }

    @Override // com.sonyericsson.cameracommon.storage.Storage
    public boolean isStorageReadable(Storage$StorageType storage$StorageType) {
        return this.mStorageController.getStorageReadyState(storage$StorageType).compareTo(Storage$StorageReadyState.ACCESSIBLE) >= 0;
    }

    @Override // com.sonyericsson.cameracommon.storage.Storage
    public boolean isStorageActivated() {
        Iterator<Storage$StorageType> it = StorageUtil.getMountableStorageTypes().iterator();
        while (it.hasNext()) {
            if (this.mStorageController.getStorageReadyState(it.next()) != Storage$StorageReadyState.COMPLETED) {
                return false;
            }
        }
        return true;
    }

    @Override // com.sonyericsson.cameracommon.storage.Storage
    public void addStorageReadyStateListener(Storage$StorageReadyStateListener storage$StorageReadyStateListener) {
        if (storage$StorageReadyStateListener != null) {
            this.mStorageController.addStorageReadyStateListener(storage$StorageReadyStateListener);
        }
    }

    @Override // com.sonyericsson.cameracommon.storage.Storage
    public void removeStorageReadyStateListener(Storage$StorageReadyStateListener storage$StorageReadyStateListener) {
        if (storage$StorageReadyStateListener != null) {
            this.mStorageController.removeStorageReadyStateListener(storage$StorageReadyStateListener);
        }
    }

    @Override // com.sonyericsson.cameracommon.storage.Storage
    public Storage$StorageWriteNotifier createNotifier(Storage$StorageType storage$StorageType, int i) {
        return new StorageWriteNotifierImpl(this, storage$StorageType, i, this.mStorageController);
    }

    public void onWriteStorage(Storage$StorageType storage$StorageType) {
        if (CamLog.VERBOSE) {
            CamLog.d("onWriteStorage : " + storage$StorageType);
        }
        this.mCameraStorageManager.requestVolumeCheck(storage$StorageType, CameraStorageManager$UpdateInterval.IMMEDIATE, CameraStorageManager$UpdateRequestReason.PERIODIC_UPDATE);
    }

    @Override // com.sonyericsson.android.camera.CameraApplication$Pausable
    public void resume() {
        if (CamLog.DEBUG) {
            CamLog.d("resume()");
        }
        this.mCameraStorageManager.doResume();
    }

    @Override // com.sonyericsson.android.camera.CameraApplication$Pausable
    public void pause() {
        if (CamLog.DEBUG) {
            CamLog.d("pause()");
        }
        this.mCameraStorageManager.doPause();
    }

    @Override // com.sonyericsson.cameracommon.storage.Storage
    public Uri getSdGrantedUri() {
        if (CamLog.DEBUG) {
            CamLog.d("getSdGrantedUri()");
        }
        return this.mCameraStorageManager.getSdGrantedUri(this.mContext);
    }
}
