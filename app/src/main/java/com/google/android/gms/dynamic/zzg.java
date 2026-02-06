package com.google.android.gms.dynamic;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.internal.zzx;

public abstract class zzg<T> {
    private final String zzapA;
    private T zzapB;

    protected zzg(String str) {
        this.zzapA = str;
    }

    protected final T zzas(Context context) throws zzg$zza {
        if (this.zzapB == null) {
            zzx.zzw(context);
            Context remoteContext = GooglePlayServicesUtil.getRemoteContext(context);
            if (remoteContext == null) {
                throw new zzg$zza("Could not get remote context.");
            }
            try {
                this.zzapB = zzd((IBinder) remoteContext.getClassLoader().loadClass(this.zzapA).newInstance());
            } catch (ClassNotFoundException e) {
                throw new zzg$zza("Could not load creator class.", e);
            } catch (IllegalAccessException e2) {
                throw new zzg$zza("Could not access creator.", e2);
            } catch (InstantiationException e3) {
                throw new zzg$zza("Could not instantiate creator.", e3);
            }
        }
        return this.zzapB;
    }

    protected abstract T zzd(IBinder iBinder);
}
