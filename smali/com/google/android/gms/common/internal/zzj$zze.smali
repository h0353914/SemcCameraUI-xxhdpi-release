.class public final Lcom/google/android/gms/common/internal/zzj$zze;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/zzj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "zze"
.end annotation


# instance fields
.field final synthetic zzafK:Lcom/google/android/gms/common/internal/zzj;

.field private final zzafN:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/zzj;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzj$zze;->zzafK:Lcom/google/android/gms/common/internal/zzj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/common/internal/zzj$zze;->zzafN:I

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    const-string p1, "Expecting a valid IBinder"

    invoke-static {p2, p1}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/common/internal/zzj$zze;->zzafK:Lcom/google/android/gms/common/internal/zzj;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzs$zza;->zzaK(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzs;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/zzj;->zza(Lcom/google/android/gms/common/internal/zzj;Lcom/google/android/gms/common/internal/zzs;)Lcom/google/android/gms/common/internal/zzs;

    iget-object p1, p0, Lcom/google/android/gms/common/internal/zzj$zze;->zzafK:Lcom/google/android/gms/common/internal/zzj;

    iget p0, p0, Lcom/google/android/gms/common/internal/zzj$zze;->zzafN:I

    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/internal/zzj;->zzbF(I)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    iget-object p1, p0, Lcom/google/android/gms/common/internal/zzj$zze;->zzafK:Lcom/google/android/gms/common/internal/zzj;

    iget-object p1, p1, Lcom/google/android/gms/common/internal/zzj;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zze;->zzafK:Lcom/google/android/gms/common/internal/zzj;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/zzj;->mHandler:Landroid/os/Handler;

    iget p0, p0, Lcom/google/android/gms/common/internal/zzj$zze;->zzafN:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
