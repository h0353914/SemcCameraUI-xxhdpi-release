.class Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;
.super Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;
.source "SceneRecognitionResultChecker.java"


# static fields
.field private static final MACRO_RANGE_IN_METER:F = 0.1455f

.field private static final MACRO_RANGE_IN_METER_SM23_BACK1:F = 0.18f

.field private static MACRO_RANGE_IN_METER_THRESHOLD:F = 0.1455f

.field private static final TAG:Ljava/lang/String; = "SceneRecognitionResultChecker"


# instance fields
.field private mCondition:Ljava/lang/Integer;

.field private mIsMacroRangeSupported:Z

.field private mLastCondition:Ljava/lang/Integer;

.field private mLastMacroRange:Z

.field private mLastScene:Ljava/lang/Integer;

.field private mMacroRange:Z

.field private mParameters:Lcom/sonyericsson/android/camera/device/CameraParameters;

.field private mScene:Ljava/lang/Integer;

.field private final mSceneRecognitionCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionCallback;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSceneRecognitionCallback(Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;)Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionCallback;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mSceneRecognitionCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionCallback;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionCallback;Z)V
    .locals 1

    .line 49
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;-><init>(Landroid/os/Handler;)V

    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mScene:Ljava/lang/Integer;

    .line 36
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mCondition:Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mMacroRange:Z

    .line 38
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mParameters:Lcom/sonyericsson/android/camera/device/CameraParameters;

    .line 39
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mIsMacroRangeSupported:Z

    const/16 p1, 0x64

    .line 42
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mLastScene:Ljava/lang/Integer;

    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mLastCondition:Ljava/lang/Integer;

    .line 45
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mLastMacroRange:Z

    .line 50
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mSceneRecognitionCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionCallback;

    .line 51
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mIsMacroRangeSupported:Z

    const p0, 0x3e3851ec    # 0.18f

    .line 52
    sput p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->MACRO_RANGE_IN_METER_THRESHOLD:F

    .line 54
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    .line 55
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Current MacroRange threshold is: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget p1, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->MACRO_RANGE_IN_METER_THRESHOLD:F

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public check(Lcom/sonyericsson/android/camera/device/CaptureResultHolder;)V
    .locals 2

    .line 62
    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_STATISTICS_SCENE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->getLatestValue(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mScene:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/16 v0, 0x64

    .line 64
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mScene:Ljava/lang/Integer;

    .line 65
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "Scene is set as AUTO since not detected."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 69
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_STATISTICS_CONDITION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->getLatestValue(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mCondition:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mCondition:Ljava/lang/Integer;

    .line 72
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    const-string v0, "Condition is set as UNKNOWN since not detected."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 78
    :cond_1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->getLatestValue(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    .line 79
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mIsMacroRangeSupported:Z

    if-nez p1, :cond_2

    .line 80
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mMacroRange:Z

    goto :goto_0

    .line 81
    :cond_2
    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 82
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mMacroRange:Z

    goto :goto_0

    .line 83
    :cond_3
    sget p1, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->MACRO_RANGE_IN_METER_THRESHOLD:F

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_4

    const/4 p1, 0x1

    .line 84
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mMacroRange:Z

    goto :goto_0

    .line 86
    :cond_4
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mMacroRange:Z

    .line 89
    :goto_0
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_5

    .line 90
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Scene: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mScene:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", Condition: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mCondition:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", Macro: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mMacroRange:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 94
    :cond_5
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mScene:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mLastScene:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mCondition:Ljava/lang/Integer;

    .line 95
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mLastCondition:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_7

    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mMacroRange:Z

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mLastMacroRange:Z

    if-ne p1, v0, :cond_7

    .line 98
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_6

    .line 99
    const-string p0, "Same Scene/Condition/Macro status."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_6
    return-void

    .line 104
    :cond_7
    new-instance p1, Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionResult;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionResult;-><init>()V

    .line 105
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mScene:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->getSceneMode(I)Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    move-result-object v0

    iput-object v0, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionResult;->sceneMode:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 106
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mCondition:Ljava/lang/Integer;

    .line 107
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;->getCondition(I)Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

    move-result-object v0

    iput-object v0, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionResult;->deviceStabilityCondition:Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

    .line 108
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mMacroRange:Z

    iput-boolean v0, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionResult;->isMacroRange:Z

    .line 110
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker$1;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker$1;-><init>(Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 119
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mScene:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mLastScene:Ljava/lang/Integer;

    .line 120
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mCondition:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mLastCondition:Ljava/lang/Integer;

    .line 121
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mMacroRange:Z

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mLastMacroRange:Z

    return-void
.end method

.method public isWalkingCodition()Z
    .locals 2

    .line 125
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/SceneRecognitionResultChecker;->mCondition:Ljava/lang/Integer;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 126
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
