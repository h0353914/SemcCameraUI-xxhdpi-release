package com.google.android.gms.auth.api;

import com.google.android.gms.auth.api.credentials.CredentialsApi;
import com.google.android.gms.auth.api.credentials.internal.zzc;
import com.google.android.gms.auth.api.credentials.internal.zze;
import com.google.android.gms.auth.api.proxy.ProxyApi;
import com.google.android.gms.auth.api.signin.GoogleSignInConfig;
import com.google.android.gms.auth.api.signin.internal.zza;
import com.google.android.gms.auth.api.signin.internal.zzb;
import com.google.android.gms.auth.api.signin.internal.zzg;
import com.google.android.gms.auth.api.signin.zzd;
import com.google.android.gms.auth.api.signin.zzf;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api$ApiOptions$NoOptions;
import com.google.android.gms.common.api.Api$zza;
import com.google.android.gms.common.api.Api$zzc;
import com.google.android.gms.internal.zzjz;
import com.google.android.gms.internal.zzka;
import com.google.android.gms.internal.zzkb;
import com.google.android.gms.internal.zzke;
import com.google.android.gms.internal.zzkf;
import com.google.android.gms.internal.zzki;
import com.google.android.gms.internal.zzkm;

/* JADX INFO: loaded from: classes.dex */
public final class Auth {
    public static final Api$zzc<zzki> zzRE = new Api$zzc<>();
    public static final Api$zzc<zze> zzRF = new Api$zzc<>();
    public static final Api$zzc<zzkb> zzRG = new Api$zzc<>();
    public static final Api$zzc<zzg> zzRH = new Api$zzc<>();
    public static final Api$zzc<zzb> zzRI = new Api$zzc<>();
    public static final Api$zzc<zzkf> zzRJ = new Api$zzc<>();
    private static final Api$zza<zzki, Auth$zza> zzRK = new Auth$1();
    private static final Api$zza<zze, Auth$AuthCredentialsOptions> zzRL = new Auth$2();
    private static final Api$zza<zzkb, Api$ApiOptions$NoOptions> zzRM = new Auth$3();
    private static final Api$zza<zzkf, Api$ApiOptions$NoOptions> zzRN = new Auth$4();
    private static final Api$zza<zzg, com.google.android.gms.auth.api.signin.zzg> zzRO = new Auth$5();
    private static final Api$zza<zzb, GoogleSignInConfig> zzRP = new Auth$6();
    public static final Api<Auth$zza> PROXY_API = new Api<>("Auth.PROXY_API", zzRK, zzRE);
    public static final Api<Auth$AuthCredentialsOptions> CREDENTIALS_API = new Api<>("Auth.CREDENTIALS_API", zzRL, zzRF);
    public static final Api<com.google.android.gms.auth.api.signin.zzg> zzRQ = new Api<>("Auth.SIGN_IN_API", zzRO, zzRH);
    public static final Api<GoogleSignInConfig> zzRR = new Api<>("Auth.GOOGLE_SIGN_IN_API", zzRP, zzRI);
    public static final Api<Api$ApiOptions$NoOptions> zzRS = new Api<>("Auth.ACCOUNT_STATUS_API", zzRM, zzRG);
    public static final Api<Api$ApiOptions$NoOptions> zzRT = new Api<>("Auth.CONSENT_API", zzRN, zzRJ);
    public static final ProxyApi ProxyApi = new zzkm();
    public static final CredentialsApi CredentialsApi = new zzc();
    public static final zzjz zzRU = new zzka();
    public static final zzf zzRV = new com.google.android.gms.auth.api.signin.internal.zzf();
    public static final zzd zzRW = new zza();
    public static final com.google.android.gms.auth.api.consent.zza zzRX = new zzke();

    private Auth() {
    }
}
