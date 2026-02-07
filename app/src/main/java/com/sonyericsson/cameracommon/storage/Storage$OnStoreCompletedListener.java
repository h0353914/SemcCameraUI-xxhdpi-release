package com.sonyericsson.cameracommon.storage;

import android.net.Uri;

/* JADX INFO: loaded from: classes.dex */
public interface Storage$OnStoreCompletedListener {
    void onStoreCompleted(Uri uri, SavingRequest savingRequest, Storage$StorageType storage$StorageType);

    void onStoreFailed(Uri uri, SavingRequest savingRequest, int i);
}
