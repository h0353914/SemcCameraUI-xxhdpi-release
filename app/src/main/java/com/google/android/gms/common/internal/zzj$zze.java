package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

/* JADX INFO: loaded from: classes.dex */
public final class zzj$zze implements ServiceConnection {
    final /* synthetic */ zzj zzafK;
    private final int zzafN;

    public zzj$zze(zzj zzjVar, int i) {
        this.zzafK = zzjVar;
        this.zzafN = i;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        zzx.zzb(iBinder, "Expecting a valid IBinder");
        zzj.zza(this.zzafK, zzs$zza.zzaK(iBinder));
        this.zzafK.zzbF(this.zzafN);
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        this.zzafK.mHandler.sendMessage(this.zzafK.mHandler.obtainMessage(4, this.zzafN, 1));
    }
}
