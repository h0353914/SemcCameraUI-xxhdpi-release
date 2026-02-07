package com.sonyericsson.cameracommon.storage;

/* JADX INFO: loaded from: classes.dex */
public interface Storage$StorageStateListener {
    void onStorageSizeChanged(Storage$StorageType storage$StorageType, long j);

    void onStorageStateChanged(Storage$StorageType storage$StorageType, Storage$StorageState storage$StorageState, Storage$StorageReadyState storage$StorageReadyState);
}
