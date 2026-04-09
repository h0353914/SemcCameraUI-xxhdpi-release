.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;
.super Ljava/lang/Enum;
.source "SlowMotion.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

.field public static final enum STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

.field public static final enum SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

.field public static final enum SUPER_SLOW_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

.field public static final TAG:Ljava/lang/String; = "SlowMotion"

.field private static final sParameterTextId:I = 0x7f0f02ae


# instance fields
.field private final mDescriptionTextId:I

.field private final mIconId:I

.field private final mTextId:I

.field private final mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 25
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    const-string v1, "SUPER_SLOW_MOTION"

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const v4, 0x7f0f0297

    const v5, 0x7f0f02a6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;-><init>(Ljava/lang/String;IIIILcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    .line 30
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    const-string v9, "SUPER_SLOW_SHOT"

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const/4 v10, 0x1

    const/4 v11, -0x1

    const v12, 0x7f0f0295

    const v13, 0x7f0f029b

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;-><init>(Ljava/lang/String;IIIILcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    .line 35
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    const-string v2, "STANDARD_SLOW_MOTION"

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD_120FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const/4 v3, 0x2

    const/4 v4, -0x1

    const v5, 0x7f0f0296

    const v6, 0x7f0f029f

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;-><init>(Ljava/lang/String;IIIILcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    .line 40
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    const-string v9, "OFF"

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const/4 v10, 0x3

    const v12, 0x7f0f0283

    const v13, 0x7f0f0283

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;-><init>(Ljava/lang/String;IIIILcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    const/4 v0, 0x4

    .line 24
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIILcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;",
            ")V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 72
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->mIconId:I

    .line 73
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->mTextId:I

    .line 74
    iput p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->mDescriptionTextId:I

    .line 75
    iput-object p6, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    return-void
.end method

.method public static getDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;
    .locals 1

    .line 158
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p0, v0, :cond_1

    .line 160
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSuperSlowMotionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 162
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    return-object p0

    .line 164
    :cond_0
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    return-object p0

    .line 167
    :cond_1
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    return-object p0
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;
    .locals 2

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 143
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p0, v1, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSuperSlowMotionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 147
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_0
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
    :cond_1
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 p0, 0x0

    .line 154
    new-array p0, p0, [Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;
    .locals 1

    .line 24
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;
    .locals 1

    .line 24
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .locals 0

    .line 80
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;)V

    return-void
.end method

.method public getDescriptionText(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 129
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 136
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This value is not supported."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 134
    :pswitch_0
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->mDescriptionTextId:I

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "120"

    aput-object v2, v0, v1

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 132
    :pswitch_1
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->mDescriptionTextId:I

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "960"

    aput-object v2, v0, v1

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getIconId()I
    .locals 0

    .line 105
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->mIconId:I

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .locals 0

    .line 85
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .locals 0

    const p0, 0x7f0f02ae

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextId()I
    .locals 0

    .line 115
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->mTextId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 125
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    return-object p0
.end method
