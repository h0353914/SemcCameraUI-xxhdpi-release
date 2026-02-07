package com.google.android.gms.common.images;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.widget.ImageView;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.internal.zzls;
import com.google.android.gms.internal.zzlu;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public final class zza$zzb extends zza {
    private WeakReference<ImageView> zzaee;

    public zza$zzb(ImageView imageView, int i) {
        super(null, i);
        com.google.android.gms.common.internal.zzb.zzs(imageView);
        this.zzaee = new WeakReference<>(imageView);
    }

    public zza$zzb(ImageView imageView, Uri uri) {
        super(uri, 0);
        com.google.android.gms.common.internal.zzb.zzs(imageView);
        this.zzaee = new WeakReference<>(imageView);
    }

    private void zza(ImageView imageView, Drawable drawable, boolean z, boolean z2, boolean z3) {
        boolean z4 = (z2 || z3) ? false : true;
        if (z4 && (imageView instanceof zzlu)) {
            int iZzoH = ((zzlu) imageView).zzoH();
            if (this.zzadX != 0 && iZzoH == this.zzadX) {
                return;
            }
        }
        boolean zZzb = zzb(z, z2);
        if (this.zzadY && drawable != null) {
            drawable = drawable.getConstantState().newDrawable();
        }
        if (zZzb) {
            drawable = zza(imageView.getDrawable(), drawable);
        }
        imageView.setImageDrawable(drawable);
        if (imageView instanceof zzlu) {
            zzlu zzluVar = (zzlu) imageView;
            zzluVar.zzj(z3 ? this.zzadV.uri : null);
            zzluVar.zzbA(z4 ? this.zzadX : 0);
        }
        if (zZzb) {
            ((zzls) drawable).startTransition(250);
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof zza$zzb)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        ImageView imageView = this.zzaee.get();
        ImageView imageView2 = ((zza$zzb) obj).zzaee.get();
        return (imageView2 == null || imageView == null || !zzw.equal(imageView2, imageView)) ? false : true;
    }

    public int hashCode() {
        return 0;
    }

    @Override // com.google.android.gms.common.images.zza
    protected void zza(Drawable drawable, boolean z, boolean z2, boolean z3) {
        ImageView imageView = this.zzaee.get();
        if (imageView != null) {
            zza(imageView, drawable, z, z2, z3);
        }
    }
}
