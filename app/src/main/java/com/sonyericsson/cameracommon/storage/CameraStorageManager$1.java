package com.sonyericsson.cameracommon.storage;

/* synthetic */ class CameraStorageManager$1 {
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$cameracommon$storage$CameraStorageManager$DetailStorageState;
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$cameracommon$storage$CameraStorageManager$UpdateRequestReason;
    static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageReadyState = new int[Storage$StorageReadyState.values().length];

    static {
        try {
            $SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageReadyState[Storage$StorageReadyState.INIT.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            $SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageReadyState[Storage$StorageReadyState.SUSPENDED.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            $SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageReadyState[Storage$StorageReadyState.PREPARING.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            $SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageReadyState[Storage$StorageReadyState.ACCESSIBLE.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            $SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageReadyState[Storage$StorageReadyState.COMPLETED.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        $SwitchMap$com$sonyericsson$cameracommon$storage$CameraStorageManager$DetailStorageState = new int[CameraStorageManager$DetailStorageState.values().length];
        try {
            $SwitchMap$com$sonyericsson$cameracommon$storage$CameraStorageManager$DetailStorageState[CameraStorageManager$DetailStorageState.MEMORY_READY.ordinal()] = 1;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            $SwitchMap$com$sonyericsson$cameracommon$storage$CameraStorageManager$DetailStorageState[CameraStorageManager$DetailStorageState.MEMORY_READY_LOW.ordinal()] = 2;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            $SwitchMap$com$sonyericsson$cameracommon$storage$CameraStorageManager$DetailStorageState[CameraStorageManager$DetailStorageState.MEMORY_ERR_FULL.ordinal()] = 3;
        } catch (NoSuchFieldError unused8) {
        }
        try {
            $SwitchMap$com$sonyericsson$cameracommon$storage$CameraStorageManager$DetailStorageState[CameraStorageManager$DetailStorageState.MEMORY_ERR_FULL_COUNT.ordinal()] = 4;
        } catch (NoSuchFieldError unused9) {
        }
        try {
            $SwitchMap$com$sonyericsson$cameracommon$storage$CameraStorageManager$DetailStorageState[CameraStorageManager$DetailStorageState.MEMORY_ERR_READ_ONLY.ordinal()] = 5;
        } catch (NoSuchFieldError unused10) {
        }
        $SwitchMap$com$sonyericsson$cameracommon$storage$CameraStorageManager$UpdateRequestReason = new int[CameraStorageManager$UpdateRequestReason.values().length];
        try {
            $SwitchMap$com$sonyericsson$cameracommon$storage$CameraStorageManager$UpdateRequestReason[CameraStorageManager$UpdateRequestReason.APP_LAUNCH.ordinal()] = 1;
        } catch (NoSuchFieldError unused11) {
        }
        try {
            $SwitchMap$com$sonyericsson$cameracommon$storage$CameraStorageManager$UpdateRequestReason[CameraStorageManager$UpdateRequestReason.APP_LAUNCH_WITH_UNTRUSTED.ordinal()] = 2;
        } catch (NoSuchFieldError unused12) {
        }
        try {
            $SwitchMap$com$sonyericsson$cameracommon$storage$CameraStorageManager$UpdateRequestReason[CameraStorageManager$UpdateRequestReason.RECEIVE_STORAGE_MOUNTED.ordinal()] = 3;
        } catch (NoSuchFieldError unused13) {
        }
        try {
            $SwitchMap$com$sonyericsson$cameracommon$storage$CameraStorageManager$UpdateRequestReason[CameraStorageManager$UpdateRequestReason.RECEIVE_STORAGE_EJECTED.ordinal()] = 4;
        } catch (NoSuchFieldError unused14) {
        }
        try {
            $SwitchMap$com$sonyericsson$cameracommon$storage$CameraStorageManager$UpdateRequestReason[CameraStorageManager$UpdateRequestReason.STORING_FAILED.ordinal()] = 5;
        } catch (NoSuchFieldError unused15) {
        }
        try {
            $SwitchMap$com$sonyericsson$cameracommon$storage$CameraStorageManager$UpdateRequestReason[CameraStorageManager$UpdateRequestReason.PHOTO_STORING_COMPLETED.ordinal()] = 6;
        } catch (NoSuchFieldError unused16) {
        }
        try {
            $SwitchMap$com$sonyericsson$cameracommon$storage$CameraStorageManager$UpdateRequestReason[CameraStorageManager$UpdateRequestReason.VIDEO_STORING_COMPLETED.ordinal()] = 7;
        } catch (NoSuchFieldError unused17) {
        }
    }
}
