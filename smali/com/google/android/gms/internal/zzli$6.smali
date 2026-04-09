.class Lcom/google/android/gms/internal/zzli$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzli;->clearDefaultAccountAndReconnect()Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzacr:Lcom/google/android/gms/internal/zzli;

.field final synthetic zzacv:Lcom/google/android/gms/internal/zzlo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzli;Lcom/google/android/gms/internal/zzlo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzli$6;->zzacr:Lcom/google/android/gms/internal/zzli;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzli$6;->zzacv:Lcom/google/android/gms/internal/zzlo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/zzli$6;->zzacv:Lcom/google/android/gms/internal/zzlo;

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzlo;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
