package com.google.android.gms.common.api;

import com.google.android.gms.common.api.Api$ApiOptions;
import com.google.android.gms.common.internal.zzx;

/* JADX INFO: loaded from: classes.dex */
public final class Api<O extends Api$ApiOptions> {
    private final String mName;
    private final Api$zzc<?> zzZM;
    private final Api$zza<?, O> zzaav;
    private final Api$zze<?, O> zzaaw;
    private final Api$zzf<?> zzaax;

    /* JADX WARN: Multi-variable type inference failed */
    public <C extends Api$zzb> Api(String str, Api$zza<C, O> api$zza, Api$zzc<C> api$zzc) {
        zzx.zzb(api$zza, "Cannot construct an Api with a null ClientBuilder");
        zzx.zzb(api$zzc, "Cannot construct an Api with a null ClientKey");
        this.mName = str;
        this.zzaav = api$zza;
        this.zzaaw = null;
        this.zzZM = api$zzc;
        this.zzaax = null;
    }

    public String getName() {
        return this.mName;
    }

    public Api$zza<?, O> zznv() {
        zzx.zza(this.zzaav != null, "This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder");
        return this.zzaav;
    }

    public Api$zze<?, O> zznw() {
        zzx.zza(this.zzaaw != null, "This API was constructed with a ClientBuilder. Use getClientBuilder");
        return this.zzaaw;
    }

    public Api$zzc<?> zznx() {
        zzx.zza(this.zzZM != null, "This API was constructed with a SimpleClientKey. Use getSimpleClientKey");
        return this.zzZM;
    }

    public boolean zzny() {
        return this.zzaax != null;
    }
}
