.class Lcom/google/android/gms/internal/zzlf$1;
.super Lcom/google/android/gms/internal/zzli$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzlf;->zzb(Lcom/google/android/gms/internal/zzlb$zza;)Lcom/google/android/gms/internal/zzlb$zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzabs:Lcom/google/android/gms/internal/zzlf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzlf;Lcom/google/android/gms/internal/zzlj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlf$1;->zzabs:Lcom/google/android/gms/internal/zzlf;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzli$zzb;-><init>(Lcom/google/android/gms/internal/zzlj;)V

    return-void
.end method


# virtual methods
.method public zznO()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/zzlf$1;->zzabs:Lcom/google/android/gms/internal/zzlf;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzlf;->onConnectionSuspended(I)V

    return-void
.end method
