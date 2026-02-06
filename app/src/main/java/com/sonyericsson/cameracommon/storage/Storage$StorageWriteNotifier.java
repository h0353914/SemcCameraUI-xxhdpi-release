package com.sonyericsson.cameracommon.storage;

public interface Storage$StorageWriteNotifier {
    Storage$StorageType getStorageType();

    void notifyWriteStorage();
}
