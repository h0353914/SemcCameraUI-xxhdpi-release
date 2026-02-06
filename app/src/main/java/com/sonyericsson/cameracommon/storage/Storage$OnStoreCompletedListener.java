package com.sonyericsson.cameracommon.storage;

import android.net.Uri;

public interface Storage$OnStoreCompletedListener {
    void onStoreCompleted(Uri uri, SavingRequest savingRequest, Storage$StorageType storage$StorageType);

    void onStoreFailed(Uri uri, SavingRequest savingRequest, int i);
}
