.class final Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;
.super Ljava/lang/Object;
.source "CameraStaticParameters.java"


# static fields
.field private static final FORMAT_IMPLEMENTATION_DEFINED:I = 0x22

.field private static final FORMAT_JPEG:I = 0x21

.field public static final SENSOR_NAME1_BEAGLE:Ljava/lang/String; = "SOI13BS1"

.field public static final SENSOR_NAME1_BLAKISTON:Ljava/lang/String; = "SOI20BS0"

.field public static final SENSOR_NAME1_JP1:Ljava/lang/String; = "SEM12BS0HOUOU"

.field public static final SENSOR_NAME1_PANSY:Ljava/lang/String; = "LGI05BN1"

.field public static final SENSOR_NAME1_POODLE:Ljava/lang/String; = "LGI13BS0"

.field public static final SENSOR_NAME1_SM12:Ljava/lang/String; = "IMX300PIONEER"

.field public static final SENSOR_NAME1_SM13:Ljava/lang/String; = "S5K3L6"

.field public static final SENSOR_NAME1_SM22:Ljava/lang/String; = "IMX300DISCOVERY"

.field public static final SENSOR_NAME1_SM42:Ljava/lang/String; = "IMX300VOYAGER"

.field public static final SENSOR_NAME1_SNAPPER:Ljava/lang/String; = "LGI08BS0"

.field public static final SENSOR_NAME2_BEAGLE:Ljava/lang/String; = "SEM13BS1"

.field public static final SENSOR_NAME2_BLAKISTON:Ljava/lang/String; = "SOI20BS2"

.field public static final SENSOR_NAME2_JP1:Ljava/lang/String; = "CHI08BS0HOUOU"

.field public static final SENSOR_NAME2_PANSY:Ljava/lang/String; = "CHI05BN1"

.field public static final SENSOR_NAME2_POODLE:Ljava/lang/String; = "MTM13BS0"

.field public static final SENSOR_NAME2_SM12:Ljava/lang/String; = "IMX219PIONEER"

.field public static final SENSOR_NAME2_SM13:Ljava/lang/String; = "S5K4H7KIRIN"

.field public static final SENSOR_NAME2_SM22:Ljava/lang/String; = "IMX219DISCOVERY"

.field public static final SENSOR_NAME2_SM42:Ljava/lang/String; = "IMX219VOYAGER"

.field public static final SENSOR_NAME2_SNAPPER:Ljava/lang/String; = "CHI08BS0"

.field public static final SENSOR_NAME3_JP1:Ljava/lang/String; = "LGI08BS0HOUOU"

.field public static final SENSOR_NAME3_SM13:Ljava/lang/String; = "S5K4E8"

.field public static final SENSOR_NAME3_SM22:Ljava/lang/String; = "IMX234DISCOVERY"

.field public static final SENSOR_NAME3_SM23:Ljava/lang/String; = "S5K4H8"

.field public static final SENSOR_NAME4_SM23:Ljava/lang/String; = "IMX486-S5K4H8"

.field public static final SENSOR_NAME_COOPER:Ljava/lang/String; = "SOS20FW0"

.field public static final SENSOR_NAME_COOPER_TMP:Ljava/lang/String; = "SOI20BSA"

.field public static final SENSOR_NAME_GOBY:Ljava/lang/String; = "SUN13BS1"

.field public static final SENSOR_NAME_NONE:Ljava/lang/String; = ""

.field public static final SENSOR_NAME_ROSE:Ljava/lang/String; = "CHI08BS1"

.field public static final SENSOR_NAME_ZAMBEZI_FRONT:Ljava/lang/String; = "HI846_FRONT"

.field public static final SENSOR_NAME_ZAMBEZI_SAT:Ljava/lang/String; = "IMX582_HI846_HI847_MULTI"

.field public static final SENSOR_NAME_ZAMBEZI_TELE:Ljava/lang/String; = "HI847"

.field public static final SENSOR_NAME_ZAMBEZI_UWIDE:Ljava/lang/String; = "HI846_BACK"

.field public static final SENSOR_NAME_ZAMBEZI_WIDE:Ljava/lang/String; = "IMX582"

