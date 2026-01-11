.class Lcom/sonyericsson/android/camera/device/CameraActionSound$4;
.super Ljava/lang/Object;
.source "CameraActionSound.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraActionSound;->playSoundByTemporarySoundPool(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$soundPool:Landroid/media/SoundPool;


# direct methods
.method constructor <init>(Landroid/media/SoundPool;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 236
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$4;->val$soundPool:Landroid/media/SoundPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 239
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$4;->val$soundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Landroid/media/SoundPool;->release()V

    return-void
.end method
