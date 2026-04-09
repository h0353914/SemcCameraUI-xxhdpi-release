.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;
.super Ljava/lang/Enum;
.source "VideoShutterTrigger.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

.field public static final enum SMILE_SHUTTER:Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

.field public static final TAG:Ljava/lang/String; = "VideoShutterTrigger"

.field private static final sParameterTextId:I = 0x7f0f0304


# instance fields
.field private final mTextId:I

.field private mVideoSmileCapture:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 19
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

    const-string v1, "SMILE_SHUTTER"

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->MIDDLE:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    const/4 v3, 0x0

    const v4, 0x7f0f02b3

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;-><init>(Ljava/lang/String;IILcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;->SMILE_SHUTTER:Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

    .line 22
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

    const-string v1, "OFF"

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    const/4 v4, 0x1

    const v5, 0x7f0f0283

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;-><init>(Ljava/lang/String;IILcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

    const/4 v0, 0x2

    .line 18
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;->SMILE_SHUTTER:Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput-object p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;->mVideoSmileCapture:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    .line 40
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;->mTextId:I

    return-void
.end method

.method public static getDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;
    .locals 0

    .line 51
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;->getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;
    .locals 1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    .line 45
    new-array p0, p0, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

    const/4 p1, 0x0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

    aput-object v0, p0, p1

    return-object p0

    .line 47
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;
    .locals 1

    .line 18
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;
    .locals 1

    .line 18
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .locals 0

    .line 60
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;)V

    return-void
.end method

.method public getIconId()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .locals 0

    .line 65
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SHUTTER_TRIGGER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .locals 0

    const p0, 0x7f0f0304

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextId()I
    .locals 0

    .line 85
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;->mTextId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 90
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVideoSmileCapture()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoShutterTrigger;->mVideoSmileCapture:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    return-object p0
.end method
