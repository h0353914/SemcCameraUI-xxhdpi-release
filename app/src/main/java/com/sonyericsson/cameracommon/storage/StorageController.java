package com.sonyericsson.cameracommon.storage;

import android.support.annotation.NonNull;
import com.sonyericsson.android.camera.util.CamLog;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@Deprecated
public class StorageController {
    public static final String TAG = "StorageController";
    protected Map<Storage$StorageType, Storage$StorageReadyState> mLatestCheckedStorageReadyState;
    protected Map<Storage$StorageType, Storage$StorageState> mLatestCheckedStorageState;
    protected Map<Storage$StorageType, Storage$StorageReadyState> mStorageReadyStateMap;
    protected Map<Storage$StorageType, Storage$StorageState> mStorageStatus;
    protected Map<Storage$StorageType, Long> mAvailableSizeList = new ConcurrentHashMap();
    private final List<Storage$StorageStateListener> mStateListeners = Collections.synchronizedList(new LinkedList());
    private final List<Storage$StorageReadyStateListener> mReadyStateListeners = Collections.synchronizedList(new LinkedList());

    public StorageController() {
        this.mStorageStatus = null;
        this.mStorageReadyStateMap = null;
        this.mLatestCheckedStorageState = null;
        this.mLatestCheckedStorageReadyState = null;
        this.mLatestCheckedStorageReadyState = new ConcurrentHashMap();
        this.mLatestCheckedStorageState = new ConcurrentHashMap();
        this.mStorageReadyStateMap = new ConcurrentHashMap();
        Iterator<Storage$StorageType> it = StorageUtil.getMountableStorageTypes().iterator();
        while (it.hasNext()) {
            setStorageReadyState(it.next(), Storage$StorageReadyState.INIT);
        }
        this.mStorageStatus = new ConcurrentHashMap();
    }

    public void addStorageListener(Storage$StorageStateListener storage$StorageStateListener) {
        if (CamLog.VERBOSE) {
            CamLog.d("addStorageListener: " + storage$StorageStateListener.getClass().getSimpleName());
        }
        if (this.mStateListeners.contains(storage$StorageStateListener)) {
            return;
        }
        this.mStateListeners.add(storage$StorageStateListener);
        for (Storage$StorageType storage$StorageType : StorageUtil.getMountableStorageTypes()) {
            storage$StorageStateListener.onStorageStateChanged(storage$StorageType, getStorageState(storage$StorageType), this.mStorageReadyStateMap.get(storage$StorageType));
        }
    }

    public void removeStorageListener(Storage$StorageStateListener storage$StorageStateListener) {
        if (CamLog.VERBOSE) {
            CamLog.d("removeStorageListener: " + storage$StorageStateListener.getClass().getSimpleName());
        }
        if (this.mStateListeners.contains(storage$StorageStateListener)) {
            this.mStateListeners.remove(storage$StorageStateListener);
        }
    }

    public void addStorageReadyStateListener(Storage$StorageReadyStateListener storage$StorageReadyStateListener) {
        if (CamLog.DEBUG) {
            CamLog.d("addStorageReadyStateListener: " + storage$StorageReadyStateListener.getClass().getSimpleName());
        }
        if (this.mReadyStateListeners.contains(storage$StorageReadyStateListener)) {
            return;
        }
        this.mReadyStateListeners.add(storage$StorageReadyStateListener);
        for (Storage$StorageType storage$StorageType : StorageUtil.getMountableStorageTypes()) {
            storage$StorageReadyStateListener.onStorageReadyStateChanged(storage$StorageType, this.mStorageReadyStateMap.get(storage$StorageType));
        }
    }

    public void removeStorageReadyStateListener(Storage$StorageReadyStateListener storage$StorageReadyStateListener) {
        if (CamLog.DEBUG) {
            CamLog.d("removeStorageReadyStateListener: " + storage$StorageReadyStateListener.getClass().getSimpleName());
        }
        if (this.mReadyStateListeners.contains(storage$StorageReadyStateListener)) {
            this.mReadyStateListeners.remove(storage$StorageReadyStateListener);
        }
    }

    public void setStorageState(Storage$StorageType storage$StorageType, CameraStorageManager$DetailStorageState cameraStorageManager$DetailStorageState) {
        if (StorageUtil.getMountableStorageTypes().contains(storage$StorageType)) {
            Storage$StorageState state = Storage$StorageState.getState(cameraStorageManager$DetailStorageState);
            if (CamLog.VERBOSE) {
                CamLog.d("update storage: " + storage$StorageType + ", " + state + ", detail:" + cameraStorageManager$DetailStorageState);
            }
            this.mStorageStatus.put(storage$StorageType, state);
        }
    }

