.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;
.super Ljava/lang/Enum;
.source "Hdr.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

.field public static final enum HDR_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

.field public static final enum HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

.field public static final enum HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

.field public static final TAG:Ljava/lang/String; = "Hdr"

.field private static final sParameterTextId:I = 0x7f0f018f


# instance fields
.field private final mIconId:I

.field private final mTextId:I

.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 25
    new-instance v6, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    const-string v1, "HDR_ON"

    const-string v5, "on-still-hdr"

    const/4 v2, 0x0

    const v3, 0x7f08014e

    const v4, 0x7f0f0284

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    .line 29
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    const-string v8, "HDR_AUTO"

    const-string v12, "auto"

    const/4 v9, 0x1

    const v10, 0x7f08014e

    const v11, 0x7f0f0284

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->HDR_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    .line 33
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    const-string v2, "HDR_OFF"

    const-string v6, "off"

    const/4 v3, 0x2

    const v4, 0x7f08014d

    const v5, 0x7f0f0283

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    const/4 v0, 0x3

    .line 24
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->HDR_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

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

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->mIconId:I

    .line 62
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->mTextId:I

    .line 63
    iput-object p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static getDefault(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;
    .locals 1

    .line 134
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    return-object p0

    .line 135
    :cond_1
    :goto_0
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->HDR_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    return-object p0
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;
    .locals 3

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    .line 118
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object v1

    iget-object v1, v1, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->HDR:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    .line 119
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 120
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v2, :cond_1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p0, v2, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result p0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_2

    .line 125
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 126
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 121
    :cond_1
    :goto_0
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->HDR_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 122
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->HDR_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 130
    new-array p0, p0, [Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    return-object p0
.end method

.method public static isResolutionIndependentHdrSupported(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "hdr"

    .line 148
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;
    .locals 1

    .line 24
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;
    .locals 1

    .line 24
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .locals 0

    .line 68
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;)V

    return-void
.end method

.method public getIconId()I
    .locals 0

    .line 93
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->mIconId:I

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .locals 0

    .line 73
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .locals 0

    const p0, 0x7f0f018f

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextId()I
    .locals 0

    .line 103
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->mTextId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->mValue:Ljava/lang/String;

    return-object p0
.end method
