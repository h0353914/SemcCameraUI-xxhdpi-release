.class Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;
.super Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;
.source "FaceDetectionResultChecker.java"


# static fields
.field private static final MINIMUM_INTERVAL_MILLIS:I = 0x64

.field private static final TAG:Ljava/lang/String; = "FaceDetectionResultChecker"


# instance fields
.field private final mFaceDetectionCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionCallback;

.field private mLastDataTimeMillis:J

.field private mPreviousNumberOfFacesDetected:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionCallback;)V
    .locals 2

    .line 38
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CaptureResultCheckerBase;-><init>(Landroid/os/Handler;)V

    const-wide/16 v0, 0x0

    .line 34
    iput-wide v0, p0, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->mLastDataTimeMillis:J

    const/4 p1, 0x0

    .line 35
    iput p1, p0, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->mPreviousNumberOfFacesDetected:I

    .line 39
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->mFaceDetectionCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;)Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionCallback;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->mFaceDetectionCallback:Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionCallback;

    return-object p0
.end method

.method private isValidFace(Landroid/hardware/camera2/params/Face;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 172
    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    if-lez p0, :cond_0

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isValidResults([Landroid/hardware/camera2/params/Face;[I[I)Z
    .locals 3

    const/4 p0, 0x0

    if-eqz p1, :cond_7

    .line 135
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_2

    .line 143
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_1

    const-string p1, "Smile score is null."

    .line 144
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return p0

    .line 149
    :cond_2
    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_4

    .line 150
    sget-boolean p3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p3, :cond_3

    .line 151
    new-array p3, v2, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result is invalid: Number of face rectangle and smile score are different. faces num: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", smile scores num: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, p0

    invoke-static {p3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3
    return p0

    :cond_4
    if-eqz p3, :cond_6

    .line 160
    array-length p1, p3

    const/4 p2, 0x5

    if-eq p1, p2, :cond_6

    .line 161
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_5

    .line 162
    new-array p1, v2, [Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Face select area is invalid: Face select area num: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p3, p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, p0

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_5
    return p0

    :cond_6
    return v2

    .line 136
    :cond_7
    :goto_0
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_8

    const-string p1, "No face data."

    .line 137
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_8
    return p0
.end method


# virtual methods
.method public check(Lcom/sonyericsson/android/camera/device/CaptureResultHolder;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 46
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 47
    iget-wide v4, v0, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->mLastDataTimeMillis:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x64

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    return-void

    .line 50
    :cond_0
    iput-wide v2, v0, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->mLastDataTimeMillis:J

    .line 52
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->getLatestValue(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/camera2/params/Face;

    .line 53
    sget-object v3, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_STATISTICS_FACE_SMILE_SCORES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->getLatestValue(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 55
    sget-object v4, Lcom/sonyericsson/android/camera/device/SomcCaptureResultKeys;->SONYMOBILE_STATISTICS_FACE_SELECT_AREA:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera/device/CaptureResultHolder;->getLatestValue(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 58
    new-instance v11, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;

    invoke-direct {v11}, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;-><init>()V

    .line 60
    invoke-direct {v0, v2, v3, v1}, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->isValidResults([Landroid/hardware/camera2/params/Face;[I[I)Z

    move-result v4

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v4, :cond_7

    const/4 v14, 0x3

    const/4 v15, 0x2

    if-eqz v1, :cond_2

    .line 63
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v5, 0x4

    if-eqz v4, :cond_1

    .line 65
    new-array v4, v12, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Select area: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v1, v13

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v1, v12

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v1, v15

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v1, v14

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v1, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v13

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 70
    :cond_1
    aget v4, v1, v5

    move/from16 v16, v4

    goto :goto_0

    :cond_2
    move/from16 v16, v13

    :goto_0
    move v9, v13

    move v10, v9

    .line 74
    :goto_1
    array-length v4, v2

    if-ge v10, v4, :cond_7

    .line 75
    aget-object v4, v2, v10

    invoke-direct {v0, v4}, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->isValidFace(Landroid/hardware/camera2/params/Face;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 76
    aget-object v4, v2, v10

    invoke-virtual {v4}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 77
    aget v7, v3, v10

    .line 78
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v4, :cond_3

    .line 79
    new-array v4, v12, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Face rectangle: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v13

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 80
    new-array v4, v12, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Smile score: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v13

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 83
    :cond_3
    iget v6, v8, Landroid/graphics/Rect;->left:I

    iget v5, v8, Landroid/graphics/Rect;->top:I

    iget v4, v8, Landroid/graphics/Rect;->right:I

    iget v14, v8, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v4

    move-object v4, v11

    move/from16 v18, v5

    move v5, v9

    move/from16 v19, v7

    move/from16 v7, v18

    move-object/from16 v20, v8

    move/from16 v8, v17

    move/from16 v21, v9

    move v9, v14

    move v14, v10

    move/from16 v10, v19

    invoke-virtual/range {v4 .. v10}, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->addFaceResult(IIIIII)V

    if-eqz v16, :cond_5

    .line 93
    aget v4, v1, v13

    aget v5, v1, v12

    aget v6, v1, v15

    const/4 v7, 0x3

    aget v8, v1, v7

    move-object/from16 v9, v20

    invoke-virtual {v9, v4, v5, v6, v8}, Landroid/graphics/Rect;->contains(IIII)Z

    move-result v4

    if-eqz v4, :cond_4

    move/from16 v4, v21

    .line 96
    invoke-virtual {v11, v4}, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->setFrameResult(I)V

    goto :goto_2

    :cond_4
    move/from16 v4, v21

    goto :goto_2

    :cond_5
    move/from16 v4, v21

    const/4 v7, 0x3

    :goto_2
    add-int/lit8 v9, v4, 0x1

    goto :goto_3

    :cond_6
    move v4, v9

    move v7, v14

    move v14, v10

    :goto_3
    add-int/lit8 v10, v14, 0x1

    move v14, v7

    goto/16 :goto_1

    .line 104
    :cond_7
    iget-object v1, v11, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->extFaceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_a

    .line 105
    iget v1, v0, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->mPreviousNumberOfFacesDetected:I

    if-eqz v1, :cond_9

    .line 107
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_8

    const-string v1, "Faces are lost."

    .line 108
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 111
    :cond_8
    iput v13, v0, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->mPreviousNumberOfFacesDetected:I

    goto :goto_4

    :cond_9
    return-void

    .line 117
    :cond_a
    iget-object v1, v11, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->extFaceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->mPreviousNumberOfFacesDetected:I

    .line 120
    :goto_4
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_b

    .line 121
    new-array v1, v12, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Detected Faces: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v13

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 124
    :cond_b
    iget-object v1, v0, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker$1;

    invoke-direct {v2, v0, v11}, Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker$1;-><init>(Lcom/sonyericsson/android/camera/device/FaceDetectionResultChecker;Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
