package com.sonyericsson.cameracommon.storage;

/* JADX INFO: loaded from: classes.dex */
public interface Storage$StorageWriteNotifier {
    Storage$StorageType getStorageType();

    void notifyWriteStorage();
}
