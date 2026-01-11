.class Lcom/sonyericsson/android/camera/device/CameraActionSound$3;
.super Ljava/lang/Object;
.source "CameraActionSound.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraActionSound;->playSoundByTemporarySoundPool(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 0

    if-nez p3, :cond_0

    .line 218
    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera/device/CameraActionSound;->-$$Nest$smplaySoundBySampleId(Landroid/media/SoundPool;I)V

    :cond_0
    return-void
.end method
