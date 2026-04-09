.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
.super Ljava/lang/Enum;
.source "CapturingMode.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field public static final enum FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field public static final enum FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field public static final enum NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field public static final enum SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field public static final enum SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field public static final enum SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field public static final TAG:Ljava/lang/String; = "CapturingMode"

.field public static final enum UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field public static final enum VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field private static final sParameterTextId:I = 0x7f0f009e

.field private static final sPhotoOptions:[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;


# instance fields
.field private final mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

.field private final mIconId:I

.field private final mTextId:I

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 28
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const-string v1, "UNKNOWN"

    sget-object v6, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;-><init>(Ljava/lang/String;IIIILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 33
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const-string v9, "SCENE_RECOGNITION"

    sget-object v14, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const/4 v10, 0x1

    const/4 v11, -0x1

    const v12, 0x7f0f00d3

    const/4 v13, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;-><init>(Ljava/lang/String;IIIILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 38
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const-string v2, "NORMAL"

    sget-object v7, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const/4 v3, 0x2

    const v4, 0x7f0800a1

    const v5, 0x7f0f00cd

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;-><init>(Ljava/lang/String;IIIILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 43
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const-string v9, "VIDEO"

    sget-object v14, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const/4 v10, 0x3

    const v12, 0x7f0f00cd

    const/4 v13, 0x2

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;-><init>(Ljava/lang/String;IIIILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 48
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const-string v2, "SUPERIOR_FRONT"

    sget-object v7, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const/4 v3, 0x4

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;-><init>(Ljava/lang/String;IIIILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 53
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const-string v9, "FRONT_VIDEO"

    sget-object v14, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const/4 v10, 0x5

    const/4 v12, -0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;-><init>(Ljava/lang/String;IIIILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 60
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const-string v2, "SLOW_MOTION"

    sget-object v7, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const/4 v3, 0x6

    const v4, 0x7f0800a4

    const v5, 0x7f0f0080

    const/4 v6, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;-><init>(Ljava/lang/String;IIIILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 67
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const-string v9, "FRONT_PHOTO"

    sget-object v14, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const/4 v10, 0x7

    const/4 v13, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;-><init>(Ljava/lang/String;IIIILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const/16 v0, 0x8

    .line 26
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const/4 v5, 0x4

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const/4 v5, 0x5

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const/4 v5, 0x6

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const/4 v5, 0x7

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 75
    new-array v0, v4, [Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->sPhotoOptions:[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;",
            ")V"
        }
    .end annotation

    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 108
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->mIconId:I

    .line 109
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->mTextId:I

    .line 110
    iput p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->mType:I

    .line 111
    iput-object p6, p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    return-void
.end method

.method public static convertFrom(Ljava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .locals 4

    .line 247
    :try_start_0
    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    .line 249
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mode["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] is not supported."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public static getPhotoOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .locals 1

    .line 167
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->sPhotoOptions:[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    return-object v0
.end method

.method public static getValidOptions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;",
            ">;"
        }
    .end annotation

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 187
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSceneRecognitionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Back camera doesn\'t support Scene recognition."

    .line 188
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 190
    :cond_0
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFrontCameraSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 193
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSceneRecognitionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Front camera doesn\'t support Scene recognition."

    .line 194
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 196
    :cond_1
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_2
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFrontCameraSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 202
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_3
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFrontCameraSupported()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 210
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .locals 1

    .line 26
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .locals 1

    .line 26
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .locals 0

    .line 121
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    return-void
.end method

.method public getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    return-object p0
.end method

.method public getIconId()I
    .locals 0

    .line 139
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->mIconId:I

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .locals 0

    .line 129
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .locals 0

    const p0, 0x7f0f009e

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 172
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextId()I
    .locals 0

    .line 149
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->mTextId:I

    return p0
.end method

.method public getType()I
    .locals 0

    .line 163
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->mType:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 159
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isFront()Z
    .locals 1

    .line 225
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isMainPhoto()Z
    .locals 2

    .line 217
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSuperiorAuto()Z
    .locals 1

    .line 232
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isVideo()Z
    .locals 1

    .line 239
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->mType:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
