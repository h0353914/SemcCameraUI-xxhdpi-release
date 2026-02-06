package com.sonyericsson.cameracommon.storage;

import android.support.annotation.NonNull;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public enum Storage$StorageState {
    REMOVED(CameraStorageManager$DetailStorageState.MEMORY_ERR_NO_MEMORY_CARD),
    AVAILABLE(CameraStorageManager$DetailStorageState.MEMORY_READY),
    AVAILABLE_NEAR_FULL(CameraStorageManager$DetailStorageState.MEMORY_READY_LOW),
    UNAVAILABLE(CameraStorageManager$DetailStorageState.MEMORY_ERR_ACCESS, CameraStorageManager$DetailStorageState.MEMORY_ERR_FORMAT, CameraStorageManager$DetailStorageState.MEMORY_ERR_SHARED, CameraStorageManager$DetailStorageState.MEMORY_NO_DCIM),
    READ_ONLY(CameraStorageManager$DetailStorageState.MEMORY_ERR_READ_ONLY),
    FULL(CameraStorageManager$DetailStorageState.MEMORY_ERR_FULL, CameraStorageManager$DetailStorageState.MEMORY_ERR_FULL_COUNT),
    CORRUPT(CameraStorageManager$DetailStorageState.MEMORY_ERR_TIMED_OUT),
    UNGRANTED(CameraStorageManager$DetailStorageState.MEMORY_UNGRANTED);

    private final List<CameraStorageManager$DetailStorageState> mDetailStateList;

    Storage$StorageState(CameraStorageManager$DetailStorageState... cameraStorageManager$DetailStorageStateArr) {
        this.mDetailStateList = Collections.unmodifiableList(Arrays.asList(cameraStorageManager$DetailStorageStateArr));
    }

    @NonNull
    public static Storage$StorageState getState(@NonNull CameraStorageManager$DetailStorageState cameraStorageManager$DetailStorageState) {
        for (Storage$StorageState storage$StorageState : values()) {
            Iterator<CameraStorageManager$DetailStorageState> it = storage$StorageState.mDetailStateList.iterator();
            while (it.hasNext()) {
                if (cameraStorageManager$DetailStorageState.equals(it.next())) {
                    return storage$StorageState;
                }
            }
        }
        return UNAVAILABLE;
    }

    public boolean isWritable() {
        return this == AVAILABLE || this == AVAILABLE_NEAR_FULL;
    }
}
