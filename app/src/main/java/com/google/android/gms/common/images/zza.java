package com.google.android.gms.common.images;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.google.android.gms.internal.zzls;
import com.google.android.gms.internal.zzlt;
import com.google.android.gms.internal.zzlv;
import com.google.android.gms.internal.zzlv$zza;

public abstract class zza {
    final zza$zza zzadV;
    protected int zzadX;
    protected ImageManager$OnImageLoadedListener zzadZ;
    protected int zzaed;
    protected int zzadW = 0;
    protected boolean zzadY = false;
    private boolean zzaea = true;
    private boolean zzaeb = false;
    private boolean zzaec = true;

    public zza(Uri uri, int i) {
        this.zzadX = 0;
        this.zzadV = new zza$zza(uri);
        this.zzadX = i;
    }

    private Drawable zza(Context context, zzlv zzlvVar, int i) {
        Resources resources = context.getResources();
        if (this.zzaed <= 0) {
            return resources.getDrawable(i);
        }
        zzlv$zza zzlv_zza = new zzlv$zza(i, this.zzaed);
        Drawable drawableZza = zzlvVar.get(zzlv_zza);
        if (drawableZza == null) {
            Drawable drawable = resources.getDrawable(i);
            drawableZza = (this.zzaed & 1) != 0 ? zza(resources, drawable) : drawable;
            zzlvVar.put(zzlv_zza, drawableZza);
        }
        return drawableZza;
    }

    protected Drawable zza(Resources resources, Drawable drawable) {
        return zzlt.zza(resources, drawable);
    }

    protected zzls zza(Drawable drawable, Drawable drawable2) {
        if (drawable == null) {
            drawable = null;
        } else if (drawable instanceof zzls) {
            drawable = ((zzls) drawable).zzoF();
        }
        return new zzls(drawable, drawable2);
    }

    void zza(Context context, Bitmap bitmap, boolean z) {
        com.google.android.gms.common.internal.zzb.zzs(bitmap);
        if ((this.zzaed & 1) != 0) {
            bitmap = zzlt.zza(bitmap);
        }
        BitmapDrawable bitmapDrawable = new BitmapDrawable(context.getResources(), bitmap);
        if (this.zzadZ != null) {
            this.zzadZ.onImageLoaded(this.zzadV.uri, bitmapDrawable, true);
        }
        zza(bitmapDrawable, z, false, true);
    }

    void zza(Context context, zzlv zzlvVar) {
        if (this.zzaec) {
            zza(this.zzadW != 0 ? zza(context, zzlvVar, this.zzadW) : null, false, true, false);
        }
    }

    void zza(Context context, zzlv zzlvVar, boolean z) {
        Drawable drawableZza = this.zzadX != 0 ? zza(context, zzlvVar, this.zzadX) : null;
        if (this.zzadZ != null) {
            this.zzadZ.onImageLoaded(this.zzadV.uri, drawableZza, false);
        }
        zza(drawableZza, z, false, false);
    }

    protected abstract void zza(Drawable drawable, boolean z, boolean z2, boolean z3);

    protected boolean zzb(boolean z, boolean z2) {
        if (!this.zzaea || z2) {
            return false;
        }
        return !z || this.zzaeb;
    }

    public void zzby(int i) {
        this.zzadX = i;
    }
}
