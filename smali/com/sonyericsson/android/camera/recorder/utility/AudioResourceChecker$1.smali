.class Lcom/sonyericsson/android/camera/recorder/utility/AudioResourceChecker$1;
.super Ljava/lang/Object;
.source "AudioResourceChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/recorder/utility/AudioResourceChecker;->checkAudioResource(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/recorder/utility/AudioResourceChecker$AudioResourceCheckerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/sonyericsson/android/camera/CameraActivity;

.field final synthetic val$listener:Lcom/sonyericsson/android/camera/recorder/utility/AudioResourceChecker$AudioResourceCheckerListener;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/recorder/utility/AudioResourceChecker$AudioResourceCheckerListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/AudioResourceChecker$1;->val$activity:Lcom/sonyericsson/android/camera/CameraActivity;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/recorder/utility/AudioResourceChecker$1;->val$listener:Lcom/sonyericsson/android/camera/recorder/utility/AudioResourceChecker$AudioResourceCheckerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/AudioResourceChecker$1;->val$activity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/utility/AudioResourceChecker;->isAudioResourceAvailable(Lcom/sonyericsson/android/camera/CameraActivity;)Z

    move-result v0

    .line 119
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/utility/AudioResourceChecker$1;->val$activity:Lcom/sonyericsson/android/camera/CameraActivity;

    new-instance v2, Lcom/sonyericsson/android/camera/recorder/utility/AudioResourceChecker$1$1;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/android/camera/recorder/utility/AudioResourceChecker$1$1;-><init>(Lcom/sonyericsson/android/camera/recorder/utility/AudioResourceChecker$1;Z)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
