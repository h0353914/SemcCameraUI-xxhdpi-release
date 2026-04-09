.class Lcom/sonyericsson/android/camera/CameraActivity$1;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 449
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 453
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$100(Lcom/sonyericsson/android/camera/CameraActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 454
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Runnable --> onResumeTasks()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->access$102(Lcom/sonyericsson/android/camera/CameraActivity;Z)Z

    .line 457
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$1;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$200(Lcom/sonyericsson/android/camera/CameraActivity;)V

    goto :goto_0

    .line 460
    :cond_1
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_2

    .line 461
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "OnResumeTasks was executed when onResume is not skipped."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method
