package com.google.android.gms.internal;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api$ApiOptions$NoOptions;
import com.google.android.gms.common.api.Api$zza;
import com.google.android.gms.common.api.Api$zzc;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.signin.internal.zzh;
import com.google.android.gms.signin.internal.zzi;

/* JADX INFO: loaded from: classes.dex */
public final class zzqu {
    public static final Api$zzc<zzi> zzRk = new Api$zzc<>();
    public static final Api$zzc<zzi> zzapF = new Api$zzc<>();
    public static final Api$zza<zzi, zzqx> zzRl = new zzqu$1();
    static final Api$zza<zzi, Api$ApiOptions$NoOptions> zzaUX = new zzqu$2();
    public static final Scope zzTe = new Scope("profile");
    public static final Scope zzTf = new Scope("email");
    public static final Api<zzqx> API = new Api<>("SignIn.API", zzRl, zzRk);
    public static final Api<Api$ApiOptions$NoOptions> zzaiH = new Api<>("SignIn.INTERNAL_API", zzaUX, zzapF);
    public static final zzqv zzaUY = new zzh();
}
