package com.google.android.gms.internal;

import com.google.android.gms.common.api.Api$ApiOptions$Optional;
import com.google.android.gms.common.api.GoogleApiClient$ServerAuthCodeCallbacks;

/* JADX INFO: loaded from: classes.dex */
public final class zzqx implements Api$ApiOptions$Optional {
    public static final zzqx zzaUZ = new zzqx$zza().zzCi();
    private final boolean zzTi;
    private final boolean zzTk;
    private final String zzTl;
    private final boolean zzaVa;
    private final GoogleApiClient$ServerAuthCodeCallbacks zzaVb;
    private final boolean zzaVc;

    private zzqx(boolean z, boolean z2, String str, GoogleApiClient$ServerAuthCodeCallbacks googleApiClient$ServerAuthCodeCallbacks, boolean z3, boolean z4) {
        this.zzaVa = z;
        this.zzTi = z2;
        this.zzTl = str;
        this.zzaVb = googleApiClient$ServerAuthCodeCallbacks;
        this.zzaVc = z3;
        this.zzTk = z4;
    }

    /* synthetic */ zzqx(boolean z, boolean z2, String str, GoogleApiClient$ServerAuthCodeCallbacks googleApiClient$ServerAuthCodeCallbacks, boolean z3, boolean z4, zzqx$1 zzqx_1) {
        this(z, z2, str, googleApiClient$ServerAuthCodeCallbacks, z3, z4);
    }

    public boolean zzCf() {
        return this.zzaVa;
    }

    public GoogleApiClient$ServerAuthCodeCallbacks zzCg() {
        return this.zzaVb;
    }

    public boolean zzCh() {
        return this.zzaVc;
    }

    public boolean zzlY() {
        return this.zzTi;
    }

    public boolean zzma() {
        return this.zzTk;
    }

    public String zzmb() {
        return this.zzTl;
    }
}
