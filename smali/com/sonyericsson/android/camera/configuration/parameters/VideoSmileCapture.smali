.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;
.super Ljava/lang/Enum;
.source "VideoSmileCapture.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

.field public static final enum HIGH:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

.field public static final enum LOW:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

.field public static final enum MIDDLE:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

.field public static final TAG:Ljava/lang/String; = "VideoSmileCapture"

.field private static final sParameterTextId:I = 0x7f0f04a7


# instance fields
.field private final mNotificationIconId:I

.field private final mSmile:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

.field private final mValue:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;
    .locals 4

    .line 20
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->HIGH:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->MIDDLE:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->LOW:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 21
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->HIGH:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    const v2, 0x7f08030d

    const-string v3, "HIGH"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;-><init>(Ljava/lang/String;ILcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->HIGH:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    .line 25
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->MIDDLE:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    const v2, 0x7f08030f

    const-string v3, "MIDDLE"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;-><init>(Ljava/lang/String;ILcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->MIDDLE:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    .line 29
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->LOW:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    const v2, 0x7f08030e

    const-string v3, "LOW"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;-><init>(Ljava/lang/String;ILcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->LOW:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    .line 33
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    const/4 v2, -0x1

    const-string v3, "OFF"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;-><init>(Ljava/lang/String;ILcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    .line 20
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->$values()[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;",
            "I)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    iput-object p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->mSmile:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    .line 61
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->isSmileCaptureOn()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 62
    const-string p1, "on"

    iput-object p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->mValue:Ljava/lang/String;

    goto :goto_0

    .line 64
    :cond_0
    const-string p1, "off"

    iput-object p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->mValue:Ljava/lang/String;

    .line 66
    :goto_0
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->mNotificationIconId:I

    return-void
.end method

.method public static getOptions(ZLcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;
    .locals 0

    if-eqz p0, :cond_0

    .line 136
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    filled-new-array {p0}, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    move-result-object p0

    return-object p0

    .line 138
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSmileDetectionAvailable(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 139
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    .line 141
    new-array p0, p0, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;
    .locals 1

    .line 20
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;
    .locals 1

    .line 20
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .locals 0

    return-void
.end method

.method public getDimenId()I
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->mSmile:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->getDimenId()I

    move-result p0

    return p0
.end method

.method public getIconId()I
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->mSmile:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->getIconId()I

    move-result p0

    return p0
.end method

.method public getIntValue()I
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->mSmile:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .locals 0

    .line 86
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SMILE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .locals 0

    const p0, 0x7f0f04a7

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 146
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationIconId()I
    .locals 0

    .line 116
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->mNotificationIconId:I

    return p0
.end method

.method public getTextId()I
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->mSmile:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->getTextId()I

    move-result p0

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->mValue:Ljava/lang/String;

    return-object p0
.end method

.method public isSmileCaptureOn()Z
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->mSmile:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->isSmileCaptureOn()Z

    move-result p0

    return p0
.end method
