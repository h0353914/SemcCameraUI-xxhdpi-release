.class public Lcom/sonyericsson/cameracommon/utility/RotationUtil;
.super Ljava/lang/Object;
.source "RotationUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "RotationUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAngle(I)F
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/high16 p0, -0x3d4c0000    # -90.0f

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getNormalizedRotation(I)I
    .locals 2

    .line 42
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ORIENTATION: sensor value "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 45
    :cond_0
    rem-int/lit16 p0, p0, 0x168

    const/16 v0, 0x2d

    const/16 v1, 0x87

    if-ge v0, p0, :cond_1

    if-gt p0, v1, :cond_1

    const/16 p0, 0x5a

    goto :goto_0

    :cond_1
    const/16 v0, 0xe1

    if-gt v1, p0, :cond_2

    if-gt p0, v0, :cond_2

    const/16 p0, 0xb4

    goto :goto_0

    :cond_2
    if-gt v0, p0, :cond_3

    const/16 v0, 0x13b

    if-gt p0, v0, :cond_3

    const/16 p0, 0x10e

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    .line 55
    :goto_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ORIENTATION: normalized value is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RotationUtil"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4
    return p0
.end method

.method public static orientationToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 71
    const-string p0, "UNKNOWN"

    return-object p0

    .line 67
    :cond_0
    const-string p0, "LANDSCAPE"

    return-object p0

    .line 69
    :cond_1
    const-string p0, "PORTRAIT"

    return-object p0
.end method
