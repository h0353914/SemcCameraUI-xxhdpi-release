package com.sonyericsson.cameracommon.storage;

import com.sonyericsson.cameracommon.storage.Storage;

public interface SavingTaskInquiry {
    long getReservedSize(Storage.StorageType storageType);
}
