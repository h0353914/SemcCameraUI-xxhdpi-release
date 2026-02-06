package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.HashSet;
import java.util.Set;

final class zzm$zzb {
    private IBinder zzaeJ;
    private ComponentName zzagb;
    private boolean zzage;
    private final zzm$zza zzagf;
    final /* synthetic */ zzm zzagg;
    private final zzm$zzb$zza zzagc = new zzm$zzb$zza(this);
    private final Set<ServiceConnection> zzagd = new HashSet();
    private int mState = 2;

    public zzm$zzb(zzm zzmVar, zzm$zza zzm_zza) {
        this.zzagg = zzmVar;
        this.zzagf = zzm_zza;
    }

    static /* synthetic */ int zza(zzm$zzb zzm_zzb, int i) {
        zzm_zzb.mState = i;
        return i;
    }

    static /* synthetic */ ComponentName zza(zzm$zzb zzm_zzb, ComponentName componentName) {
        zzm_zzb.zzagb = componentName;
        return componentName;
    }

    static /* synthetic */ IBinder zza(zzm$zzb zzm_zzb, IBinder iBinder) {
        zzm_zzb.zzaeJ = iBinder;
        return iBinder;
    }

    static /* synthetic */ zzm$zza zza(zzm$zzb zzm_zzb) {
        return zzm_zzb.zzagf;
    }

    static /* synthetic */ Set zzb(zzm$zzb zzm_zzb) {
        return zzm_zzb.zzagd;
    }

    public IBinder getBinder() {
        return this.zzaeJ;
    }

    public ComponentName getComponentName() {
        return this.zzagb;
    }

    public int getState() {
        return this.mState;
    }

    public boolean isBound() {
        return this.zzage;
    }

    public void zza(ServiceConnection serviceConnection, String str) {
        zzm.zzc(this.zzagg).zza(zzm.zzb(this.zzagg), serviceConnection, str, this.zzagf.zzpm());
        this.zzagd.add(serviceConnection);
    }

    public boolean zza(ServiceConnection serviceConnection) {
        return this.zzagd.contains(serviceConnection);
    }

    public void zzb(ServiceConnection serviceConnection, String str) {
        zzm.zzc(this.zzagg).zzb(zzm.zzb(this.zzagg), serviceConnection);
        this.zzagd.remove(serviceConnection);
    }

    public void zzcm(String str) {
        this.mState = 3;
        this.zzage = zzm.zzc(this.zzagg).zza(zzm.zzb(this.zzagg), str, this.zzagf.zzpm(), this.zzagc, 129);
        if (this.zzage) {
            return;
        }
        this.mState = 2;
        try {
            zzm.zzc(this.zzagg).zza(zzm.zzb(this.zzagg), this.zzagc);
        } catch (IllegalArgumentException unused) {
        }
    }

    public void zzcn(String str) {
        zzm.zzc(this.zzagg).zza(zzm.zzb(this.zzagg), this.zzagc);
        this.zzage = false;
        this.mState = 2;
    }

    public boolean zzpn() {
        return this.zzagd.isEmpty();
    }
}
