.class Lcom/google/android/gms/dynamic/zza$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/dynamic/zza$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/dynamic/zza;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzapr:Lcom/google/android/gms/dynamic/zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/dynamic/zza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/dynamic/zza$7;->zzapr:Lcom/google/android/gms/dynamic/zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getState()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public zzb(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/dynamic/zza$7;->zzapr:Lcom/google/android/gms/dynamic/zza;

    invoke-static {p0}, Lcom/google/android/gms/dynamic/zza;->zzb(Lcom/google/android/gms/dynamic/zza;)Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/dynamic/LifecycleDelegate;->onResume()V

    return-void
.end method
