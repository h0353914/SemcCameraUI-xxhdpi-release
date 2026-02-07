package com.sonyericsson.cameracommon.storage;

import android.content.Context;
import android.content.UriPermission;
import android.net.Uri;
import android.os.Environment;
import android.os.StatFs;
import android.support.annotation.NonNull;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.PerfLog;
import com.sonyericsson.android.camera.util.ThreadUtil;
import com.sonyericsson.cameracommon.storage.updater.StorageStateUpdater;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public class CameraStorageManager {
    public static final String TAG = "CameraStorageManager";
    private static final String THREAD_NAME_CHECK_REMAIN = "SM#ChkRemain";
    private static final String THREAD_NAME_CHECK_WRITABLE = "SM#ChkWritable";
    private static final int TIMEOUT_CHECK_WRITABLE = 5000;
    public static final int TIMEOUT_GET_STATFS = 3500;
    public static final int TIMEOUT_SEMAPHORE_ACQUIRE_MS = 4000;
    private Context mContext;
    private Map<Storage$StorageType, CameraStorageManager$DetailStorageState> mLastStorageStates;
    private SavingTaskInquiry mSavingTaskInquiry;
    private StorageController mStorageController;
    private final SlowMotionPathBuilder mSlowMotionPathBuilder = new SlowMotionPathBuilder(".mp4");
    private Map<String, CameraStorageManager$DetailStorageState> mWritableCheckResult = new ConcurrentHashMap();
    private boolean mIsApplicationForeground = false;
    private final Object mStateLock = new Object();
    private final Object mReadyStateLock = new Object();
    private final Map<Storage$StorageType, DcfPathBuilder> mDcfPathBuilderMap = new HashMap();
    private Map<Storage$StorageType, StorageStateUpdater> mStorageUpdaterMap = new HashMap();

    static /* synthetic */ Map access$000(CameraStorageManager cameraStorageManager) {
        return cameraStorageManager.mWritableCheckResult;
    }

    public CameraStorageManager(Context context, StorageController storageController) {
        this.mLastStorageStates = null;
        this.mContext = context;
        this.mStorageController = storageController;
        this.mLastStorageStates = new HashMap();
    }

    void initialize(@NonNull SavingTaskInquiry savingTaskInquiry, @NonNull Map<Storage$StorageType, Semaphore> map) {
        if (CamLog.VERBOSE) {
            CamLog.d("CameraStorageManager initialize");
        }
        PerfLog.STORAGE_MANAGER_SETUP.begin();
        this.mStorageController.setAvailableStorageSize(Storage$StorageType.EXTERNAL_CARD, 0L);
        this.mStorageController.setAvailableStorageSize(Storage$StorageType.INTERNAL, 0L);
        this.mLastStorageStates = new HashMap();
        this.mSavingTaskInquiry = savingTaskInquiry;
        for (Storage$StorageType storage$StorageType : StorageUtil.getMountableStorageTypes()) {
            this.mStorageUpdaterMap.put(storage$StorageType, new StorageStateUpdater(storage$StorageType, this, savingTaskInquiry, map.get(storage$StorageType)));
            synchronized (this.mReadyStateLock) {
                changeReadyStateTo(storage$StorageType, Storage$StorageReadyState.PREPARING, CameraStorageManager$UpdateRequestReason.APP_LAUNCH);
            }
        }
        PerfLog.STORAGE_MANAGER_SETUP.end();
    }

    void updateStorageStateByAction(String str, Storage$StorageType storage$StorageType) {
        CameraStorageManager$UpdateRequestReason cameraStorageManager$UpdateRequestReason;
        Semaphore accessSemaphore = this.mStorageUpdaterMap.get(storage$StorageType).getAccessSemaphore();
        try {
            accessSemaphore.acquire();
            if (str.equals("android.intent.action.MEDIA_MOUNTED")) {
                cameraStorageManager$UpdateRequestReason = CameraStorageManager$UpdateRequestReason.RECEIVE_STORAGE_MOUNTED;
            } else if (str.equals("android.intent.action.MEDIA_EJECT")) {
                cameraStorageManager$UpdateRequestReason = CameraStorageManager$UpdateRequestReason.RECEIVE_STORAGE_EJECTED;
            } else {
                cameraStorageManager$UpdateRequestReason = CameraStorageManager$UpdateRequestReason.RECEIVE_OTHER_ACTION;
            }
            updateStorageState(storage$StorageType, cameraStorageManager$UpdateRequestReason);
            this.mStorageController.checkAndNotifyStateChanged(storage$StorageType, false);
            accessSemaphore.release();
        } catch (InterruptedException unused) {
            CamLog.e("Failed to acquire of storage access permit.");
        }
    }

    public void requestVolumeCheck(Storage$StorageType storage$StorageType, CameraStorageManager$UpdateInterval cameraStorageManager$UpdateInterval, CameraStorageManager$UpdateRequestReason cameraStorageManager$UpdateRequestReason) {
        this.mStorageUpdaterMap.get(storage$StorageType).requestVolumeCheck(cameraStorageManager$UpdateInterval, cameraStorageManager$UpdateRequestReason);
    }

    public void requestWriteCheck(Storage$StorageType storage$StorageType, CameraStorageManager$UpdateRequestReason cameraStorageManager$UpdateRequestReason) {
        this.mStorageUpdaterMap.get(storage$StorageType).requestWriteCheck(cameraStorageManager$UpdateRequestReason);
    }

    public void updateStorageState(Storage$StorageType storage$StorageType, CameraStorageManager$UpdateRequestReason cameraStorageManager$UpdateRequestReason) {
        if (cameraStorageManager$UpdateRequestReason == CameraStorageManager$UpdateRequestReason.RECEIVE_STORAGE_MOUNTED) {
            synchronized (this.mReadyStateLock) {
                changeReadyStateTo(storage$StorageType, Storage$StorageReadyState.PREPARING, cameraStorageManager$UpdateRequestReason);
            }
        }
        long reservedSize = 0;
        if (this.mSavingTaskInquiry != null) {
            reservedSize = this.mSavingTaskInquiry.getReservedSize(storage$StorageType);
        } else {
            CamLog.w("called before initializing.");
        }
        updateStateByVolumeInfo(storage$StorageType, reservedSize, cameraStorageManager$UpdateRequestReason);
        updateStorageStateByWriting(storage$StorageType, cameraStorageManager$UpdateRequestReason);
    }

    public synchronized void updateStorageStateByWriting(Storage$StorageType storage$StorageType, CameraStorageManager$UpdateRequestReason cameraStorageManager$UpdateRequestReason) {
        String pathFromType;
        if (CamLog.DEBUG) {
            CamLog.d("updateStorageStateByWriting StorageType = " + storage$StorageType + ", reason = " + cameraStorageManager$UpdateRequestReason);
        }
        synchronized (this.mStateLock) {
            CameraStorageManager$DetailStorageState lastStorageState = getLastStorageState(storage$StorageType);
            boolean zIsWritableCheckNeeded = isWritableCheckNeeded(storage$StorageType);
            if (CamLog.DEBUG) {
                CamLog.d("isWritable: " + zIsWritableCheckNeeded);
            }
            if (zIsWritableCheckNeeded) {
                if (decideForceFsWritingCheck(cameraStorageManager$UpdateRequestReason) && (pathFromType = StorageUtil.getPathFromType(storage$StorageType, this.mContext)) != null) {
                    this.mWritableCheckResult.remove(pathFromType);
                }
                CameraStorageManager$DetailStorageState nextStateFromWritable = getNextStateFromWritable(storage$StorageType, decideForceSdCardGrantedCheck(storage$StorageType, cameraStorageManager$UpdateRequestReason));
                if (nextStateFromWritable == CameraStorageManager$DetailStorageState.MEMORY_READY) {
                    nextStateFromWritable = lastStorageState;
                }
                setLastStorageState(storage$StorageType, nextStateFromWritable);
            }
        }
        synchronized (this.mReadyStateLock) {
            if (this.mIsApplicationForeground) {
                if (changeReadyStateTo(storage$StorageType, Storage$StorageReadyState.COMPLETED, cameraStorageManager$UpdateRequestReason)) {
                    this.mStorageController.checkAndNotifyStateChanged(storage$StorageType, true);
                }
            } else {
                changeReadyStateTo(storage$StorageType, Storage$StorageReadyState.SUSPENDED, cameraStorageManager$UpdateRequestReason);
            }
        }
        Storage$StorageState storageState = this.mStorageController.getStorageState(storage$StorageType);
        if (storageState != Storage$StorageState.REMOVED && storageState != Storage$StorageState.CORRUPT && storageState != Storage$StorageState.UNAVAILABLE) {
            updateDcfPath(storage$StorageType);
        }
    }

    public synchronized CameraStorageManager$DetailStorageState updateStateByVolumeInfo(Storage$StorageType storage$StorageType, long j, CameraStorageManager$UpdateRequestReason cameraStorageManager$UpdateRequestReason) {
        CameraStorageManager$DetailStorageState nextStateFromVolume;
        long jUpdateAvailableStorageSize = 0;
        nextStateFromVolume = null;
        if (CamLog.DEBUG) {
            CamLog.d("invoke: type = " + storage$StorageType + ", reservedSize = " + j + ", reason = " + cameraStorageManager$UpdateRequestReason);
        }
        synchronized (this.mStateLock) {
            CameraStorageManager$DetailStorageState lastStorageState = getLastStorageState(storage$StorageType);
            if (CamLog.DEBUG) {
                CamLog.d("lastState = " + lastStorageState);
            }
            if (lastStorageState != null && lastStorageState != CameraStorageManager$DetailStorageState.MEMORY_READY && lastStorageState != CameraStorageManager$DetailStorageState.MEMORY_READY_LOW && lastStorageState != CameraStorageManager$DetailStorageState.MEMORY_ERR_FULL) {
                switch (CameraStorageManager$1.$SwitchMap$com$sonyericsson$cameracommon$storage$CameraStorageManager$UpdateRequestReason[cameraStorageManager$UpdateRequestReason.ordinal()]) {
                    case 1:
                        if (lastStorageState == CameraStorageManager$DetailStorageState.MEMORY_NO_DCIM || lastStorageState == CameraStorageManager$DetailStorageState.MEMORY_ERR_READ_ONLY || lastStorageState == CameraStorageManager$DetailStorageState.MEMORY_ERR_TIMED_OUT) {
                            cameraStorageManager$UpdateRequestReason = CameraStorageManager$UpdateRequestReason.APP_LAUNCH_WITH_UNTRUSTED;
                        }
                        break;
                    case 2:
                    case 3:
                    case 4:
                        break;
                    default:
                        nextStateFromVolume = lastStorageState;
                        break;
                }
            }
            if (storage$StorageType == Storage$StorageType.EXTERNAL_CARD && !StorageUtil.isExistRemovableStorage(this.mContext)) {
                nextStateFromVolume = CameraStorageManager$DetailStorageState.MEMORY_ERR_NO_MEMORY_CARD;
            }
            if (nextStateFromVolume == null) {
                nextStateFromVolume = getNextStateFromVolume(storage$StorageType);
                if (cameraStorageManager$UpdateRequestReason == CameraStorageManager$UpdateRequestReason.RECEIVE_STORAGE_EJECTED) {
                    if (nextStateFromVolume.equals(CameraStorageManager$DetailStorageState.MEMORY_ERR_NO_MEMORY_CARD)) {
                        nextStateFromVolume = CameraStorageManager$DetailStorageState.MEMORY_ERR_NO_MEMORY_CARD;
                    } else {
                        nextStateFromVolume = CameraStorageManager$DetailStorageState.MEMORY_ERR_SHARED;
                    }
                }
                if (nextStateFromVolume == CameraStorageManager$DetailStorageState.MEMORY_READY || nextStateFromVolume == CameraStorageManager$DetailStorageState.MEMORY_READY_LOW) {
                    jUpdateAvailableStorageSize = updateAvailableStorageSize(storage$StorageType, j);
                    nextStateFromVolume = getNextStateFromRemain(jUpdateAvailableStorageSize);
                }
                this.mStorageController.setAvailableStorageSize(storage$StorageType, jUpdateAvailableStorageSize);
            }
            setLastStorageState(storage$StorageType, nextStateFromVolume);
            synchronized (this.mReadyStateLock) {
                if (this.mIsApplicationForeground) {
                    changeReadyStateTo(storage$StorageType, Storage$StorageReadyState.ACCESSIBLE, cameraStorageManager$UpdateRequestReason);
                } else {
                    changeReadyStateTo(storage$StorageType, Storage$StorageReadyState.SUSPENDED, cameraStorageManager$UpdateRequestReason);
                }
            }
            if (cameraStorageManager$UpdateRequestReason == CameraStorageManager$UpdateRequestReason.RECEIVE_STORAGE_MOUNTED) {
                requestVolumeCheck(storage$StorageType, calculateNextPollingInterval(storage$StorageType), CameraStorageManager$UpdateRequestReason.PERIODIC_UPDATE);
            }
        }
        return nextStateFromVolume;
    }

    private CameraStorageManager$DetailStorageState getNextStateFromVolume(Storage$StorageType storage$StorageType) {
        String volumeState = StorageUtil.getVolumeState(storage$StorageType, this.mContext);
        if (CamLog.VERBOSE) {
            CamLog.d("getNextStateFromVolume() storage = " + storage$StorageType + " , volume state = " + volumeState);
        }
        if ("bad_removal".equals(volumeState)) {
            return CameraStorageManager$DetailStorageState.MEMORY_ERR_NO_MEMORY_CARD;
        }
        if ("mounted_ro".equals(volumeState)) {
            return CameraStorageManager$DetailStorageState.MEMORY_ERR_READ_ONLY;
        }
        if ("removed".equals(volumeState)) {
            return CameraStorageManager$DetailStorageState.MEMORY_ERR_NO_MEMORY_CARD;
        }
        if ("shared".equals(volumeState)) {
            return CameraStorageManager$DetailStorageState.MEMORY_ERR_SHARED;
        }
        if ("unmountable".equals(volumeState)) {
            return CameraStorageManager$DetailStorageState.MEMORY_ERR_FORMAT;
        }
        if ("unmounted".equals(volumeState)) {
            return CameraStorageManager$DetailStorageState.MEMORY_ERR_NO_MEMORY_CARD;
        }
        if ("checking".equals(volumeState)) {
            return CameraStorageManager$DetailStorageState.MEMORY_CHECKING;
        }
        if ("mounted".equals(volumeState)) {
            return CameraStorageManager$DetailStorageState.MEMORY_READY;
        }
        if ("ejecting".equals(volumeState)) {
            return CameraStorageManager$DetailStorageState.MEMORY_ERR_NO_MEMORY_CARD;
        }
        return CameraStorageManager$DetailStorageState.MEMORY_ERR_ACCESS;
    }

    private boolean decideForceFsWritingCheck(CameraStorageManager$UpdateRequestReason cameraStorageManager$UpdateRequestReason) {
        int i = CameraStorageManager$1.$SwitchMap$com$sonyericsson$cameracommon$storage$CameraStorageManager$UpdateRequestReason[cameraStorageManager$UpdateRequestReason.ordinal()];
        if (i != 5) {
            switch (i) {
                case 2:
                case 3:
                    break;
                default:
                    return false;
            }
        }
        return true;
    }

    private boolean decideForceSdCardGrantedCheck(Storage$StorageType storage$StorageType, CameraStorageManager$UpdateRequestReason cameraStorageManager$UpdateRequestReason) {
        if (storage$StorageType == Storage$StorageType.EXTERNAL_CARD) {
            switch (CameraStorageManager$1.$SwitchMap$com$sonyericsson$cameracommon$storage$CameraStorageManager$UpdateRequestReason[cameraStorageManager$UpdateRequestReason.ordinal()]) {
                case 6:
                case 7:
                    return false;
            }
        }
        return true;
    }

    @NonNull
    private CameraStorageManager$DetailStorageState getNextStateFromWritable(Storage$StorageType storage$StorageType, boolean z) {
        CameraStorageManager$DetailStorageState cameraStorageManager$DetailStorageState;
        ExecutorService executorServiceBuildExecutor = ThreadUtil.buildExecutor("SM#ChkWritable");
        Future futureSubmit = executorServiceBuildExecutor.submit(new CameraStorageManager$CheckFsDirectoryTask(this, this.mContext, storage$StorageType, z));
        try {
            try {
                if (storage$StorageType == Storage$StorageType.INTERNAL) {
                    cameraStorageManager$DetailStorageState = (CameraStorageManager$DetailStorageState) futureSubmit.get();
                } else {
                    cameraStorageManager$DetailStorageState = (CameraStorageManager$DetailStorageState) futureSubmit.get(5000L, TimeUnit.MILLISECONDS);
                }
            } catch (InterruptedException | ExecutionException | TimeoutException e) {
                CamLog.e("getNextStateFromWritable: timed out or fatal error, type = " + storage$StorageType, e);
                cameraStorageManager$DetailStorageState = CameraStorageManager$DetailStorageState.MEMORY_ERR_TIMED_OUT;
            }
            return cameraStorageManager$DetailStorageState;
        } finally {
            futureSubmit.cancel(true);
            executorServiceBuildExecutor.shutdown();
        }
    }

    public Uri getSdGrantedUri(Context context) {
        if (this.mStorageController.getStorageState(Storage$StorageType.EXTERNAL_CARD) == Storage$StorageState.REMOVED) {
            return null;
        }
        Uri sdCardGrantedUri = StorageUtil.getSdCardGrantedUri(context);
        List<UriPermission> persistedUriPermissions = context.getContentResolver().getPersistedUriPermissions();
        boolean z = false;
        if (persistedUriPermissions.size() == 1) {
            return persistedUriPermissions.get(0).getUri();
        }
        if (persistedUriPermissions.size() == 0) {
            return null;
        }
        Iterator<UriPermission> it = persistedUriPermissions.iterator();
        while (it.hasNext()) {
            Uri uri = it.next().getUri();
            if (sdCardGrantedUri == null || !uri.toString().equals(sdCardGrantedUri.toString())) {
                context.getContentResolver().releasePersistableUriPermission(uri, 3);
            } else {
                z = true;
            }
        }
        if (z) {
            return sdCardGrantedUri;
        }
        return null;
    }

    private CameraStorageManager$DetailStorageState getNextStateFromRemain(long j) {
        CameraStorageManager$DetailStorageState cameraStorageManager$DetailStorageState;
        if (j > 153600) {
            cameraStorageManager$DetailStorageState = CameraStorageManager$DetailStorageState.MEMORY_READY;
        } else if (j > 61440) {
            cameraStorageManager$DetailStorageState = CameraStorageManager$DetailStorageState.MEMORY_READY_LOW;
        } else {
            cameraStorageManager$DetailStorageState = CameraStorageManager$DetailStorageState.MEMORY_ERR_FULL;
        }
        if (CamLog.VERBOSE) {
            CamLog.d("getNextStateFromRemain() newState = " + cameraStorageManager$DetailStorageState);
        }
        return cameraStorageManager$DetailStorageState;
    }

    private void setLastStorageState(Storage$StorageType storage$StorageType, CameraStorageManager$DetailStorageState cameraStorageManager$DetailStorageState) {
        if (CamLog.DEBUG) {
            CamLog.d("updateLastStorageState storage: " + storage$StorageType + " state: " + cameraStorageManager$DetailStorageState);
        }
        this.mLastStorageStates.put(storage$StorageType, cameraStorageManager$DetailStorageState);
        if (CamLog.VERBOSE) {
            logStorageState();
        }
        this.mStorageController.setStorageState(storage$StorageType, cameraStorageManager$DetailStorageState);
    }

    private void logStorageState() {
        if (CamLog.VERBOSE) {
            StringBuilder sb = new StringBuilder();
            Iterator<Storage$StorageType> it = this.mLastStorageStates.keySet().iterator();
            int i = 0;
            while (it.hasNext()) {
                sb.append(i + ":" + this.mLastStorageStates.get(it.next()) + " ");
                i++;
            }
            CamLog.v("logStorageState " + ((Object) sb));
        }
    }

    public long checkRemain(boolean z, Storage$StorageType storage$StorageType) {
        if (CamLog.VERBOSE) {
            CamLog.d("checkRemain: storage: " + storage$StorageType);
        }
        this.mStorageController.checkAndNotifyStateChanged(storage$StorageType, z);
        return this.mStorageController.getAvailableStorageSize(storage$StorageType);
    }

    public void checkAndNotifyStateChanged(Storage$StorageType storage$StorageType) {
        if (CamLog.VERBOSE) {
            CamLog.d("checkAndNotifyStateChanged : " + storage$StorageType);
        }
        this.mStorageController.checkAndNotifyStateChanged(storage$StorageType, false);
    }

    private CameraStorageManager$DetailStorageState getLastStorageState(Storage$StorageType storage$StorageType) {
        return this.mLastStorageStates.get(storage$StorageType);
    }

    private void updateDcfPath(Storage$StorageType storage$StorageType) {
        if (CamLog.VERBOSE) {
            CamLog.d("updateDcfPath : targetStorage = " + storage$StorageType);
        }
        String rootDirectory = getRootDirectory(storage$StorageType);
        if (rootDirectory != null) {
            if (!this.mDcfPathBuilderMap.containsKey(storage$StorageType)) {
                this.mDcfPathBuilderMap.put(storage$StorageType, new DcfPathBuilder(rootDirectory));
            } else if (!rootDirectory.equals(this.mDcfPathBuilderMap.get(storage$StorageType).getRootPath())) {
                if (CamLog.VERBOSE) {
                    CamLog.d("Root path is changed");
                }
                this.mDcfPathBuilderMap.put(storage$StorageType, new DcfPathBuilder(rootDirectory));
            }
            this.mDcfPathBuilderMap.get(storage$StorageType).startScan();
        }
    }

    public StatFs getStatFs(String str) {
        if (CamLog.VERBOSE) {
            CamLog.d("getStatFs: " + str);
        }
        ExecutorService executorServiceBuildExecutor = ThreadUtil.buildExecutor("SM#ChkRemain");
        Future futureSubmit = executorServiceBuildExecutor.submit(new StorageUtil$GetStatFsTask(str));
        try {
            try {
                try {
                    try {
                        return (StatFs) futureSubmit.get(3500L, TimeUnit.MILLISECONDS);
                    } catch (ExecutionException e) {
                        CamLog.e("GetStatFsTask failed.", e);
                        return null;
                    }
                } catch (InterruptedException e2) {
                    CamLog.e("GetStatFsTask has been interrupted.", e2);
                    return null;
                }
            } catch (TimeoutException e3) {
                CamLog.e("GetStatFsTask failed.", e3);
                return null;
            }
        } finally {
            futureSubmit.cancel(true);
            executorServiceBuildExecutor.shutdown();
        }
    }

    public long updateAvailableStorageSize(Storage$StorageType storage$StorageType, long j) {
        String pathFromType = StorageUtil.getPathFromType(storage$StorageType, this.mContext);
        if (pathFromType == null) {
            CamLog.e("Storage is not mounted. : " + storage$StorageType);
            return 0L;
        }
        StatFs statFs = getStatFs(pathFromType);
        if (statFs == null) {
            CamLog.e("Failed to get StatFs: " + pathFromType);
            return 0L;
        }
        if (!StorageUtil.getVolumeState(storage$StorageType, this.mContext).equals("mounted")) {
            return 0L;
        }
        long blockSizeLong = statFs.getBlockSizeLong();
        long availableBlocksLong = statFs.getAvailableBlocksLong();
        if (CamLog.VERBOSE) {
            CamLog.d("getAvailableSize size: " + blockSizeLong);
        }
        if (CamLog.VERBOSE) {
            CamLog.d("getAvailableSize num: " + availableBlocksLong);
        }
        long jMax = Math.max(0L, ((blockSizeLong * availableBlocksLong) - j) / 1024);
        if (CamLog.VERBOSE) {
            CamLog.d("getAvailableSize total[KB]: " + jMax);
        }
        return jMax;
    }

    private boolean isReadable(Storage$StorageType storage$StorageType) {
        if (storage$StorageType == null) {
            return false;
        }
        switch (CameraStorageManager$1.$SwitchMap$com$sonyericsson$cameracommon$storage$CameraStorageManager$DetailStorageState[this.mLastStorageStates.get(storage$StorageType).ordinal()]) {
        }
        return false;
    }

    private boolean isWritableCheckNeeded(Storage$StorageType storage$StorageType) {
        if (storage$StorageType == null) {
            return false;
        }
        switch (CameraStorageManager$1.$SwitchMap$com$sonyericsson$cameracommon$storage$CameraStorageManager$DetailStorageState[this.mLastStorageStates.get(storage$StorageType).ordinal()]) {
        }
        return false;
    }

    public List<String> getReadableStoragePaths() {
        String pathFromType;
        ArrayList arrayList = new ArrayList();
        for (Storage$StorageType storage$StorageType : this.mLastStorageStates.keySet()) {
            if (isReadable(storage$StorageType) && (pathFromType = StorageUtil.getPathFromType(storage$StorageType, this.mContext)) != null) {
                arrayList.add(pathFromType);
            }
        }
        return arrayList;
    }

    public void release() {
        Iterator<Storage$StorageType> it = StorageUtil.getMountableStorageTypes().iterator();
        while (it.hasNext()) {
            this.mStorageUpdaterMap.get(it.next()).release();
        }
        this.mStorageController.release();
    }

    public String getRootDirectory(Storage$StorageType storage$StorageType) {
        return StorageUtil.getPathFromType(storage$StorageType, this.mContext);
    }

    public String getDcimDirectory(Storage$StorageType storage$StorageType) {
        return getRootDirectory(storage$StorageType) + "/" + Environment.DIRECTORY_DCIM;
    }

    public String getPhotoPath(Storage$StorageType storage$StorageType) {
        DcfPathBuilder dcfPathBuilder = this.mDcfPathBuilderMap.get(storage$StorageType);
        if (dcfPathBuilder != null) {
            if (CamLog.VERBOSE) {
                CamLog.d("DcfPathbuilder is not null!!");
            }
            return dcfPathBuilder.getPhotoPath(storage$StorageType);
        }
        if (!CamLog.VERBOSE) {
            return null;
        }
        CamLog.d("DcfPathbuilder is null!!");
        return null;
    }

    public String getBurstPhotoPath(SavingRequest savingRequest) {
        return ManualBurstPathBuilder.getPhotoPath(StorageUtil.getPathFromType(savingRequest.getStorageType(), this.mContext) + "/" + Environment.DIRECTORY_DCIM, savingRequest);
    }

    public String getPredictiveCapturePhotoPath(SavingRequest savingRequest) {
        return PredictiveCapturePathBuilder.getPhotoPath(getDcimDirectory(savingRequest.getStorageType()), savingRequest);
    }

    public String getVideoPath(String str, Storage$StorageType storage$StorageType) {
        return this.mDcfPathBuilderMap.get(storage$StorageType) != null ? this.mDcfPathBuilderMap.get(storage$StorageType).getVideoPath(str, storage$StorageType) : "/dev/null";
    }

    public String getSlowMotionPath(String str, Storage$StorageType storage$StorageType) {
        return this.mSlowMotionPathBuilder.get(getDcimDirectory(storage$StorageType), str, System.currentTimeMillis(), storage$StorageType);
    }

    public CameraStorageManager$UpdateInterval calculateNextPollingInterval(Storage$StorageType storage$StorageType) {
        return CameraStorageManager$UpdateInterval.decide(this.mStorageController.getAvailableStorageSize(storage$StorageType));
    }

    public synchronized void doResume() {
        synchronized (this.mReadyStateLock) {
            this.mIsApplicationForeground = true;
        }
        for (Storage$StorageType storage$StorageType : StorageUtil.getMountableStorageTypes()) {
            synchronized (this.mReadyStateLock) {
                if (this.mStorageController.getStorageReadyState(storage$StorageType) == Storage$StorageReadyState.SUSPENDED) {
                    changeReadyStateTo(storage$StorageType, Storage$StorageReadyState.PREPARING, CameraStorageManager$UpdateRequestReason.APP_LAUNCH);
                }
            }
            this.mStorageUpdaterMap.get(storage$StorageType).setAutoUpdateEnabled(true);
        }
    }

    public synchronized void doPause() {
        synchronized (this.mReadyStateLock) {
            this.mIsApplicationForeground = false;
        }
        for (Storage$StorageType storage$StorageType : StorageUtil.getMountableStorageTypes()) {
            synchronized (this.mReadyStateLock) {
                if (this.mStorageController.getStorageReadyState(storage$StorageType) == Storage$StorageReadyState.COMPLETED) {
                    changeReadyStateTo(storage$StorageType, Storage$StorageReadyState.SUSPENDED, CameraStorageManager$UpdateRequestReason.APP_CLOSE);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00e7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean changeReadyStateTo(Storage$StorageType storage$StorageType, Storage$StorageReadyState storage$StorageReadyState, CameraStorageManager$UpdateRequestReason cameraStorageManager$UpdateRequestReason) {
        Storage$StorageReadyState storageReadyState = this.mStorageController.getStorageReadyState(storage$StorageType);
        boolean z = true;
        if (CamLog.DEBUG) {
            CamLog.d("changeReadyStateTo: type = " + storage$StorageType + ", from = " + storageReadyState + ", to = " + storage$StorageReadyState + ", Reason = " + cameraStorageManager$UpdateRequestReason);
        }
        switch (CameraStorageManager$1.$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageReadyState[storageReadyState.ordinal()]) {
            case 1:
                if (storage$StorageReadyState == Storage$StorageReadyState.PREPARING) {
                    this.mStorageUpdaterMap.get(storage$StorageType).requestVolumeCheck(CameraStorageManager$UpdateInterval.IMMEDIATE, cameraStorageManager$UpdateRequestReason);
                    if (z) {
                        this.mStorageController.setStorageReadyState(storage$StorageType, storage$StorageReadyState);
                        this.mStorageController.checkAndNotifyReadyStateChanged(storage$StorageType);
                    }
                    return z;
                }
                if (CamLog.DEBUG) {
                    throw new IllegalStateException("Incorrect state : " + storage$StorageReadyState);
                }
                z = false;
                if (z) {
                }
                return z;
            case 2:
                if (storage$StorageReadyState == Storage$StorageReadyState.PREPARING) {
                    this.mStorageUpdaterMap.get(storage$StorageType).requestVolumeCheck(CameraStorageManager$UpdateInterval.IMMEDIATE, cameraStorageManager$UpdateRequestReason);
                } else {
                    z = false;
                }
                if (z) {
                }
                return z;
            case 3:
                if (storage$StorageReadyState == Storage$StorageReadyState.SUSPENDED) {
                    this.mStorageUpdaterMap.get(storage$StorageType).setAutoUpdateEnabled(false);
                } else if (storage$StorageReadyState == Storage$StorageReadyState.ACCESSIBLE) {
                    requestWriteCheck(storage$StorageType, cameraStorageManager$UpdateRequestReason);
                }
                if (z) {
                }
                return z;
            case 4:
                if (storage$StorageReadyState == Storage$StorageReadyState.SUSPENDED) {
                    this.mStorageUpdaterMap.get(storage$StorageType).setAutoUpdateEnabled(false);
                } else if (storage$StorageReadyState != Storage$StorageReadyState.COMPLETED) {
                }
                if (z) {
                }
                return z;
            case 5:
                if (storage$StorageReadyState == Storage$StorageReadyState.SUSPENDED) {
                    this.mStorageUpdaterMap.get(storage$StorageType).setAutoUpdateEnabled(false);
                } else if (storage$StorageReadyState != Storage$StorageReadyState.PREPARING) {
                }
                if (z) {
                }
                return z;
            default:
                CamLog.e(storageReadyState + " is not supported.");
                z = false;
                if (z) {
                }
                return z;
        }
    }
}
