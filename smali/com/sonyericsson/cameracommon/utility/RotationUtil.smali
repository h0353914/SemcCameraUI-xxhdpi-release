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
    .locals 5

    .line 42
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ORIENTATION: sensor value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 45
    :cond_0
    rem-int/lit16 p0, p0, 0x168

    const/16 v0, 0x2d

    const/16 v3, 0x87

    if-ge v0, p0, :cond_1

    if-gt p0, v3, :cond_1

    const/16 p0, 0x5a

    goto :goto_0

    :cond_1
    const/16 v0, 0xe1

    if-gt v3, p0, :cond_2

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
    move p0, v2

    .line 55
    :goto_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "RotationUtil"

    aput-object v3, v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ORIENTATION: normalized value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4
    return p0
.end method

.method public static orientationToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_0
    const-string p0, "LANDSCAPE"

    return-object p0

    :pswitch_1
    const-string p0, "PORTRAIT"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
