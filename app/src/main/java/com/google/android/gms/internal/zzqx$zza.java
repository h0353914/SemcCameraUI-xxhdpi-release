package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient$ServerAuthCodeCallbacks;
import com.google.android.gms.common.internal.zzx;

public final class zzqx$zza {
    private String zzaSe;
    private boolean zzaVd;
    private boolean zzaVe;
    private GoogleApiClient$ServerAuthCodeCallbacks zzaVf;
    private boolean zzaVg;
    private boolean zzaVh;

    private String zzet(String str) {
        zzx.zzw(str);
        zzx.zzb(this.zzaSe == null || this.zzaSe.equals(str), "two different server client ids provided");
        return str;
    }

    public zzqx zzCi() {
        return new zzqx(this.zzaVd, this.zzaVe, this.zzaSe, this.zzaVf, this.zzaVg, this.zzaVh, null);
    }

    public zzqx$zza zza(String str, GoogleApiClient$ServerAuthCodeCallbacks googleApiClient$ServerAuthCodeCallbacks) {
        this.zzaVd = true;
        this.zzaVe = true;
        this.zzaSe = zzet(str);
        this.zzaVf = (GoogleApiClient$ServerAuthCodeCallbacks) zzx.zzw(googleApiClient$ServerAuthCodeCallbacks);
        return this;
    }
}