.field public static final SHUTTER_SPEED_INVERSE_VALUES:[Ljava/lang/Integer;

.field private static final TAG:Ljava/lang/String; = "CameraStaticParameters"


# instance fields
.field private mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private mStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const/4 v0, 0x1

    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0xf

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0x1e

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v10, 0x3c

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v11, 0x7d

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v12, 0xfa

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v13, 0x1f4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v14, 0x3e8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v15, 0x7d0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0xfa0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v6, 0xd

    new-array v6, v6, [Ljava/lang/Integer;

    const/16 v17, 0x0

    aput-object v1, v6, v17

    aput-object v3, v6, v0

    aput-object v5, v6, v2

    const/4 v0, 0x3

    aput-object v7, v6, v0

    aput-object v8, v6, v4

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v10, v6, v0

    const/4 v0, 0x7

    aput-object v11, v6, v0

    const/16 v0, 0x8

    aput-object v12, v6, v0

    const/16 v0, 0x9

    aput-object v13, v6, v0

    const/16 v0, 0xa

    aput-object v14, v6, v0

    const/16 v0, 0xb

    aput-object v15, v6, v0

    const/16 v0, 0xc

    aput-object v16, v6, v0

    sput-object v6, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->SHUTTER_SPEED_INVERSE_VALUES:[Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 99
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->mStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    return-void
.end method

.method private static flatten([I)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    .line 473
    const-string p0, ""

    return-object p0

    .line 475
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 476
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    if-eqz v1, :cond_1

    const/16 v2, 0x2c

    .line 478
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 480
    :cond_1
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 482
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private tryGetCharacteristics(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 113
    :try_start_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 115
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "tryGetCharacteristics: Unknown key: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getActiveArraySize()Landroid/graphics/Rect;
    .locals 1

    .line 1091
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-eqz p0, :cond_0

    .line 1092
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 1095
    invoke-virtual {p0, v0, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    return-object p0

    .line 1098
    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0
.end method

.method public getExposureCompensationStep()F
    .locals 1

    .line 288
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Rational;

    .line 289
    invoke-virtual {p0}, Landroid/util/Rational;->floatValue()F

    move-result p0

    return p0
.end method

.method public getFusionSupportedPictureSizes()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 1026
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1028
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_SCALER_AVAILABLE_FUSION_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->tryGetCharacteristics(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    if-eqz p0, :cond_3

    .line 1030
    array-length v1, p0

    rem-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .line 1035
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 1036
    aget-wide v3, p0, v2

    const-wide/16 v5, 0x21

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    goto :goto_1

    .line 1039
    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    add-int/lit8 v4, v2, 0x1

    aget-wide v4, p0, v4

    long-to-int v4, v4

    add-int/lit8 v5, v2, 0x2

    aget-wide v5, p0, v5

    long-to-int v5, v5

    invoke-direct {v3, v1, v1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    .line 1042
    :cond_2
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "getFusionSupportedPictureSizes() : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-object v0
.end method

.method public getFusionSupportedVideoConfiguration()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;",
            ">;"
        }
    .end annotation

    .line 1049
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1051
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_SCALER_AVAILABLE_FUSION_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->tryGetCharacteristics(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    if-eqz p0, :cond_3

    .line 1053
    array-length v1, p0

    rem-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .line 1057
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    .line 1058
    aget-wide v3, p0, v2

    const-wide/16 v5, 0x22

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    goto :goto_1

    .line 1062
    :cond_1
    new-instance v3, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;

    add-int/lit8 v4, v2, 0x1

    aget-wide v5, p0, v4

    long-to-int v5, v5

    add-int/lit8 v6, v2, 0x2

    aget-wide v7, p0, v6

    long-to-int v7, v7

    add-int/lit8 v8, v2, 0x3

    aget-wide v9, p0, v8

    const-wide/32 v11, 0x3b9aca00

    div-long v9, v11, v9

    long-to-int v9, v9

    invoke-direct {v3, v5, v7, v1, v9}, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;-><init>(IIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1066
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "getFusionSupportedVideoConfiguration() : (width, height, maxfps) = ("

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-wide v4, p0, v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-wide v5, p0, v6

    long-to-int v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-wide v4, p0, v8

    div-long/2addr v11, v4

    long-to-int v4, v11

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    :cond_3
    :goto_2
    return-object v0
.end method

.method public getLensFacing()I
    .locals 2

    .line 1103
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 1104
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getLensFacing() : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return p0
.end method

.method public getMacroValueForManualFocus()F
    .locals 2

    .line 165
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    .line 166
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getMacroValueForManualFocus() : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 170
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public getManualIsoSupportedPictureSizes()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 903
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 905
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_SCALER_AVAILABLE_MANUAL_ISO_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->tryGetCharacteristics(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    if-eqz p0, :cond_3

    .line 907
    array-length v1, p0

    rem-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .line 912
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 913
    aget-wide v3, p0, v2

    const-wide/16 v5, 0x21

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    goto :goto_1

    .line 916
    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    add-int/lit8 v4, v2, 0x1

    aget-wide v4, p0, v4

    long-to-int v4, v4

    add-int/lit8 v5, v2, 0x2

    aget-wide v5, p0, v5

    long-to-int v5, v5

    invoke-direct {v3, v1, v1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    .line 919
    :cond_2
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "getManualIsoSupportedPictureSizes() : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-object v0
.end method

.method public getMaxAwbColorCompensationAb()I
    .locals 3

    .line 623
    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_CONTROL_AWB_COLOR_COMPENSATION_AB_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->tryGetCharacteristics(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 629
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getMaxAwbColorCompensationAb() : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 631
    :cond_1
    aget p0, p0, v1

    return p0
.end method

.method public getMaxExposureCompensation()I
    .locals 1

    .line 278
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    .line 279
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getMaxNumDetectedFaces()I
    .locals 1

    .line 693
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_MAX_FACE_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getMaxNumFocusAreas()I
    .locals 2

    .line 233
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 235
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getMaxNumFocusAreas() : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 240
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getMaxShutterSpeed()J
    .locals 2

    .line 448
    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->tryGetCharacteristics(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    if-eqz p0, :cond_0

    .line 450
    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 451
    aget-wide v0, p0, v1

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method public getMaxSoftSkinLevel()I
    .locals 3

    .line 659
    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_CONTROL_AVAILABLE_STILL_SKIN_SMOOTH_LEVEL_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->tryGetCharacteristics(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_1

    .line 662
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getMaxSoftSkinLevel() : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 663
    :cond_0
    aget p0, p0, v1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getMaxZoomRatio()F
    .locals 1

    .line 606
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    .line 607
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public getMinAwbColorCompensationAb()I
    .locals 3

    .line 635
    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_CONTROL_AWB_COLOR_COMPENSATION_AB_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->tryGetCharacteristics(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 641
    :cond_0
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getMinAwbColorCompensationAb() : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 643
    :cond_1
    aget p0, p0, v0

    return p0
.end method

.method public getMinExposureCompensation()I
    .locals 1

    .line 283
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    .line 284
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getMinExposureTimeLimit()J
    .locals 2

    .line 152
    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_CONTROL_MIN_EXPOSURE_TIME_LIMIT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->tryGetCharacteristics(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    .line 154
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getMinExposureTimeLimit() : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    if-nez p0, :cond_1

    const-wide/16 v0, 0x0

    return-wide v0

    .line 160
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinShutterSpeed()J
    .locals 2

    .line 463
    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->tryGetCharacteristics(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    if-eqz p0, :cond_0

    .line 465
    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 466
    aget-wide v0, p0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public getMinSoftSkinLevel()I
    .locals 3

    .line 670
    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_CONTROL_AVAILABLE_STILL_SKIN_SMOOTH_LEVEL_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->tryGetCharacteristics(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 673
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getMinSoftSkinLevel() : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 674
    :cond_0
    aget p0, p0, v0

    return p0

    :cond_1
    return v0
.end method

.method public getPreferredPreviewSizeForHdrVideo()Landroid/graphics/Rect;
    .locals 4

    .line 979
    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_SCALER_PREFERRED_HDR_VIDEO_PREVIEW_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->tryGetCharacteristics(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_2

    .line 981
    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 986
    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-direct {p0, v1, v1, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 987
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    .line 988
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getPreferredPreviewSizeForHdrVideo() : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 989
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 988
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-object p0

    .line 983
    :cond_2
    :goto_0
    const-string v0, "Preview Size for Video HDR does not supported."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    .line 984
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->getPreferredPreviewSizeForVideo()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getPreferredPreviewSizeForStill()Landroid/graphics/Rect;
    .locals 4

    .line 868
    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_SCALER_PREFERRED_STILL_PREVIEW_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->tryGetCharacteristics(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_2

    .line 870
    array-length v0, p0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 873
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    aget v2, p0, v1

    const/4 v3, 0x1

    aget p0, p0, v3

    invoke-direct {v0, v1, v1, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 874
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "getPreferredPreviewSizeForStill() : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 875
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string/jumbo v1, "x"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 874
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPreferredPreviewSizeForVideo()Landroid/graphics/Rect;
    .locals 4

    .line 925
    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_SCALER_PREFERRED_VIDEO_PREVIEW_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->tryGetCharacteristics(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_2

    .line 927
    array-length v0, p0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 930
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    aget v2, p0, v1

    const/4 v3, 0x1

    aget p0, p0, v3

    invoke-direct {v0, v1, v1, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 931
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "getPreferredPreviewSizeForVideo() : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 932
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string/jumbo v1, "x"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 931
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSensorName()Ljava/lang/String;
    .locals 2

    .line 1110
    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_INFO_SENSOR_NAME:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->tryGetCharacteristics(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    .line 1113
    const-string p0, ""

    .line 1115
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getSensorName() : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-object p0
.end method

.method public getStillHdrSupportedPictureSizes()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 571
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 573
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_SCALER_AVAILABLE_STILL_HDR_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->tryGetCharacteristics(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    if-eqz p0, :cond_3

    .line 575
    array-length v1, p0

    rem-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .line 580
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 581
    aget-wide v3, p0, v2

    const-wide/16 v5, 0x21

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    goto :goto_1

    .line 584
    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    add-int/lit8 v4, v2, 0x1

    aget-wide v4, p0, v4

    long-to-int v4, v4

    add-int/lit8 v5, v2, 0x2

    aget-wide v5, p0, v5

    long-to-int v5, v5

    invoke-direct {v3, v1, v1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    .line 587
    :cond_2
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "getStillHdrSupportedPictureSizes() : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-object v0
.end method

.method public getSupportedAeModes()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 333
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 334
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->tryGetCharacteristics(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-nez p0, :cond_0

    return-object v0

    .line 344
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v2, v1, :cond_1

    aget v7, p0, v2

    const/4 v8, 0x1

    packed-switch v7, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    move v6, v8

    goto :goto_1

    :pswitch_1
    move v5, v8

    goto :goto_1

    :pswitch_2
    move v4, v8

    goto :goto_1

    :pswitch_3
    move v3, v8

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 386
    const-string p0, "auto"

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v4, :cond_3

    .line 389
    const-string p0, "iso-prio"

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v5, :cond_4

    .line 392
    const-string/jumbo p0, "shutter-prio"

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v6, :cond_5

    .line 395
    const-string p0, "semi-auto"

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    :cond_5
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "getSupportedAeModes() : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_6
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getSupportedAeRegionModes()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 294
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_CONTROL_AE_AVAILABLE_REGION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->tryGetCharacteristics(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-nez p0, :cond_0

    return-object v0

    .line 300
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_7

    aget v3, p0, v2

    if-eqz v3, :cond_6

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    const/4 v4, 0x7

    if-eq v3, v4, :cond_1

    goto :goto_1

    .line 306
    :cond_1
    const-string v3, "face"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 318
    :cond_2
    const-string/jumbo v3, "user"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 312
    :cond_3
    const-string v3, "multi"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 315
    :cond_4
    const-string/jumbo v3, "spot"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 303
    :cond_5
    const-string v3, "center-weighted"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 309
    :cond_6
    const-string v3, "frame-average"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 326
    :cond_7
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_8

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "getSupportedAeRegionModes() : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_8
    return-object v0
.end method

.method public getSupportedBacklightCorrection()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1148
    const-string v1, "off"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1150
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_CONTROL_AVAILABLE_VIDEO_HDR_BACKLIGHT_CORRECTION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->tryGetCharacteristics(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_1

    .line 1155
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p0, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 1158
    :cond_0
    const-string v3, "auto"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1167
    :cond_1
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "getSupportedbacklightCorrection() : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public getSupportedDistortionCorrection()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1122
    const-string v1, "off"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1124
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_CONTROL_AVAILABLE_DISTORTION_CORRECTION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->tryGetCharacteristics(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_1

    .line 1129
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p0, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 1132
    :cond_0
    const-string v3, "on"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1141
    :cond_1
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "getSupportedDistortionCorrection() : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public getSupportedFlashModes()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 499
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 500
    const-string v1, "off"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->tryGetCharacteristics(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    if-eqz v1, :cond_3

    .line 506
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget v4, v1, v3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    goto :goto_1

    .line 515
    :cond_0
    const-string v4, "red-eye"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 512
    :cond_1
    const-string v4, "on"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 509
    :cond_2
    const-string v4, "auto"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 530
    :cond_3
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 531
    const-string/jumbo p0, "torch"

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    :cond_4
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "getSupportedFlashModes() : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_5
    return-object v0
.end method

.method public getSupportedFocusAreaModes()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 245
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_CONTROL_AF_AVAILABLE_REGION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->tryGetCharacteristics(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-nez p0, :cond_0

    return-object v0

    .line 251
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget v3, p0, v2

    if-eqz v3, :cond_4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    goto :goto_1

    .line 263
    :cond_1
    const-string/jumbo v3, "user"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 257
    :cond_2
    const-string v3, "face"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 260
    :cond_3
    const-string v3, "multi"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 254
    :cond_4
    const-string v3, "center"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 271
    :cond_5
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "getSupportedFocusAreaModes() : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_6
    return-object v0
.end method

.method public getSupportedFocusModes()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 192
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 193
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    const-string v4, "fixed"

    if-ge v3, v2, :cond_5

    aget v5, v1, v3

    if-eqz v5, :cond_3

    const/4 v4, 0x1

    if-eq v5, v4, :cond_2

    const/4 v4, 0x3

    if-eq v5, v4, :cond_1

    const/4 v4, 0x4

    if-eq v5, v4, :cond_0

    goto :goto_1

    .line 215
    :cond_0
    const-string v4, "continuous-picture"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 212
    :cond_1
    const-string v4, "continuous-video"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 209
    :cond_2
    const-string v4, "auto"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 197
    :cond_3
    iget-object v5, p0, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    if-eqz v5, :cond_4

    .line 199
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_4

    .line 200
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 202
    :cond_4
    const-string v4, "manual"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    const-string v4, "infinity"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 223
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_6

    .line 224
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_6
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_7

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "getSupportedFocusModes() : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_7
    return-object v0
.end method

.method public getSupportedFusionIsoRange()Landroid/util/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1078
    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_SENSOR_INFO_FUSION_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->tryGetCharacteristics(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-nez v0, :cond_0

    .line 1082
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    return-object p0

    .line 1085
    :cond_0
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "getSupportedFusionIsoRange() : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->flatten([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1087
    :cond_1
    new-instance p0, Landroid/util/Range;

    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object p0
.end method

.method public getSupportedFusionModes()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 995
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 997
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_CONTROL_AVAILABLE_FUSION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->tryGetCharacteristics(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-nez p0, :cond_0

    return-object v0

    .line 1002
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget v3, p0, v2

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    goto :goto_1

    .line 1011
    :cond_1
    const-string v3, "auto"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1008
    :cond_2
    const-string v3, "on"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1005
    :cond_3
    const-string v3, "off"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1019
    :cond_4
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "getSupportedFusionModes() : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_5
    return-object v0
.end method

.method public getSupportedHfrPreviewFpsRange()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation

    .line 817
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 818
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->HFR_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->tryGetCharacteristics(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-nez p0, :cond_1

    .line 821
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "getSupportedHFSPreviewFpsRange() null"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    .line 826
    :goto_0
    array-length v2, p0

    div-int/lit8 v2, v2, 0x3

    if-ge v1, v2, :cond_2

    mul-int/lit8 v2, v1, 0x3

    .line 827
    aget v2, p0, v2

    .line 828
    filled-new-array {v2, v2}, [I

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 831
    :cond_2
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "getSupportedHFSPreviewFpsRange() "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method

.method public getSupportedHighFrameRateVideoConfiguration()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;",
            ">;"
        }
    .end annotation

    .line 938
    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->HFR_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->tryGetCharacteristics(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-nez p0, :cond_1

    .line 941
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    const-string p0, "getSupportedHighFrameRateVideoConfiguration() null"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 945
    :cond_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getSupportedHighFrameRateVideoConfiguration() : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->flatten([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 946
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 948
    :goto_0
    array-length v4, p0

    div-int/lit8 v4, v4, 0x3

    if-ge v2, v4, :cond_3

    add-int/lit8 v4, v3, 0x1

    .line 949
    aget v5, p0, v3

    add-int/lit8 v6, v3, 0x2

    .line 950
    aget v4, p0, v4

    add-int/lit8 v3, v3, 0x3

    .line 951
    aget v6, p0, v6

    .line 952
    new-instance v7, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;

    invoke-direct {v7, v4, v6, v1, v5}, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;-><init>(IIII)V

    .line 954
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getSupportedInputSize()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 850
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 851
    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->mStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 852
    new-instance v2, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters$1;-><init>(Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 861
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    .line 862
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getSupportedIsoRange()Landroid/util/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 486
    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->tryGetCharacteristics(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-nez v0, :cond_0

    .line 490
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    return-object p0

    .line 493
    :cond_0
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "getSupportedIsoRange() : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->flatten([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 495
    :cond_1
    new-instance p0, Landroid/util/Range;

    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object p0
.end method

.method public getSupportedPictureSizes()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 881
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 883
    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->mStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighResolutionOutputSizes(I)[Landroid/util/Size;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 886
    array-length v4, v1

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v1, v5

    .line 887
    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-direct {v7, v3, v3, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 890
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->mStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {p0, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 892
    array-length v1, p0

    move v2, v3

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v4, p0, v2

    .line 893
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-direct {v5, v3, v3, v6, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 896
    :cond_1
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "getSupportedPictureSizes() : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public getSupportedPowerSaveModes()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_CONTROL_AVAILABLE_POWER_SAVE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->tryGetCharacteristics(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_3

    .line 125
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget v3, p0, v2

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 136
    :cond_0
    const-string/jumbo v3, "ultra-low"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 132
    :cond_1
    const-string v3, "low"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 128
    :cond_2
    const-string v3, "off"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 146
    :cond_3
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "getSupportedPowerSaveModes() : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4
    return-object v0
.end method

.method public getSupportedPreviewFpsRange()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation

    .line 837
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 838
    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/util/Range;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 840
    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    filled-new-array {v5, v4}, [I

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 843
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->getSupportedHfrPreviewFpsRange()Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 844
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "getSupportedPreviewFpsRange() : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public getSupportedPreviewSizes()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 798
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->mStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    const-class v0, Landroid/view/SurfaceHolder;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object p0

    .line 799
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 803
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    .line 804
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-direct {v5, v2, v2, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 806
    sget-boolean v5, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getSupportedPreviewSizes() : size:  "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 808
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 806
    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 810
    :cond_2
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "getSupportedPreviewSizes() : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method

.method public getSupportedShutterSpeedValues()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 412
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 417
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->tryGetCharacteristics(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    if-eqz p0, :cond_4

    .line 420
    array-length v1, p0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 423
    aget-wide v2, p0, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    .line 424
    aget-wide v3, p0, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 426
    :goto_0
    sget-object v3, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->SHUTTER_SPEED_INVERSE_VALUES:[Ljava/lang/Integer;

    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 427
    aget-object v3, v3, v1

    .line 428
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const v4, 0x3b9aca00

    div-int/2addr v4, v3

    int-to-long v3, v4

    .line 427
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 429
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1

    .line 430
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1

    .line 431
    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 435
    :cond_2
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "getSupportedShutterSpeedValues() : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3
    return-object v0

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSupportedSlowMotionVideoFpsRanges()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/util/capability/NormalSlowMotionVideoConfiguration;",
            ">;"
        }
    .end annotation

    .line 1209
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->mStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoSizes()[Landroid/util/Size;

    move-result-object v0

    .line 1210
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1212
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .line 1213
    iget-object v6, p0, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->mStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v6, v5}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoFpsRangesFor(Landroid/util/Size;)[Landroid/util/Range;

    move-result-object v6

    .line 1215
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1216
    array-length v8, v6

    move v9, v3

    :goto_1
    if-ge v9, v8, :cond_0

    aget-object v10, v6, v9

    .line 1217
    invoke-virtual {v10}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    filled-new-array {v11, v10}, [I

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1219
    :cond_0
    new-instance v6, Lcom/sonyericsson/android/camera/util/capability/NormalSlowMotionVideoConfiguration;

    invoke-direct {v6, v5, v7}, Lcom/sonyericsson/android/camera/util/capability/NormalSlowMotionVideoConfiguration;-><init>(Landroid/util/Size;Ljava/util/List;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getSupportedSteadyShotModes()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1175
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_OPTICAL_STABILIZATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->tryGetCharacteristics(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 1177
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v2, v5, :cond_1

    .line 1178
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->tryGetCharacteristics(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, [I

    if-eqz v1, :cond_0

    .line 1180
    array-length p0, v1

    if-eq p0, v5, :cond_1

    .line 1182
    :cond_0
    filled-new-array {v3, v4}, [I

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    .line 1186
    const-string p0, "Video stabilization is not supported."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 1189
    :cond_2
    array-length p0, v1

    :goto_0
    if-ge v3, p0, :cond_5

    aget v2, v1, v3

    if-nez v2, :cond_3

    .line 1191
    const-string v2, "off"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    if-ne v2, v4, :cond_4

    .line 1193
    const-string v2, "on"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public getSupportedStillHdrValues()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 540
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 541
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_CONTROL_AVAILABLE_STILL_HDR_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->tryGetCharacteristics(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    if-eqz v1, :cond_2

    .line 544
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, v1, v3

    if-eqz v4, :cond_1

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    goto :goto_1

    .line 550
    :cond_0
    const-string v4, "on-still-hdr"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 547
    :cond_1
    const-string v4, "off"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 560
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->isConditionDetectionSupported()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 561
    const-string p0, "auto"

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    :cond_3
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "getSupportedStillHdrValues() : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4
    return-object v0
.end method

.method public getSupportedStillNightModeValues()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1315
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_CONTROL_AVAILABLE_STILL_NIGHT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->tryGetCharacteristics(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_3

    .line 1318
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget v3, p0, v2

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 1327
    :cond_0
    const-string v3, "auto"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1324
    :cond_1
    const-string v3, "on"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1321
    :cond_2
    const-string v3, "off"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1335
    :cond_3
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "getSupportedStillNightModeValues() : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4
    return-object v0
.end method

.method public getSupportedSuperResolutionZoom()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1263
    const-string v1, "off"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1265
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_CONTROL_AVAILABLE_SUPER_RESOLUTION_ZOOM_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->tryGetCharacteristics(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_1

    .line 1270
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p0, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 1273
    :cond_0
    const-string v3, "auto"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1282
    :cond_1
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "getSupportedSuperResolutionZoom() : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public getSupportedVideoConfiguration()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;",
            ">;"
        }
    .end annotation

    .line 960
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->mStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    const-class v1, Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v0

    .line 961
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_0

    return-object v1

    .line 965
    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 966
    iget-object v6, p0, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->mStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    const-class v7, Landroid/media/MediaRecorder;

    invoke-virtual {v6, v7, v5}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputMinFrameDuration(Ljava/lang/Class;Landroid/util/Size;)J

    move-result-wide v6

    .line 968
    new-instance v8, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;

    .line 969
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v9

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v10

    const-wide/32 v11, 0x3b9aca00

    div-long/2addr v11, v6

    long-to-int v6, v11

    invoke-direct {v8, v9, v10, v3, v6}, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;-><init>(IIII)V

    .line 968
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 971
    sget-boolean v7, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getSupportedVideoConfiguration() : (width, height, maxfps) = ("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 972
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    .line 971
    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getSupportedVideoSuperResolutionZoom()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1289
    const-string v1, "off"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1291
    sget-object v1, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_CONTROL_AVAILABLE_VIDEO_SUPER_RESOLUTION_ZOOM_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->tryGetCharacteristics(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_1

    .line 1296
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p0, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 1299
    :cond_0
    const-string v3, "auto"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1308
    :cond_1
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "getSupportedVideoSuperResolutionZoom() : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public getSupportedWhiteBalance()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 403
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 404
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 405
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    .line 406
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;->getApi1Value(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getWideZoomTargetRatio()F
    .locals 2

    .line 611
    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_SCALER_WIDE_ZOOM_TARGET_RATIO:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->tryGetCharacteristics(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    .line 614
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getWideZoomTargetRatio() : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    if-nez p0, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    .line 619
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public getWledTriggerLuxIndex()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation

    .line 1227
    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_SENSOR_INFO_WLED_TRIGGER_LUX_INDEX:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->tryGetCharacteristics(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 1229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    .line 1231
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public getZoomSwitchPointRatio()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isConditionDetectionSupported()Z
    .locals 6

    .line 681
    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_STATISTICS_INFO_AVAILABLE_CONDITION_DETECT_MODE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->tryGetCharacteristics(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 687
    :cond_0
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    new-array v1, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isConditionDetectionSupported() : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v5, p0

    if-ne v5, v2, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v0

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 689
    :cond_2
    array-length p0, p0

    if-ne p0, v2, :cond_3

    move v0, v3

    :cond_3
    return v0
.end method

.method public isContinuesBokehSupported()Z
    .locals 5

    .line 784
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_EXTENDED_SCENE_MODE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 785
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->tryGetCharacteristics(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/hardware/camera2/params/Capability;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 789
    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 790
    invoke-virtual {v3}, Landroid/hardware/camera2/params/Capability;->getMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public isFaceDetectionAvailable()Z
    .locals 2

    .line 697
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_0

    .line 701
    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 702
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->getMaxNumDetectedFaces()I

    move-result p0

    if-lez p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isManualFocusSupported()Z
    .locals 6

    .line 175
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 179
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 180
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, v0, v3

    if-nez v4, :cond_1

    .line 181
    iget-object v4, p0, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public isObjectTrackingSupported()Z
    .locals 2

    .line 724
    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_STATISTICS_INFO_AVAILABLE_OBJECT_TRACKING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->tryGetCharacteristics(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 729
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isObjectTrackingSupported() : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 730
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 729
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 731
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isOpticalZoomSupported()Z
    .locals 5

    .line 751
    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_LOGICAL_MULTI_CAMERA_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->tryGetCharacteristics(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 756
    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p0, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    return v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public isSceneDetectionSupported()Z
    .locals 6

    .line 647
    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_STATISTICS_INFO_AVAILABLE_SCENE_DETECT_MODE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->tryGetCharacteristics(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 653
    :cond_0
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    new-array v1, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isSceneDetectionSupported() : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v5, p0

    if-ne v5, v2, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v0

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 655
    :cond_2
    array-length p0, p0

    if-ne p0, v2, :cond_3

    move v0, v3

    :cond_3
    return v0
.end method

.method public isSmileDetectionAvailable()Z
    .locals 6

    .line 711
    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_STATISTICS_INFO_AVAILABLE_FACE_SMILE_SCORES_MODE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->tryGetCharacteristics(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 717
    :cond_0
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    new-array v1, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isSmileDetectionAvailable() : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v5, p0

    if-ne v5, v2, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v0

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 719
    :cond_2
    array-length p0, p0

    if-ne p0, v2, :cond_3

    move v0, v3

    :cond_3
    return v0
.end method

.method public isStillBokehSupported()Z
    .locals 5

    .line 770
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_EXTENDED_SCENE_MODE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 771
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->tryGetCharacteristics(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/hardware/camera2/params/Capability;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 775
    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 776
    invoke-virtual {v3}, Landroid/hardware/camera2/params/Capability;->getMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    return v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public isSupportVideoOIS()Z
    .locals 2

    .line 1200
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_OPTICAL_STABILIZATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->tryGetCharacteristics(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1205
    :cond_0
    array-length p0, p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isTrackingFocusDuringLockSupported()Z
    .locals 2

    .line 735
    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_STATISTICS_INFO_AVAILABLE_TRACKING_FOCUS_DURING_LOCK:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->tryGetCharacteristics(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 740
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isTrackingFocusDuringLockSupported() : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 741
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 740
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 742
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isVideoHdrSupported()Z
    .locals 1

    .line 600
    sget-object v0, Lcom/sonyericsson/android/camera/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_CONTROL_AVAILABLE_VIDEO_HDR_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/util/capability/CameraStaticParameters;->tryGetCharacteristics(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_0

    .line 602
    array-length p0, p0

    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
