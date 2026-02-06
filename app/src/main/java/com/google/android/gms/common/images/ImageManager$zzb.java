package com.google.android.gms.common.images;

import android.app.ActivityManager;
import android.content.Context;
import android.graphics.Bitmap;
import com.google.android.gms.internal.zzmg;
import com.google.android.gms.internal.zzmx;

final class ImageManager$zzb extends zzmg<zza$zza, Bitmap> {
    public ImageManager$zzb(Context context) {
        super(zzaj(context));
    }

    private static int zzaj(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        return (int) (0.33f * 1048576 * ((((context.getApplicationInfo().flags & 1048576) != 0) && zzmx.zzqu()) ? ImageManager$zza.zza(activityManager) : activityManager.getMemoryClass()));
    }

    @Override // com.google.android.gms.internal.zzmg
    protected /* synthetic */ void entryRemoved(boolean z, zza$zza zza_zza, Bitmap bitmap, Bitmap bitmap2) {
        zza(z, zza_zza, bitmap, bitmap2);
    }

    @Override // com.google.android.gms.internal.zzmg
    protected /* synthetic */ int sizeOf(zza$zza zza_zza, Bitmap bitmap) {
        return zza(zza_zza, bitmap);
    }

    protected int zza(zza$zza zza_zza, Bitmap bitmap) {
        return bitmap.getHeight() * bitmap.getRowBytes();
    }

    protected void zza(boolean z, zza$zza zza_zza, Bitmap bitmap, Bitmap bitmap2) {
        super.entryRemoved(z, zza_zza, bitmap, bitmap2);
    }
}
