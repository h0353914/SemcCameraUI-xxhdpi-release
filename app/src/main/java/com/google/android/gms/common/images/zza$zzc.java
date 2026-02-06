package com.google.android.gms.common.images;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.google.android.gms.common.internal.zzw;
import java.lang.ref.WeakReference;

public final class zza$zzc extends zza {
    private WeakReference<ImageManager$OnImageLoadedListener> zzaef;

    public zza$zzc(ImageManager$OnImageLoadedListener imageManager$OnImageLoadedListener, Uri uri) {
        super(uri, 0);
        com.google.android.gms.common.internal.zzb.zzs(imageManager$OnImageLoadedListener);
        this.zzaef = new WeakReference<>(imageManager$OnImageLoadedListener);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof zza$zzc)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        zza$zzc zza_zzc = (zza$zzc) obj;
        ImageManager$OnImageLoadedListener imageManager$OnImageLoadedListener = this.zzaef.get();
        ImageManager$OnImageLoadedListener imageManager$OnImageLoadedListener2 = zza_zzc.zzaef.get();
        return imageManager$OnImageLoadedListener2 != null && imageManager$OnImageLoadedListener != null && zzw.equal(imageManager$OnImageLoadedListener2, imageManager$OnImageLoadedListener) && zzw.equal(zza_zzc.zzadV, this.zzadV);
    }

    public int hashCode() {
        return zzw.hashCode(this.zzadV);
    }

    @Override // com.google.android.gms.common.images.zza
    protected void zza(Drawable drawable, boolean z, boolean z2, boolean z3) {
        ImageManager$OnImageLoadedListener imageManager$OnImageLoadedListener;
        if (z2 || (imageManager$OnImageLoadedListener = this.zzaef.get()) == null) {
            return;
        }
        imageManager$OnImageLoadedListener.onImageLoaded(this.zzadV.uri, drawable, z3);
    }
}
