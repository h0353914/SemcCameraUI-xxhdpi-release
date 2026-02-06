package com.sonyericsson.android.camera.view.modeselector;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import java.lang.ref.WeakReference;

class ImageLoader$AsyncDrawable extends BitmapDrawable {
    private final WeakReference<ImageLoader$ImageLoaderTask> imageLoaderTaskReference;

    public ImageLoader$AsyncDrawable(Resources resources, Bitmap bitmap, ImageLoader$ImageLoaderTask imageLoader$ImageLoaderTask) {
        super(resources, bitmap);
        this.imageLoaderTaskReference = new WeakReference<>(imageLoader$ImageLoaderTask);
    }

    public ImageLoader$ImageLoaderTask getImageLoaderTask() {
        return this.imageLoaderTaskReference.get();
    }
}
