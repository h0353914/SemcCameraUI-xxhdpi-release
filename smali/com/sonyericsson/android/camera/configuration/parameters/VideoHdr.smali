.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;
.super Ljava/lang/Enum;
.source "VideoHdr.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingBooleanValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingBooleanValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

.field public static final enum HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

.field public static final enum HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

.field private static final sParameterTextId:I = 0x7f0f0480


# instance fields
.field private final mIconId:I

.field private final mTextId:I

.field private final mValue:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;
    .locals 2

    .line 20
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    filled-new-array {v0, v1}, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    .line 21
    new-instance v6, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    const v4, 0x7f0f03bf

    const-string v5, "on-video-hdr"

    const-string v1, "HDR_ON"

    const/4 v2, 0x0

    const v3, 0x7f080182

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .line 25
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    const v11, 0x7f0f03be

    const-string v12, "off"

    const-string v8, "HDR_OFF"

    const/4 v9, 0x1

    const v10, 0x7f080181

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .line 20
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->$values()[Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

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

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->mIconId:I

    .line 51
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->mTextId:I

    .line 52
    iput-object p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static getDefault()Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;
    .locals 1

    .line 122
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    return-object v0
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;
    .locals 2

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isVideoHdrSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v1, p0, :cond_0

    .line 114
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p0, 0x0

    .line 118
    new-array p0, p0, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;
    .locals 1

    .line 20
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;
    .locals 1

    .line 20
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .locals 0

    .line 57
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)V

    return-void
.end method

.method public getBooleanValue()Z
    .locals 1

    .line 107
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

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

    .line 82
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->mIconId:I

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .locals 0

    .line 62
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .locals 0

    const p0, 0x7f0f0480

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextId()I
    .locals 0

    .line 92
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->mTextId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->mValue:Ljava/lang/String;

    return-object p0
.end method
