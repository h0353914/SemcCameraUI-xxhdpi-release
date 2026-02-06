package com.google.android.gms.common.images;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.IOException;
import java.util.concurrent.CountDownLatch;

final class ImageManager$zzc implements Runnable {
    private final Uri mUri;
    final /* synthetic */ ImageManager zzadR;
    private final ParcelFileDescriptor zzadS;

    public ImageManager$zzc(ImageManager imageManager, Uri uri, ParcelFileDescriptor parcelFileDescriptor) {
        this.zzadR = imageManager;
        this.mUri = uri;
        this.zzadS = parcelFileDescriptor;
    }

    @Override // java.lang.Runnable
    public void run() {
        com.google.android.gms.common.internal.zzb.zzcj("LoadBitmapFromDiskRunnable can't be executed in the main thread");
        boolean z = false;
        Bitmap bitmapDecodeFileDescriptor = null;
        if (this.zzadS != null) {
            try {
                bitmapDecodeFileDescriptor = BitmapFactory.decodeFileDescriptor(this.zzadS.getFileDescriptor());
            } catch (OutOfMemoryError e) {
                Log.e("ImageManager", "OOM while loading bitmap for uri: " + this.mUri, e);
                z = true;
            }
            try {
                this.zzadS.close();
            } catch (IOException e2) {
                Log.e("ImageManager", "closed failed", e2);
            }
        }
        CountDownLatch countDownLatch = new CountDownLatch(1);
        ImageManager.zzg(this.zzadR).post(new ImageManager$zzf(this.zzadR, this.mUri, bitmapDecodeFileDescriptor, z, countDownLatch));
        try {
            countDownLatch.await();
        } catch (InterruptedException unused) {
            Log.w("ImageManager", "Latch interrupted while posting " + this.mUri);
        }
    }
}
