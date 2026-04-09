.class public Lcom/google/android/gms/playlog/internal/zzd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# instance fields
.field private zzaRE:Lcom/google/android/gms/playlog/internal/zzf;

.field private final zzaRP:Lcom/google/android/gms/internal/zzqd$zza;

.field private zzaRQ:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzqd$zza;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzaRP:Lcom/google/android/gms/internal/zzqd$zza;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzaRE:Lcom/google/android/gms/playlog/internal/zzf;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzaRQ:Z

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzaRE:Lcom/google/android/gms/playlog/internal/zzf;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/playlog/internal/zzf;->zzap(Z)V

    iget-boolean p1, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzaRQ:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzaRP:Lcom/google/android/gms/internal/zzqd$zza;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzaRP:Lcom/google/android/gms/internal/zzqd$zza;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzqd$zza;->zzBr()V

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzaRQ:Z

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzaRE:Lcom/google/android/gms/playlog/internal/zzf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/playlog/internal/zzf;->zzap(Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzaRQ:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzaRP:Lcom/google/android/gms/internal/zzqd$zza;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzaRP:Lcom/google/android/gms/internal/zzqd$zza;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getResolution()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzqd$zza;->zzf(Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzaRP:Lcom/google/android/gms/internal/zzqd$zza;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzqd$zza;->zzBs()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzaRQ:Z

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzaRE:Lcom/google/android/gms/playlog/internal/zzf;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/playlog/internal/zzf;->zzap(Z)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/playlog/internal/zzf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzaRE:Lcom/google/android/gms/playlog/internal/zzf;

    return-void
.end method

.method public zzao(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzaRQ:Z

    return-void
.end method
