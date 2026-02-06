package com.sonyericsson.cameracommon.storage;

import android.graphics.Bitmap;
import android.net.Uri;

class StorageImpl$1 implements Runnable {
    final /* synthetic */ StorageImpl this$0;
    final /* synthetic */ Bitmap val$bitmap;
    final /* synthetic */ Storage$OnLoadCompletedListener val$listener;
    final /* synthetic */ Uri val$uri;

    StorageImpl$1(StorageImpl storageImpl, Storage$OnLoadCompletedListener storage$OnLoadCompletedListener, Bitmap bitmap, Uri uri) {
        this.this$0 = storageImpl;
        this.val$listener = storage$OnLoadCompletedListener;
        this.val$bitmap = bitmap;
        this.val$uri = uri;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.val$listener != null) {
            if (this.val$bitmap != null) {
                this.val$listener.onLoadCompleted(this.val$uri, this.val$bitmap);
            } else {
                this.val$listener.onLoadFailed(this.val$uri, 0);
            }
        }
    }
}
