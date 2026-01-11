.class public Lcom/sonyericsson/android/camera/controller/GestureShutter;
.super Ljava/lang/Object;
.source "GestureShutter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;,
        Lcom/sonyericsson/android/camera/controller/GestureShutter$ControllerHost;,
        Lcom/sonyericsson/android/camera/controller/GestureShutter$State;,
        Lcom/sonyericsson/android/camera/controller/GestureShutter$StateInitializing;,
        Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;,
        Lcom/sonyericsson/android/camera/controller/GestureShutter$StateConfirming;,
        Lcom/sonyericsson/android/camera/controller/GestureShutter$StateRecognitionRewinding;,
        Lcom/sonyericsson/android/camera/controller/GestureShutter$StateRecognitionProceeding;,
        Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStandBy;,
        Lcom/sonyericsson/android/camera/controller/GestureShutter$StateReleasing;
    }
.end annotation


# static fields
.field private static final IS_GESTURE_SHUTTER_SUPPORTED:Z = true

.field private static final TAG:Ljava/lang/String; = "GestureShutter"


# instance fields
.field private mAnimationListener:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationStatusListener;

.field private mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field private mControllerHost:Lcom/sonyericsson/android/camera/controller/GestureShutter$ControllerHost;

.field private mDetectResultListener:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultListener;

.field private mHandSignsDetector:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;

.field private mImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;

.field private mIsEnabled:Z

.field private mIsGestureShutterOn:Z

.field private mIsPreviewing:Z

.field private mIsSelftimerRunning:Z

.field private mLayoutOrientation:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

.field private mOrientationListener:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientationChangedListener;

.field private mState:Lcom/sonyericsson/android/camera/controller/GestureShutter$State;

.field private mUIScheduler:Landroid/os/Handler;

