package com.google.android.gms.common.images;

import android.graphics.Bitmap;
import android.os.SystemClock;

final class ImageManager$zzd implements Runnable {
    final /* synthetic */ ImageManager zzadR;
    private final zza zzadT;

    public ImageManager$zzd(ImageManager imageManager, zza zzaVar) {
        this.zzadR = imageManager;
        this.zzadT = zzaVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        com.google.android.gms.common.internal.zzb.zzci("LoadImageRunnable must be executed on the main thread");
        ImageManager$ImageReceiver imageManager$ImageReceiver = (ImageManager$ImageReceiver) ImageManager.zza(this.zzadR).get(this.zzadT);
        if (imageManager$ImageReceiver != null) {
            ImageManager.zza(this.zzadR).remove(this.zzadT);
            imageManager$ImageReceiver.zzc(this.zzadT);
        }
        zza$zza zza_zza = this.zzadT.zzadV;
        if (zza_zza.uri == null) {
            this.zzadT.zza(ImageManager.zzb(this.zzadR), ImageManager.zzc(this.zzadR), true);
            return;
        }
        Bitmap bitmapZza = ImageManager.zza(this.zzadR, zza_zza);
        if (bitmapZza != null) {
            this.zzadT.zza(ImageManager.zzb(this.zzadR), bitmapZza, true);
            return;
        }
        Long l = (Long) ImageManager.zzd(this.zzadR).get(zza_zza.uri);
        if (l != null) {
            if (SystemClock.elapsedRealtime() - l.longValue() < 3600000) {
                this.zzadT.zza(ImageManager.zzb(this.zzadR), ImageManager.zzc(this.zzadR), true);
                return;
            }
            ImageManager.zzd(this.zzadR).remove(zza_zza.uri);
        }
        this.zzadT.zza(ImageManager.zzb(this.zzadR), ImageManager.zzc(this.zzadR));
        ImageManager$ImageReceiver imageManager$ImageReceiver2 = (ImageManager$ImageReceiver) ImageManager.zze(this.zzadR).get(zza_zza.uri);
        if (imageManager$ImageReceiver2 == null) {
            imageManager$ImageReceiver2 = new ImageManager$ImageReceiver(this.zzadR, zza_zza.uri);
            ImageManager.zze(this.zzadR).put(zza_zza.uri, imageManager$ImageReceiver2);
        }
        imageManager$ImageReceiver2.zzb(this.zzadT);
        if (!(this.zzadT instanceof zza$zzc)) {
            ImageManager.zza(this.zzadR).put(this.zzadT, imageManager$ImageReceiver2);
        }
        synchronized (ImageManager.zzoC()) {
            if (!ImageManager.zzoD().contains(zza_zza.uri)) {
                ImageManager.zzoD().add(zza_zza.uri);
                imageManager$ImageReceiver2.zzoE();
            }
        }
    }
}
