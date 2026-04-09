.class final Lcom/sonyericsson/android/camera/device/CameraActionSound$3;
.super Ljava/lang/Object;
.source "CameraActionSound.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraActionSound;->releaseDelay(Landroid/media/MediaActionSound;Ljava/util/concurrent/ScheduledExecutorService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$sound:Landroid/media/MediaActionSound;


# direct methods
.method constructor <init>(Landroid/media/MediaActionSound;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$3;->val$sound:Landroid/media/MediaActionSound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 182
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$3;->val$sound:Landroid/media/MediaActionSound;

    invoke-virtual {p0}, Landroid/media/MediaActionSound;->release()V

    return-void
.end method
