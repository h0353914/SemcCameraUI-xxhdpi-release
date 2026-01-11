.class public Lcom/sonyericsson/android/camera/view/ToastContent;
.super Ljava/lang/Object;
.source "ToastContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/ToastContent$ToastID;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ToastContent"


# instance fields
.field private mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

.field private mSensorOrientation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 29
    iput v0, p0, Lcom/sonyericsson/android/camera/view/ToastContent;->mSensorOrientation:I

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/ToastContent;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    return-void
.end method


# virtual methods
.method public closeMessage()V
    .locals 2

    .line 101
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "closeMessage: , mToast: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ToastContent;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ToastContent;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->hideImmediately()V

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/ToastContent;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    :cond_1
    return-void
.end method

.method public setSensorOrientation(I)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/sonyericsson/android/camera/view/ToastContent;->mSensorOrientation:I

    .line 66
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ToastContent;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    if-eqz p0, :cond_0

    .line 67
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->setSensorOrientation(I)V

    :cond_0
    return-void
.end method

.method public show(Landroid/app/Activity;Lcom/sonyericsson/android/camera/view/ToastContent$ToastID;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ToastContent;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->hideImmediately()V

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/ToastContent;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 87
    :cond_1
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->inflate(Landroid/app/Activity;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ToastContent;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    .line 88
    invoke-static {p2}, Lcom/sonyericsson/android/camera/view/ToastContent$ToastID;->-$$Nest$fgetmDuration(Lcom/sonyericsson/android/camera/view/ToastContent$ToastID;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->setDuration(I)V

    .line 89
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ToastContent;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/view/ToastContent$ToastID;->-$$Nest$fgetmMessageResourceID(Lcom/sonyericsson/android/camera/view/ToastContent$ToastID;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->setTextResId(I)V

    .line 90
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ToastContent;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    iget v0, p0, Lcom/sonyericsson/android/camera/view/ToastContent;->mSensorOrientation:I

    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->setSensorOrientation(I)V

    .line 91
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ToastContent;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/view/ToastContent$ToastID;->-$$Nest$fgetmPosition(Lcom/sonyericsson/android/camera/view/ToastContent$ToastID;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->setToastPosition(Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;)V

    .line 92
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ToastContent;->mRotatableToast:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->show()V

    return-void
.end method
