.class public final Lcom/google/android/gms/common/internal/zzj$zzi;
.super Lcom/google/android/gms/common/internal/zzj$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/zzj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "zzi"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzj<",
        "TT;>.zza;"
    }
.end annotation


# instance fields
.field final synthetic zzafK:Lcom/google/android/gms/common/internal/zzj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/zzj;ILandroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzj$zzi;->zzafK:Lcom/google/android/gms/common/internal/zzj;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/zzj$zza;-><init>(Lcom/google/android/gms/common/internal/zzj;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected zzh(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zzi;->zzafK:Lcom/google/android/gms/common/internal/zzj;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzj;->zza(Lcom/google/android/gms/common/internal/zzj;)Lcom/google/android/gms/common/api/GoogleApiClient$zza;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$zza;->zzb(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzj$zzi;->zzafK:Lcom/google/android/gms/common/internal/zzj;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/zzj;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method protected zzpf()Z
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzj$zzi;->zzafK:Lcom/google/android/gms/common/internal/zzj;

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzj;->zza(Lcom/google/android/gms/common/internal/zzj;)Lcom/google/android/gms/common/api/GoogleApiClient$zza;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->zzZY:Lcom/google/android/gms/common/ConnectionResult;

    invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$zza;->zzb(Lcom/google/android/gms/common/ConnectionResult;)V

    const/4 p0, 0x1

    return p0
.end method
