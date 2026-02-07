package com.sonyericsson.android.camera.view.modeselector;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.util.LruCache;

/* JADX INFO: loaded from: classes.dex */
class ImageLoader$1 extends LruCache<String, BitmapDrawable> {
    final /* synthetic */ ImageLoader this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ImageLoader$1(ImageLoader imageLoader, int i) {
        super(i);
        this.this$0 = imageLoader;
    }

    @Override // android.util.LruCache
    protected /* bridge */ /* synthetic */ int sizeOf(String str, BitmapDrawable bitmapDrawable) {
        return sizeOf2(str, bitmapDrawable);
    }

    /* JADX INFO: renamed from: sizeOf, reason: avoid collision after fix types in other method */
    protected int sizeOf2(String str, BitmapDrawable bitmapDrawable) {
        Bitmap bitmap = bitmapDrawable == null ? null : bitmapDrawable.getBitmap();
        if (bitmap == null) {
            return 0;
        }
        return bitmap.getByteCount();
    }
}
