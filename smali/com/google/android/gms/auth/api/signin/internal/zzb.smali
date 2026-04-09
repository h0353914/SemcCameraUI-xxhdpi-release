.class public Lcom/google/android/gms/auth/api/signin/internal/zzb;
.super Lcom/google/android/gms/common/internal/zzj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzj<",
        "Lcom/google/android/gms/auth/api/signin/internal/zze;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzTn:Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 7

    const/16 v3, 0x5b

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzj;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    sget-object p4, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;->zzTh:Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;

    :goto_0
    iput-object p4, p0, Lcom/google/android/gms/auth/api/signin/internal/zzb;->zzTn:Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;

    return-void
.end method


# virtual methods
.method protected synthetic zzW(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/api/signin/internal/zzb;->zzax(Landroid/os/IBinder;)Lcom/google/android/gms/auth/api/signin/internal/zze;

    move-result-object p0

    return-object p0
.end method

.method protected zzax(Landroid/os/IBinder;)Lcom/google/android/gms/auth/api/signin/internal/zze;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/internal/zze$zza;->zzaz(Landroid/os/IBinder;)Lcom/google/android/gms/auth/api/signin/internal/zze;

    move-result-object p0

    return-object p0
.end method

.method protected zzfK()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.gms.auth.api.signin.service.START"

    return-object p0
.end method

.method protected zzfL()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.gms.auth.api.signin.internal.ISignInService"

    return-object p0
.end method
