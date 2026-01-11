.class public Lcom/sonyericsson/android/camera/device/AfStateChecker;
.super Lcom/sonyericsson/android/camera/device/StateCheckerBase;
.source "AfStateChecker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AfStateChecker"

.field private static final WAITING_AF_STATE_LOCKED_TIMEOUT_FRAMES:I = 0x3c


# instance fields
.field private mAfState:Ljava/lang/Integer;

.field private mFrameNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/StateCheckerBase;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mFrameNumber:I

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mAfState:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getAfState()Ljava/lang/Integer;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mAfState:Ljava/lang/Integer;

    return-object p0
.end method

.method public isFocusLocked()Z
    .locals 3

    .line 66
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mAfState:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 67
    :goto_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isFocusLocked() : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return p0
.end method

.method public isStateInactive()Z
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mAfState:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    .line 31
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, p1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mAfState:Ljava/lang/Integer;

    .line 32
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/sonyericsson/android/camera/device/AfStateChecker;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "onCaptureCompleted() : mAfState = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mAfState:Ljava/lang/Integer;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ", af check - FrameNumber =  "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mFrameNumber:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 34
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mAfState:Ljava/lang/Integer;

    if-nez p1, :cond_1

    return-void

    .line 37
    :cond_1
    iget p2, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mFrameNumber:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mFrameNumber:I

    .line 38
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    const/4 p3, 0x4

    if-eq p1, p3, :cond_3

    const/4 p3, 0x5

    if-eq p1, p3, :cond_3

    .line 49
    iget p1, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mFrameNumber:I

    const/16 p3, 0x3c

    if-le p1, p3, :cond_4

    .line 50
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mStateCheckerCallback:Lcom/sonyericsson/android/camera/device/StateCheckerBase$StateCheckerCallback;

    if-eqz p1, :cond_4

    .line 51
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_2

    sget-object p1, Lcom/sonyericsson/android/camera/device/AfStateChecker;->TAG:Ljava/lang/String;

    const-string p3, "onCaptureCompleted() Time out break !"

    filled-new-array {p1, p3}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 53
    :cond_2
    iput p2, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mFrameNumber:I

    .line 54
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mStateCheckerCallback:Lcom/sonyericsson/android/camera/device/StateCheckerBase$StateCheckerCallback;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/device/StateCheckerBase$StateCheckerCallback;->OnStateChanged()V

    goto :goto_0

    .line 42
    :cond_3
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mStateCheckerCallback:Lcom/sonyericsson/android/camera/device/StateCheckerBase$StateCheckerCallback;

    if-eqz p1, :cond_4

    .line 43
    iput p2, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mFrameNumber:I

    .line 44
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/AfStateChecker;->mStateCheckerCallback:Lcom/sonyericsson/android/camera/device/StateCheckerBase$StateCheckerCallback;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/device/StateCheckerBase$StateCheckerCallback;->OnStateChanged()V

    :cond_4
    :goto_0
    return-void
.end method
