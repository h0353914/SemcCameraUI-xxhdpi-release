package com.sonyericsson.android.camera.controller.album;

import android.graphics.Bitmap;
import android.net.Uri;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;

class AlbumPreloader$PreloadedCacheHolder {
    private Bitmap mBitmap;
    private Uri mUri;

    private AlbumPreloader$PreloadedCacheHolder() {
    }

    /* synthetic */ AlbumPreloader$PreloadedCacheHolder(AlbumPreloader$1 albumPreloader$1) {
        this();
    }

    public void update(@NonNull Uri uri, @NonNull Bitmap bitmap) {
        if (isSameUri(uri) && bitmap == this.mBitmap) {
            return;
        }
        clear();
        this.mUri = uri;
        this.mBitmap = bitmap;
    }

    @Nullable
    public Bitmap get() {
        Bitmap bitmap = this.mBitmap;
        this.mUri = null;
        this.mBitmap = null;
        return bitmap;
    }

    public void clear() {
        if (this.mBitmap != null) {
            this.mBitmap.recycle();
            this.mBitmap = null;
        }
        this.mUri = null;
    }

    public boolean isSameUri(Uri uri) {
        if (this.mUri != null) {
            return this.mUri.equals(uri);
        }
        return this.mUri == uri;
    }
}
