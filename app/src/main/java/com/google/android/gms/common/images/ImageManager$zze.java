package com.google.android.gms.common.images;

import android.content.ComponentCallbacks2;
import android.content.res.Configuration;

/* JADX INFO: loaded from: classes.dex */
final class ImageManager$zze implements ComponentCallbacks2 {
    private final ImageManager$zzb zzadL;

    public ImageManager$zze(ImageManager$zzb imageManager$zzb) {
        this.zzadL = imageManager$zzb;
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        this.zzadL.evictAll();
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        if (i >= 60) {
            this.zzadL.evictAll();
        } else if (i >= 20) {
            this.zzadL.trimToSize(this.zzadL.size() / 2);
        }
    }
}
