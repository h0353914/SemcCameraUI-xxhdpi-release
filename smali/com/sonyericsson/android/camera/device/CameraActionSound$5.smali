.class Lcom/sonyericsson/android/camera/device/CameraActionSound$5;
.super Ljava/lang/Object;
.source "CameraActionSound.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraActionSound;->releaseDelay(Ljava/util/concurrent/ScheduledExecutorService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraActionSound;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraActionSound;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$5;->this$0:Lcom/sonyericsson/android/camera/device/CameraActionSound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$5;->this$0:Lcom/sonyericsson/android/camera/device/CameraActionSound;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraActionSound;->-$$Nest$fgetmSoundPool(Lcom/sonyericsson/android/camera/device/CameraActionSound;)Landroid/media/SoundPool;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$5;->this$0:Lcom/sonyericsson/android/camera/device/CameraActionSound;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraActionSound;->-$$Nest$fgetmSoundMapLock(Lcom/sonyericsson/android/camera/device/CameraActionSound;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 272
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$5;->this$0:Lcom/sonyericsson/android/camera/device/CameraActionSound;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraActionSound;->-$$Nest$fgetmSoundMap(Lcom/sonyericsson/android/camera/device/CameraActionSound;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 273
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$5;->this$0:Lcom/sonyericsson/android/camera/device/CameraActionSound;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraActionSound;->-$$Nest$fgetmSoundPool(Lcom/sonyericsson/android/camera/device/CameraActionSound;)Landroid/media/SoundPool;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 275
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$5;->this$0:Lcom/sonyericsson/android/camera/device/CameraActionSound;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraActionSound;->-$$Nest$fputmSoundPool(Lcom/sonyericsson/android/camera/device/CameraActionSound;Landroid/media/SoundPool;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 273
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method
