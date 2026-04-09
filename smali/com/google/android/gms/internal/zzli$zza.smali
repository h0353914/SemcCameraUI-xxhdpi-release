.class final Lcom/google/android/gms/internal/zzli$zza;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzli;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "zza"
.end annotation


# instance fields
.field final synthetic zzacr:Lcom/google/android/gms/internal/zzli;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzli;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzli$zza;->zzacr:Lcom/google/android/gms/internal/zzli;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string p0, "GoogleApiClientImpl"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/zzli$zzb;

    iget-object p0, p0, Lcom/google/android/gms/internal/zzli$zza;->zzacr:Lcom/google/android/gms/internal/zzli;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzli$zzb;->zzg(Lcom/google/android/gms/internal/zzli;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/google/android/gms/internal/zzli$zza;->zzacr:Lcom/google/android/gms/internal/zzli;

    invoke-static {p0}, Lcom/google/android/gms/internal/zzli;->zzd(Lcom/google/android/gms/internal/zzli;)V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/google/android/gms/internal/zzli$zza;->zzacr:Lcom/google/android/gms/internal/zzli;

    invoke-static {p0}, Lcom/google/android/gms/internal/zzli;->zze(Lcom/google/android/gms/internal/zzli;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
