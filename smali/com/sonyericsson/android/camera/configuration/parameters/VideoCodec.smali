.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;
.super Ljava/lang/Enum;
.source "VideoCodec.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

.field public static final enum H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

.field public static final enum H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

.field private static final TAG:Ljava/lang/String; = "VideoCodec"

.field private static final sParameterTextId:I = 0x7f0f02f4


# instance fields
.field private final mIconId:I

.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 21
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    const-string v1, "H264"

    const/4 v2, -0x1

    const/4 v3, 0x0

    const v4, 0x7f0f02e1

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    .line 24
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    const-string v1, "H265"

    const/4 v4, 0x1

    const v5, 0x7f0f02e2

    invoke-direct {v0, v1, v4, v2, v5}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    const/4 v0, 0x2

    .line 20
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->mIconId:I

    .line 49
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->mTextId:I

    return-void
.end method

.method public static getDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;
    .locals 1

    .line 93
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    return-object v0
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;
    .locals 3

    .line 82
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    .line 88
    new-array p0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    return-object p0

    .line 84
    :cond_0
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1

    const-string p0, "getOptions : H264, H265"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x2

    .line 85
    new-array p0, p0, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    aput-object v2, p0, v0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    aput-object v0, p0, v1

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;
    .locals 1

    .line 20
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;
    .locals 1

    .line 20
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .locals 0

    .line 98
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;)V

    return-void
.end method

.method public getIconId()I
    .locals 0

    .line 59
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->mIconId:I

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .locals 0

    .line 103
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_CODEC:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .locals 0

    const p0, 0x7f0f02f4

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 113
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextId()I
    .locals 0

    .line 69
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->mTextId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 78
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
