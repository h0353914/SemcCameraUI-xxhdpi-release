.class public Lcom/sonymobile/cameracommon/view/RecognizedCondition;
.super Ljava/lang/Object;
.source "RecognizedCondition.java"


# instance fields
.field private final mCondition:Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

.field private final mIconId:I

.field private final mTextId:I


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;II)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/sonymobile/cameracommon/view/RecognizedCondition;->mCondition:Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

    .line 30
    iput p2, p0, Lcom/sonymobile/cameracommon/view/RecognizedCondition;->mIconId:I

    .line 31
    iput p3, p0, Lcom/sonymobile/cameracommon/view/RecognizedCondition;->mTextId:I

    return-void
.end method

.method public static create(Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;)Lcom/sonymobile/cameracommon/view/RecognizedCondition;
    .locals 3

    const/4 v0, -0x1

    if-nez p0, :cond_0

    .line 36
    new-instance p0, Lcom/sonymobile/cameracommon/view/RecognizedCondition;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v0}, Lcom/sonymobile/cameracommon/view/RecognizedCondition;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;II)V

    return-object p0

    .line 39
    :cond_0
    sget-object v1, Lcom/sonymobile/cameracommon/view/RecognizedCondition$1;->$SwitchMap$com$sonyericsson$android$camera$device$CameraParameters$DeviceStabilityCondition:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 53
    new-instance v1, Lcom/sonymobile/cameracommon/view/RecognizedCondition;

    invoke-direct {v1, p0, v0, v0}, Lcom/sonymobile/cameracommon/view/RecognizedCondition;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;II)V

    return-object v1

    .line 50
    :cond_1
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedCondition;

    const v1, 0x7f0800d8

    const v2, 0x7f0f006c

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/cameracommon/view/RecognizedCondition;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;II)V

    return-object v0

    .line 47
    :cond_2
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedCondition;

    const v1, 0x7f0800d7

    const v2, 0x7f0f006b

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/cameracommon/view/RecognizedCondition;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;II)V

    return-object v0

    .line 44
    :cond_3
    new-instance v0, Lcom/sonymobile/cameracommon/view/RecognizedCondition;

    const v1, 0x7f0800d6

    const v2, 0x7f0f006a

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/cameracommon/view/RecognizedCondition;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;II)V

    return-object v0

    .line 41
    :cond_4
    new-instance v1, Lcom/sonymobile/cameracommon/view/RecognizedCondition;

    invoke-direct {v1, p0, v0, v0}, Lcom/sonymobile/cameracommon/view/RecognizedCondition;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;II)V

    return-object v1
.end method


# virtual methods
.method public getCondition()Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/sonymobile/cameracommon/view/RecognizedCondition;->mCondition:Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

    return-object p0
.end method

.method public getContentDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const v0, 0x7f0f0069

    .line 63
    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/RecognizedCondition;->getTextId()I

    move-result p0

    invoke-static {p1, p0}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    .line 66
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIconId()I
    .locals 0

    .line 70
    iget p0, p0, Lcom/sonymobile/cameracommon/view/RecognizedCondition;->mIconId:I

    return p0
.end method

.method public getTextId()I
    .locals 0

    .line 74
    iget p0, p0, Lcom/sonymobile/cameracommon/view/RecognizedCondition;->mTextId:I

    return p0
.end method