.field private mWindowHost:Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAnimationListener(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationStatusListener;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mAnimationListener:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationStatusListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmControllerHost(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/controller/GestureShutter$ControllerHost;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mControllerHost:Lcom/sonyericsson/android/camera/controller/GestureShutter$ControllerHost;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandSignsDetector(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mHandSignsDetector:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImageRetriever(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/device/ImageRetriever;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsEnabled(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mIsEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsGestureShutterOn(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mIsGestureShutterOn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLayoutOrientation(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mLayoutOrientation:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOrientationListener(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientationChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mOrientationListener:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientationChangedListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmState(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/controller/GestureShutter$State;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mState:Lcom/sonyericsson/android/camera/controller/GestureShutter$State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWindowHost(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mWindowHost:Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmHandSignsDetector(Lcom/sonyericsson/android/camera/controller/GestureShutter;Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mHandSignsDetector:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLayoutOrientation(Lcom/sonyericsson/android/camera/controller/GestureShutter;Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mLayoutOrientation:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWindowHost(Lcom/sonyericsson/android/camera/controller/GestureShutter;Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mWindowHost:Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;

    return-void
.end method

.method static bridge synthetic -$$Nest$mchangeState(Lcom/sonyericsson/android/camera/controller/GestureShutter;Lcom/sonyericsson/android/camera/controller/GestureShutter$State;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->changeState(Lcom/sonyericsson/android/camera/controller/GestureShutter$State;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateDetector(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->createDetector()Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misOperableMode(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->isOperableMode()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshouldPerformDetection(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->shouldPerformDetection()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mtranslateFromDetectToPreview(Lcom/sonyericsson/android/camera/controller/GestureShutter;Landroid/graphics/Rect;II)Landroid/graphics/RectF;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->translateFromDetectToPreview(Landroid/graphics/Rect;II)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/controller/GestureShutter$ControllerHost;Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;)V
    .locals 3

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mIsEnabled:Z

    const/4 v0, 0x0

    .line 151
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mIsGestureShutterOn:Z

    .line 152
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mIsPreviewing:Z

    .line 153
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 154
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mIsSelftimerRunning:Z

    .line 155
    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;->Unknown:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mLayoutOrientation:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;

    .line 158
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mUIScheduler:Landroid/os/Handler;

    .line 159
    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mWindowHost:Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;

    .line 160
    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mControllerHost:Lcom/sonyericsson/android/camera/controller/GestureShutter$ControllerHost;

    .line 161
    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mHandSignsDetector:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;

    .line 163
    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mState:Lcom/sonyericsson/android/camera/controller/GestureShutter$State;

    .line 165
    new-instance v0, Lcom/sonyericsson/android/camera/controller/GestureShutter$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/controller/GestureShutter$1;-><init>(Lcom/sonyericsson/android/camera/controller/GestureShutter;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mAnimationListener:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationStatusListener;

    .line 191
    new-instance v0, Lcom/sonyericsson/android/camera/controller/GestureShutter$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/controller/GestureShutter$2;-><init>(Lcom/sonyericsson/android/camera/controller/GestureShutter;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mDetectResultListener:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultListener;

    .line 198
    new-instance v0, Lcom/sonyericsson/android/camera/controller/GestureShutter$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/controller/GestureShutter$3;-><init>(Lcom/sonyericsson/android/camera/controller/GestureShutter;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mOrientationListener:Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientationChangedListener;

    .line 212
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mControllerHost:Lcom/sonyericsson/android/camera/controller/GestureShutter$ControllerHost;

    .line 213
    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mWindowHost:Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;

    .line 215
    new-instance p1, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateInitializing;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateInitializing;-><init>(Lcom/sonyericsson/android/camera/controller/GestureShutter;)V

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->changeState(Lcom/sonyericsson/android/camera/controller/GestureShutter$State;)V

    return-void
.end method

.method private changeState(Lcom/sonyericsson/android/camera/controller/GestureShutter$State;)V
    .locals 2

    .line 226
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "State is changing from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mState:Lcom/sonyericsson/android/camera/controller/GestureShutter$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 231
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mState:Lcom/sonyericsson/android/camera/controller/GestureShutter$State;

    .line 232
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/GestureShutter$State;->entry()V

    return-void
.end method

.method private createDetector()Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;
    .locals 2

    .line 236
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 237
    const-string v0, "Creating HandSignsDetector"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 239
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mDetectResultListener:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultListener;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mUIScheduler:Landroid/os/Handler;

    invoke-direct {v0, v1, p0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;-><init>(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultListener;Landroid/os/Handler;)V

    return-object v0
.end method

.method public static isGestureShutterSupported()Z
    .locals 1

    .line 47
    sget-boolean v0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->IS_GESTURE_SHUTTER_SUPPORTED:Z

    return v0
.end method

.method private isOperableMode()Z
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private shouldPerformDetection()Z
    .locals 5

    .line 243
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 244
    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "shoudPerformDetection? setting is:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    iget-boolean v4, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mIsGestureShutterOn:Z

    if-eqz v4, :cond_0

    const-string v4, "ON"

    goto :goto_0

    :cond_0
    const-string v4, "OFF"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isPreviewing:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mIsPreviewing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isSelftimerRunning:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mIsSelftimerRunning:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " capturingMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 244
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 251
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mIsGestureShutterOn:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mIsPreviewing:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mIsSelftimerRunning:Z

    if-nez v0, :cond_2

    .line 254
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->isOperableMode()Z

    move-result p0

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method private translateFromDetectToPreview(Landroid/graphics/Rect;II)Landroid/graphics/RectF;
    .locals 4

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    .line 264
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 266
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mWindowHost:Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;->getPreviewSize()Landroid/graphics/Point;

    move-result-object v1

    .line 268
    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    int-to-float p2, p2

    div-float/2addr v2, p2

    .line 269
    iget p2, v1, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    int-to-float p3, p3

    div-float/2addr p2, p3

    .line 271
    iget p3, v1, Landroid/graphics/Point;->x:I

    int-to-float p3, p3

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    sub-float/2addr p3, v3

    iput p3, v0, Landroid/graphics/RectF;->left:F

    .line 272
    iget p3, v1, Landroid/graphics/Point;->x:I

    int-to-float p3, p3

    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    sub-float/2addr p3, v3

    iput p3, v0, Landroid/graphics/RectF;->right:F

    .line 273
    iget p3, p1, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    mul-float/2addr p3, p2

    iput p3, v0, Landroid/graphics/RectF;->top:F

    .line 274
    iget p3, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p3, p3

    mul-float/2addr p3, p2

    iput p3, v0, Landroid/graphics/RectF;->bottom:F

    .line 277
    iget-object p2, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mWindowHost:Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;

    invoke-interface {p2}, Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;->getScreenAspect()Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    move-result-object p2

    sget-object p3, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->EIGHTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-ne p2, p3, :cond_1

    .line 279
    iget p2, v1, Landroid/graphics/Point;->x:I

    iget p3, v1, Landroid/graphics/Point;->y:I

    if-ne p2, p3, :cond_0

    .line 283
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mWindowHost:Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;->getViewFinderSize()Landroid/graphics/Rect;

    move-result-object p0

    .line 284
    iget p2, v1, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    iget p3, p1, Landroid/graphics/Rect;->right:I

    int-to-float p3, p3

    mul-float/2addr p3, v2

    sub-float/2addr p2, p3

    .line 285
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr p3, v3

    add-float/2addr p2, p3

    iput p2, v0, Landroid/graphics/RectF;->left:F

    .line 286
    iget p2, v1, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    mul-float/2addr p1, v2

    sub-float/2addr p2, p1

    .line 287
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v3

    add-float/2addr p2, p0

    iput p2, v0, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 288
    :cond_0
    iget p1, v1, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p1, p2

    iget p2, v1, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p2, 0x3d4ccccd    # 0.05f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_2

    .line 289
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mWindowHost:Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;->getLeftIconAreaHeight()I

    move-result p0

    neg-int p0, p0

    int-to-float p0, p0

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_0

    .line 292
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mWindowHost:Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;->getPreviewOffset()Landroid/graphics/Point;

    move-result-object p0

    .line 293
    iget p1, p0, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    invoke-virtual {v0, p1, p0}, Landroid/graphics/RectF;->offset(FF)V

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public handleDetectResult(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface;)V
    .locals 0

    .line 373
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mState:Lcom/sonyericsson/android/camera/controller/GestureShutter$State;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/GestureShutter$State;->handleDetectResult(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface;)V

    return-void
.end method

.method public handlePreviewStarted(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/device/ImageRetriever;)V
    .locals 0

    .line 319
    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;

    const/4 p2, 0x1

    .line 320
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mIsPreviewing:Z

    .line 321
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 322
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mState:Lcom/sonyericsson/android/camera/controller/GestureShutter$State;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/GestureShutter$State;->updateDetectionStatus()V

    return-void
.end method

.method public handlePreviewStopped()V
    .locals 1

    const/4 v0, 0x0

    .line 329
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mIsPreviewing:Z

    const/4 v0, 0x0

    .line 330
    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;

    .line 331
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mState:Lcom/sonyericsson/android/camera/controller/GestureShutter$State;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/GestureShutter$State;->updateDetectionStatus()V

    return-void
.end method

.method public handleSelftimerStarted()V
    .locals 1

    const/4 v0, 0x1

    .line 346
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mIsSelftimerRunning:Z

    .line 347
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mState:Lcom/sonyericsson/android/camera/controller/GestureShutter$State;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/GestureShutter$State;->updateDetectionStatus()V

    return-void
.end method

.method public handleSelftimerStopped(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 354
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mIsSelftimerRunning:Z

    .line 355
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mControllerHost:Lcom/sonyericsson/android/camera/controller/GestureShutter$ControllerHost;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter$ControllerHost;->resetGestureShutterCountDown()V

    if-nez p1, :cond_0

    .line 362
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mState:Lcom/sonyericsson/android/camera/controller/GestureShutter$State;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/GestureShutter$State;->updateDetectionStatus()V

    :cond_0
    return-void
.end method

.method public handleSettingsChanged(Z)V
    .locals 0

    .line 338
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mIsGestureShutterOn:Z

    .line 339
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mState:Lcom/sonyericsson/android/camera/controller/GestureShutter$State;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/GestureShutter$State;->updateDetectionStatus()V

    return-void
.end method

.method public release()V
    .locals 2

    .line 381
    new-instance v0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;-><init>(Lcom/sonyericsson/android/camera/controller/GestureShutter;Z)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->changeState(Lcom/sonyericsson/android/camera/controller/GestureShutter$State;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 219
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mIsEnabled:Z

    if-nez p1, :cond_0

    .line 221
    new-instance p1, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;-><init>(Lcom/sonyericsson/android/camera/controller/GestureShutter;Z)V

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->changeState(Lcom/sonyericsson/android/camera/controller/GestureShutter$State;)V

    :cond_0
    return-void
.end method

.method public setWindowHost(Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;)V
    .locals 0

    .line 309
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter;->mState:Lcom/sonyericsson/android/camera/controller/GestureShutter$State;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/GestureShutter$State;->setWindowHost(Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;)V

    return-void
.end method
