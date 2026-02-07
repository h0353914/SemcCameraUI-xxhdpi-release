package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class zzm$zzb$zza implements ServiceConnection {
    final /* synthetic */ zzm$zzb zzagh;

    public zzm$zzb$zza(zzm$zzb zzm_zzb) {
        this.zzagh = zzm_zzb;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (zzm.zza(this.zzagh.zzagg)) {
            zzm$zzb.zza(this.zzagh, iBinder);
            zzm$zzb.zza(this.zzagh, componentName);
            Iterator it = zzm$zzb.zzb(this.zzagh).iterator();
            while (it.hasNext()) {
                ((ServiceConnection) it.next()).onServiceConnected(componentName, iBinder);
            }
            zzm$zzb.zza(this.zzagh, 1);
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        synchronized (zzm.zza(this.zzagh.zzagg)) {
            zzm$zzb.zza(this.zzagh, (IBinder) null);
            zzm$zzb.zza(this.zzagh, componentName);
            Iterator it = zzm$zzb.zzb(this.zzagh).iterator();
            while (it.hasNext()) {
                ((ServiceConnection) it.next()).onServiceDisconnected(componentName);
            }
            zzm$zzb.zza(this.zzagh, 2);
        }
    }
}
