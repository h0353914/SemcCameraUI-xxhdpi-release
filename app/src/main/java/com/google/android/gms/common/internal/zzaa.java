package com.google.android.gms.common.internal;

import android.content.Context;
import android.os.IBinder;
import android.view.View;
import com.google.android.gms.dynamic.zzg$zza;

/* JADX INFO: loaded from: classes.dex */
public final class zzaa extends com.google.android.gms.dynamic.zzg<zzu> {
    private static final zzaa zzags = new zzaa();

    private zzaa() {
        super("com.google.android.gms.common.ui.SignInButtonCreatorImpl");
    }

    public static View zzb(Context context, int i, int i2) throws zzg$zza {
        return zzags.zzc(context, i, i2);
    }

    private View zzc(Context context, int i, int i2) throws zzg$zza {
        try {
            return (View) com.google.android.gms.dynamic.zze.zzp(zzas(context).zza(com.google.android.gms.dynamic.zze.zzy(context), i, i2));
        } catch (Exception e) {
            throw new zzg$zza("Could not get button with size " + i + " and color " + i2, e);
        }
    }

    public zzu zzaN(IBinder iBinder) {
        return zzu$zza.zzaM(iBinder);
    }

    @Override // com.google.android.gms.dynamic.zzg
    public /* synthetic */ zzu zzd(IBinder iBinder) {
        return zzaN(iBinder);
    }
}
