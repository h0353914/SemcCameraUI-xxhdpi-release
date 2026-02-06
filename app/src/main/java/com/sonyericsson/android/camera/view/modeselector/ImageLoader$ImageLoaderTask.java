package com.sonyericsson.android.camera.view.modeselector;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.AsyncTask;
import android.widget.ImageView;
import java.lang.ref.WeakReference;

class ImageLoader$ImageLoaderTask extends AsyncTask<Void, Void, BitmapDrawable> {
    private static final String THREAD_NAME = "AppsUi#AsyncTask";
    private final int imageHeight;
    private final String imageUri;
    private final WeakReference<ImageView> imageViewReference;
    private final int imageWidth;
    final /* synthetic */ ImageLoader this$0;

    static /* synthetic */ String access$000(ImageLoader$ImageLoaderTask imageLoader$ImageLoaderTask) {
        return imageLoader$ImageLoaderTask.imageUri;
    }

    @Override // android.os.AsyncTask
    public /* bridge */ /* synthetic */ BitmapDrawable doInBackground(Void[] voidArr) {
        return doInBackground2(voidArr);
    }

    @Override // android.os.AsyncTask
    public /* bridge */ /* synthetic */ void onCancelled(BitmapDrawable bitmapDrawable) {
        onCancelled2(bitmapDrawable);
    }

    @Override // android.os.AsyncTask
    public /* bridge */ /* synthetic */ void onPostExecute(BitmapDrawable bitmapDrawable) {
        onPostExecute2(bitmapDrawable);
    }

    public ImageLoader$ImageLoaderTask(ImageLoader imageLoader, String str, int i, int i2, ImageView imageView) {
        this.this$0 = imageLoader;
        this.imageUri = str;
        this.imageWidth = i;
        this.imageHeight = i2;
        this.imageViewReference = new WeakReference<>(imageView);
    }

    /* JADX INFO: renamed from: doInBackground, reason: avoid collision after fix types in other method */
    public BitmapDrawable doInBackground2(Void... voidArr) {
        Thread.currentThread().setName("AppsUi#AsyncTask");
        BitmapDrawable bitmapDrawable = null;
        Bitmap bitmap = (isCancelled() || getAttachedImageView() == null) ? null : ResourceUtil.getBitmap(ImageLoader.access$100(this.this$0), this.imageUri, this.imageWidth, this.imageHeight);
        if (bitmap != null) {
            bitmapDrawable = new BitmapDrawable(ImageLoader.access$200(this.this$0), bitmap);
            if (ImageLoader.access$300(this.this$0) != null) {
                ImageLoader.access$300(this.this$0).put(this.imageUri, bitmapDrawable);
            }
        }
        return bitmapDrawable;
    }

    /* JADX INFO: renamed from: onPostExecute, reason: avoid collision after fix types in other method */
    public void onPostExecute2(BitmapDrawable bitmapDrawable) {
        if (isCancelled()) {
            bitmapDrawable = null;
        }
        ImageView attachedImageView = getAttachedImageView();
        if (bitmapDrawable == null || attachedImageView == null) {
            return;
        }
        ImageLoader.access$400(this.this$0, attachedImageView, bitmapDrawable);
    }

    /* JADX INFO: renamed from: onCancelled, reason: avoid collision after fix types in other method */
    public void onCancelled2(BitmapDrawable bitmapDrawable) {
        super.onCancelled(bitmapDrawable);
    }

    private ImageView getAttachedImageView() {
        ImageView imageView = this.imageViewReference.get();
        if (this == ImageLoader.access$500(imageView)) {
            return imageView;
        }
        return null;
    }
}
