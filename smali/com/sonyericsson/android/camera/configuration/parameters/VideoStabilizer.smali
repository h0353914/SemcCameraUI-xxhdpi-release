.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;
.super Ljava/lang/Enum;
.source "VideoStabilizer.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingBooleanValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingBooleanValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

.field public static final enum INTELLIGENT_ACTIVE:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

.field public static final enum ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

.field public static final enum STEADY_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

.field public static final TAG:Ljava/lang/String; = "VideoStabilizer"

.field private static final TEXT_ID_OVS:I = 0x7f0f02f4

.field private static final TEXT_ID_SS:I = 0x7f0f0443

.field private static final TEXT_ID_VS:I = 0x7f0f04a8

.field private static final VIDEOSTABILIZER_TYPE_INTELLIGENT_ACTIVE:Ljava/lang/String; = "INTELLIGENT_ACTIVE"

.field private static final VIDEOSTABILIZER_TYPE_OFF:Ljava/lang/String; = "OFF"

.field private static final VIDEOSTABILIZER_TYPE_STEADY_SHOT:Ljava/lang/String; = "STEADY_SHOT"


# instance fields
.field private final mIconId:I

.field private final mTextId:I

.field private final mValue:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;
    .locals 4

    .line 33
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->STEADY_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->INTELLIGENT_ACTIVE:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    .line 34
    new-instance v6, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    const v4, 0x7f0f03bf

    const-string v5, "on"

    const-string v1, "ON"

    const/4 v2, 0x0

    const/4 v3, -0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    .line 38
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    const v11, 0x7f0f03be

    const-string v12, "off"

    const-string v8, "OFF"

    const/4 v9, 0x1

    const/4 v10, -0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    .line 43
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    const v5, 0x7f0f0442

    const-string v6, "on"

    const-string v2, "STEADY_SHOT"

    const/4 v3, 0x2

    const/4 v4, -0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->STEADY_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    .line 47
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    const v11, 0x7f0f0114

    const-string v12, "intelligent_active"

    const-string v8, "INTELLIGENT_ACTIVE"

    const/4 v9, 0x3

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->INTELLIGENT_ACTIVE:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    .line 33
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->$values()[Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    move-result-object v0

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

    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 89
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->mIconId:I

    .line 90
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->mTextId:I

    .line 91
    iput-object p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;
    .locals 0

    .line 153
    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->getVideoStabilizerOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    move-result-object p0

    return-object p0
.end method

.method public static getParameterKeyTitleText()I
    .locals 1

    const v0, 0x7f0f04a8

    return v0
.end method

.method public static getRecommendedVideoStabilizerValue(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;
    .locals 2

    .line 202
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getRecommendedVideoStabilizerValue() mode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " videoSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 204
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 206
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    .line 215
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 216
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0f04dd

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 219
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getRecommendedVideoStabilizerValue() default:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 222
    :cond_1
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 223
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0, p2, p3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->isVideoStabilizerSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 224
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    return-object p0

    .line 226
    :cond_2
    const-string v0, "INTELLIGENT_ACTIVE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 227
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0, p2, p3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->isVideoStabilizerSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 228
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    return-object p0

    .line 230
    :cond_3
    const-string v0, "STEADY_SHOT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 231
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0, p2, p3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->isVideoStabilizerSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 232
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    return-object p0

    .line 236
    :cond_4
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    return-object p0

    .line 209
    :cond_5
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    return-object p0
.end method

.method public static getVideoStabilizerOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;
    .locals 3

    .line 164
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 173
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const-string v2, "intelligent_active"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    .line 177
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const-string v1, "on"

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 178
    :cond_0
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_1
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    .line 181
    new-array p0, p0, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    return-object p0

    .line 167
    :cond_2
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    filled-new-array {p0}, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    move-result-object p0

    return-object p0
.end method

.method public static isVideoStabilizerSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Z
    .locals 2

    .line 241
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isVideoStabilizerSupported() cameraId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " videoSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 243
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " videoHdr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 244
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 246
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isVideoStabilizerSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Z

    move-result p0

    return p0
.end method

.method public static final preload()V
    .locals 0

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;
    .locals 1

    .line 33
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;
    .locals 1

    .line 33
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .locals 0

    .line 101
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;)V

    return-void
.end method

.method public getBooleanValue()Z
    .locals 1

    .line 144
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getIconId()I
    .locals 0

    .line 119
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->mIconId:I

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .locals 0

    .line 109
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .locals 0

    const p0, 0x7f0f0443

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 186
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextId()I
    .locals 0

    .line 129
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->mTextId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->mValue:Ljava/lang/String;

    return-object p0
.end method
