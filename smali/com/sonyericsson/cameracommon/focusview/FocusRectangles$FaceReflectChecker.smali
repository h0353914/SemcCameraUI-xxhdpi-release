.class Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;
.super Ljava/lang/Object;
.source "FocusRectangles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaceReflectChecker"
.end annotation


# static fields
.field private static final WAIT_FOR_FACE_REFLECTED_TIME_MILLIS:J = 0x1f4L


# instance fields
.field private mCallback:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectedCallback;

.field private mFaceAreaTriggerPoint:Landroid/graphics/Point;

.field private mTimeoutTask:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V
    .locals 1

    .line 1811
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1814
    new-instance p1, Landroid/graphics/Point;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;->mFaceAreaTriggerPoint:Landroid/graphics/Point;

    .line 1818
    new-instance p1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker$1;

    invoke-direct {p1, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker$1;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;)V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;->mTimeoutTask:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$1;)V
    .locals 0

    .line 1811
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;)V
    .locals 0

    .line 1811
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;->notifyFaceReflected()V

    return-void
.end method

.method private notifyFaceReflected()V
    .locals 2

    .line 1846
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;->mFaceAreaTriggerPoint:Landroid/graphics/Point;

    const/4 v1, -0x1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 1847
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;->mFaceAreaTriggerPoint:Landroid/graphics/Point;

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 1848
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;->mCallback:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectedCallback;

    if-eqz v0, :cond_0

    .line 1849
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;->mCallback:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectedCallback;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectedCallback;->onFaceReflected()V

    const/4 v0, 0x0

    .line 1850
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;->setFaceReflectCb(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectedCallback;)V

    .line 1852
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$3700(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;->mTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public check(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)V
    .locals 2

    .line 1835
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil;->isValidFaceDetectionResult(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1836
    iget-object v0, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->extFaceList:Ljava/util/List;

    iget p1, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->indexOfSelectedFace:I

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;->rect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;->mFaceAreaTriggerPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;->mFaceAreaTriggerPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1838
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;->notifyFaceReflected()V

    goto :goto_0

    .line 1841
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;->notifyFaceReflected()V

    :cond_1
    :goto_0
    return-void
.end method

.method public isWaitingForCapturing()Z
    .locals 0

    .line 1860
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;->mCallback:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectedCallback;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWaitingForFaceReflected()Z
    .locals 1

    .line 1856
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;->mFaceAreaTriggerPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-ltz v0, :cond_0

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;->mFaceAreaTriggerPoint:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public requestToWaitForFaceReflected(Landroid/graphics/Point;)V
    .locals 2

    .line 1826
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$3300(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1829
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;->mFaceAreaTriggerPoint:Landroid/graphics/Point;

    .line 1830
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$3700(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;->mTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1831
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$3700(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;->mTimeoutTask:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setFaceReflectCb(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectedCallback;)V
    .locals 0

    .line 1864
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;->mCallback:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectedCallback;

    return-void
.end method
