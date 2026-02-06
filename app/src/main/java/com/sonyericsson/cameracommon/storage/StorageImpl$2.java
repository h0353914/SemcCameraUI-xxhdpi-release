package com.sonyericsson.cameracommon.storage;

import android.graphics.Bitmap;
import android.net.Uri;

class StorageImpl$2 implements Runnable {
    final /* synthetic */ StorageImpl this$0;
    final /* synthetic */ Bitmap val$bitmap;
    final /* synthetic */ Storage$OnLoadCompletedListener val$listener;

    StorageImpl$2(StorageImpl storageImpl, Storage$OnLoadCompletedListener storage$OnLoadCompletedListener, Bitmap bitmap) {
        this.this$0 = storageImpl;
        this.val$listener = storage$OnLoadCompletedListener;
        this.val$bitmap = bitmap;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.val$listener != null) {
            this.val$listener.onLoadCompleted(Uri.EMPTY, this.val$bitmap);
        }
    }
}
