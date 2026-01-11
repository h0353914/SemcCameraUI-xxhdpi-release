.class Lcom/sonyericsson/android/camera/CameraActivity$9;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/sonymobile/camerahiddenapi/IScreenRecordingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .locals 0

    .line 2712
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$9;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenRecordingStart()V
    .locals 1

    .line 2715
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ScreenRecording CB start"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2716
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$9;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$fputmIsScreenRecording(Lcom/sonyericsson/android/camera/CameraActivity;Z)V

    return-void
.end method

.method public onScreenRecordingStop()V
    .locals 1

    .line 2721
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ScreenRecording CB stop"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2722
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$9;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$fputmIsScreenRecording(Lcom/sonyericsson/android/camera/CameraActivity;Z)V

    return-void
.end method
