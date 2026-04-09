.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;
.super Ljava/lang/Enum;
.source "VideoStabilizer.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

.field public static final enum INTELLIGENT_ACTIVE:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

.field public static final enum ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

.field public static final enum STEADY_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

.field public static final TAG:Ljava/lang/String; = "VideoStabilizer"

.field private static final TEXT_ID_SS:I = 0x7f0f02ba

.field private static final TEXT_ID_VS:I = 0x7f0f030a

.field private static final VIDEOSTABILIZER_TYPE_INTELLIGENT_ACTIVE:Ljava/lang/String; = "INTELLIGENT_ACTIVE"

.field private static final VIDEOSTABILIZER_TYPE_OFF:Ljava/lang/String; = "OFF"

.field private static final VIDEOSTABILIZER_TYPE_STEADY_SHOT:Ljava/lang/String; = "STEADY_SHOT"


# instance fields
.field private final mIconId:I

.field private final mTextId:I

.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 33
    new-instance v6, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    const-string v1, "STEADY_SHOT"

    const-string v5, "on"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const v4, 0x7f0f02b9

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->STEADY_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    .line 37
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    const-string v8, "INTELLIGENT_ACTIVE"

    const-string v12, "intelligent_active"

    const/4 v9, 0x1

    const/4 v10, -0x1

    const v11, 0x7f0f00ed

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->INTELLIGENT_ACTIVE:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    .line 41
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    const-string v2, "ON"

    const-string v6, "on"

    const/4 v3, 0x2

    const/4 v4, -0x1

    const v5, 0x7f0f0284

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    .line 45
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    const-string v8, "OFF"

    const-string v12, "off"

    const/4 v9, 0x3

    const v11, 0x7f0f0283

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    const/4 v0, 0x4

    .line 32
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->STEADY_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->INTELLIGENT_ACTIVE:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 86
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->mIconId:I

    .line 87
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->mTextId:I

    .line 88
    iput-object p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;
    .locals 0

    .line 145
    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->getVideoStabilizerOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    move-result-object p0

    return-object p0
.end method

.method public static getParameterKeyTitleText()I
    .locals 1

    const v0, 0x7f0f02ba

    return v0
.end method

.method public static getRecommendedVideoStabilizerValue(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;
    .locals 5

    .line 200
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRecommendedVideoStabilizerValue() mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 200
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 204
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v2, :cond_8

    .line 213
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 214
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1

    new-array p0, v2, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRecommendedVideoStabilizerValue() size:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v1

    .line 214
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 220
    :cond_1
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    .line 219
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMaxPixelsPictureSize(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Landroid/graphics/Rect;

    move-result-object p0

    .line 222
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/16 v1, 0x1040

    if-ne v0, v1, :cond_2

    .line 223
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    const/16 v0, 0xc30

    if-ne p0, v0, :cond_2

    .line 224
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->isIntelligentActiveSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 225
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->INTELLIGENT_ACTIVE:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    return-object p0

    .line 228
    :cond_2
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->isSteadyShotSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 229
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->STEADY_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    return-object p0

    .line 233
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0f034b

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 236
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_4

    new-array v0, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRecommendedVideoStabilizerValue() mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " default:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 236
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4
    const-string v0, "INTELLIGENT_ACTIVE"

    .line 241
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 242
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->isIntelligentActiveSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 243
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->INTELLIGENT_ACTIVE:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    return-object p0

    .line 244
    :cond_5
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->isSteadyShotSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 245
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->STEADY_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    return-object p0

    :cond_6
    const-string v0, "STEADY_SHOT"

    .line 248
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 249
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->isSteadyShotSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 250
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->STEADY_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    return-object p0

    .line 254
    :cond_7
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    return-object p0

    .line 207
    :cond_8
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    return-object p0
.end method

.method public static getVideoStabilizerOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;
    .locals 4

    .line 156
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    .line 165
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 168
    iget-object v2, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const-string v3, "intelligent_active"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->INTELLIGENT_ACTIVE:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const-string v2, "on"

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 176
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->STEADY_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_1
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    new-array p0, v1, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    return-object p0

    .line 159
    :cond_2
    new-array p0, v2, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    aput-object v0, p0, v1

    return-object p0
.end method

.method public static isIntelligentActive(Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;)Z
    .locals 1

    .line 330
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->INTELLIGENT_ACTIVE:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isIntelligentActiveSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z
    .locals 3

    .line 318
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    .line 319
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->INTELLIGENT_ACTIVE_CONFIGURATION:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;

    .line 320
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, v0, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mWidth:I

    if-ne v1, v2, :cond_0

    .line 321
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, v0, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mHeight:I

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .line 322
    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameRate(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)I

    move-result v1

    iget v0, v0, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mFps:I

    if-gt v1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isSteadyShotSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z
    .locals 3

    .line 294
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    .line 295
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->STEADY_SHOT_CONFIGURATION:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;

    .line 296
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, v0, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mWidth:I

    if-ne v1, v2, :cond_0

    .line 297
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, v0, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mHeight:I

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .line 298
    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameRate(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)I

    move-result v1

    iget v0, v0, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mFps:I

    if-gt v1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static final preload()V
    .locals 0

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;
    .locals 1

    .line 32
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;
    .locals 1

    .line 32
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .locals 0

    .line 98
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;)V

    return-void
.end method

.method public getIconId()I
    .locals 0

    .line 116
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->mIconId:I

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .locals 0

    .line 106
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .locals 0

    const p0, 0x7f0f02ba

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 184
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextId()I
    .locals 0

    .line 126
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->mTextId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->mValue:Ljava/lang/String;

    return-object p0
.end method

.method public isValueEnabled(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Z
    .locals 1

    .line 272
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->INTELLIGENT_ACTIVE:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    if-ne p0, v0, :cond_0

    .line 274
    invoke-static {p1, p2, p3}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyCheckUtil;->isIntelligentActiveAvailable(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Z

    move-result p0

    goto :goto_0

    .line 275
    :cond_0
    sget-object p3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->STEADY_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    if-ne p0, p3, :cond_1

    .line 276
    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->isSteadyShotSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method