    public void setStorageReadyState(Storage$StorageType storage$StorageType, Storage$StorageReadyState storage$StorageReadyState) {
        if (CamLog.DEBUG) {
            CamLog.d("setStorageReadyState[" + storage$StorageType + "] From " + getStorageReadyState(storage$StorageType) + " to " + storage$StorageReadyState);
        }
        this.mStorageReadyStateMap.put(storage$StorageType, storage$StorageReadyState);
    }

    public void checkAndNotifyStateChanged(Storage$StorageType storage$StorageType, boolean z) {
        Storage$StorageState storage$StorageState = this.mStorageStatus.get(storage$StorageType);
        if (storage$StorageState != null && (this.mLatestCheckedStorageState.get(storage$StorageType) != storage$StorageState || z)) {
            if (CamLog.DEBUG) {
                CamLog.d("checked: " + storage$StorageType + ", before: " + this.mLatestCheckedStorageState.get(storage$StorageType) + ", after: " + storage$StorageState + ", forceUpdate: " + z);
            }
            this.mLatestCheckedStorageState.put(storage$StorageType, storage$StorageState);
            notifyStateChanged(storage$StorageType);
        }
        notifyAvailableSize(storage$StorageType, this.mAvailableSizeList.get(storage$StorageType).longValue());
    }

    public void checkAndNotifyReadyStateChanged(Storage$StorageType storage$StorageType) {
        Storage$StorageReadyState storage$StorageReadyState = this.mStorageReadyStateMap.get(storage$StorageType);
        if (this.mLatestCheckedStorageReadyState.get(storage$StorageType) != storage$StorageReadyState) {
            this.mLatestCheckedStorageReadyState.put(storage$StorageType, storage$StorageReadyState);
            notifyReadyStateChanged(storage$StorageType, storage$StorageReadyState);
        }
    }

    private void notifyStateChanged(Storage$StorageType storage$StorageType) {
        Storage$StorageState storageState = getStorageState(storage$StorageType);
        Storage$StorageReadyState storageReadyState = getStorageReadyState(storage$StorageType);
        if (CamLog.DEBUG) {
            CamLog.d("notifyStateChanged: storageType = " + storage$StorageType + ", State = " + storageState + ", readyState = " + storageReadyState);
        }
        if (storageReadyState.compareTo(Storage$StorageReadyState.ACCESSIBLE) < 0) {
            if (CamLog.DEBUG) {
                CamLog.d("Storage is not checked yet");
            }
        } else {
            for (int i = 0; i < this.mStateListeners.size(); i++) {
                Storage$StorageStateListener storage$StorageStateListener = this.mStateListeners.get(i);
                if (storage$StorageStateListener != null) {
                    storage$StorageStateListener.onStorageStateChanged(storage$StorageType, storageState, storageReadyState);
                }
            }
        }
    }

    private void notifyAvailableSize(Storage$StorageType storage$StorageType, long j) {
        for (int i = 0; i < this.mStateListeners.size(); i++) {
            Storage$StorageStateListener storage$StorageStateListener = this.mStateListeners.get(i);
            if (storage$StorageStateListener != null) {
                storage$StorageStateListener.onStorageSizeChanged(storage$StorageType, j);
            }
        }
    }

    private void notifyReadyStateChanged(Storage$StorageType storage$StorageType, Storage$StorageReadyState storage$StorageReadyState) {
        if (CamLog.DEBUG) {
            CamLog.d("notifyReadyStateChanged storageType = " + storage$StorageType + ", State = " + storage$StorageReadyState);
        }
        for (int i = 0; i < this.mReadyStateListeners.size(); i++) {
            Storage$StorageReadyStateListener storage$StorageReadyStateListener = this.mReadyStateListeners.get(i);
            if (storage$StorageReadyStateListener != null) {
                storage$StorageReadyStateListener.onStorageReadyStateChanged(storage$StorageType, storage$StorageReadyState);
            }
        }
    }

    public void release() {
        this.mStateListeners.clear();
        if (CamLog.DEBUG) {
            CamLog.d("Notify to listener to be uninitialized Storage!!!");
        }
        this.mReadyStateListeners.clear();
    }

    public Storage$StorageState getStorageState(Storage$StorageType storage$StorageType) {
        return this.mStorageStatus.get(storage$StorageType);
    }

    @NonNull
    Storage$StorageReadyState getStorageReadyState(Storage$StorageType storage$StorageType) {
        return this.mStorageReadyStateMap.get(storage$StorageType);
    }

    public void setAvailableStorageSize(Storage$StorageType storage$StorageType, long j) {
        if (CamLog.VERBOSE) {
            CamLog.d("setAvailableStorageSize: size = " + j + " type : " + storage$StorageType);
        }
        this.mAvailableSizeList.put(storage$StorageType, Long.valueOf(j));
    }

    public long getAvailableStorageSize(Storage$StorageType storage$StorageType) {
        if (this.mAvailableSizeList.containsKey(storage$StorageType)) {
            return this.mAvailableSizeList.get(storage$StorageType).longValue();
        }
        return 0L;
    }
}
