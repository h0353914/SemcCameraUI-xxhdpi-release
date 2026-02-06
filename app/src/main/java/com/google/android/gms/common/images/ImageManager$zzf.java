package com.google.android.gms.common.images;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.SystemClock;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;

final class ImageManager$zzf implements Runnable {
    private final Bitmap mBitmap;
    private final Uri mUri;
    final /* synthetic */ ImageManager zzadR;
    private boolean zzadU;
    private final CountDownLatch zzoS;

    public ImageManager$zzf(ImageManager imageManager, Uri uri, Bitmap bitmap, boolean z, CountDownLatch countDownLatch) {
        this.zzadR = imageManager;
        this.mUri = uri;
        this.mBitmap = bitmap;
        this.zzadU = z;
        this.zzoS = countDownLatch;
    }

    private void zza(ImageManager$ImageReceiver imageManager$ImageReceiver, boolean z) {
        ArrayList arrayListZza = ImageManager$ImageReceiver.zza(imageManager$ImageReceiver);
        int size = arrayListZza.size();
        for (int i = 0; i < size; i++) {
            zza zzaVar = (zza) arrayListZza.get(i);
            if (z) {
                zzaVar.zza(ImageManager.zzb(this.zzadR), this.mBitmap, false);
            } else {
                ImageManager.zzd(this.zzadR).put(this.mUri, Long.valueOf(SystemClock.elapsedRealtime()));
                zzaVar.zza(ImageManager.zzb(this.zzadR), ImageManager.zzc(this.zzadR), false);
            }
            if (!(zzaVar instanceof zza$zzc)) {
                ImageManager.zza(this.zzadR).remove(zzaVar);
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        com.google.android.gms.common.internal.zzb.zzci("OnBitmapLoadedRunnable must be executed in the main thread");
        boolean z = this.mBitmap != null;
        if (ImageManager.zzh(this.zzadR) != null) {
            if (this.zzadU) {
                ImageManager.zzh(this.zzadR).evictAll();
                System.gc();
                this.zzadU = false;
                ImageManager.zzg(this.zzadR).post(this);
                return;
            }
            if (z) {
                ImageManager.zzh(this.zzadR).put(new zza$zza(this.mUri), this.mBitmap);
            }
        }
        ImageManager$ImageReceiver imageManager$ImageReceiver = (ImageManager$ImageReceiver) ImageManager.zze(this.zzadR).remove(this.mUri);
        if (imageManager$ImageReceiver != null) {
            zza(imageManager$ImageReceiver, z);
        }
        this.zzoS.countDown();
        synchronized (ImageManager.zzoC()) {
            ImageManager.zzoD().remove(this.mUri);
        }
    }
}
