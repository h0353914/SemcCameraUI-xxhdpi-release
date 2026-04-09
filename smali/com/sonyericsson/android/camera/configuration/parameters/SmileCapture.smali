.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;
.super Ljava/lang/Enum;
.source "SmileCapture.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

.field public static final enum HIGH:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

.field public static final enum LOW:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

.field public static final enum MIDDLE:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

.field public static final TAG:Ljava/lang/String; = "SmileCapture"

.field private static final sParameterTextId:I = 0x7f0f02b3


# instance fields
.field private final mDimenId:I

.field private final mIconId:I

.field private final mIsSmileCaptureOn:Z

.field private final mNotificationIconId:I

.field private final mScoreThreshold:I

.field private final mTextId:I

.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 22
    new-instance v9, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    const-string v1, "HIGH"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const v4, 0x7f0f02af

    const v5, 0x7f0802ac

    const/16 v6, 0x46

    const v7, 0x7f0701cf

    const/4 v8, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;-><init>(Ljava/lang/String;IIIIIIZ)V

    sput-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->HIGH:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    .line 28
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    const-string v11, "MIDDLE"

    const/4 v12, 0x1

    const/4 v13, -0x1

    const v14, 0x7f0f02b1

    const v15, 0x7f0802ae

    const/16 v16, 0x37

    const v17, 0x7f0701d1

    const/16 v18, 0x1

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;-><init>(Ljava/lang/String;IIIIIIZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->MIDDLE:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    .line 34
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    const-string v2, "LOW"

    const/4 v3, 0x2

    const/4 v4, -0x1

    const v5, 0x7f0f02b0

    const v6, 0x7f0802ad

    const/16 v7, 0x28

    const v8, 0x7f0701d0

    const/4 v9, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;-><init>(Ljava/lang/String;IIIIIIZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->LOW:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    .line 40
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    const-string v11, "OFF"

    const/4 v12, 0x3

    const v14, 0x7f0f0283

    const/4 v15, -0x1

    const/16 v16, 0x3e7

    const/16 v17, -0x1

    const/16 v18, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;-><init>(Ljava/lang/String;IIIIIIZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    const/4 v0, 0x4

    .line 21
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->HIGH:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->MIDDLE:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->LOW:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIZ)V"
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 85
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->mIconId:I

    .line 86
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->mTextId:I

    .line 87
    iput p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->mNotificationIconId:I

    .line 88
    iput p6, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->mScoreThreshold:I

    .line 89
    iput p7, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->mDimenId:I

    .line 90
    iput-boolean p8, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->mIsSmileCaptureOn:Z

    if-eqz p8, :cond_0

    const-string p1, "on"

    .line 92
    iput-object p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->mValue:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "off"

    .line 94
    iput-object p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->mValue:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;
    .locals 0

    .line 162
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->SMILE_DETECTION:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 163
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 165
    new-array p0, p0, [Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;
    .locals 1

    .line 21
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;
    .locals 1

    .line 21
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .locals 0

    return-void
.end method

.method public getDimenId()I
    .locals 0

    .line 183
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->mDimenId:I

    return p0
.end method

.method public getIconId()I
    .locals 0

    .line 123
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->mIconId:I

    return p0
.end method

.method public getIntValue()I
    .locals 0

    .line 174
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->mScoreThreshold:I

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .locals 0

    .line 113
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SMILE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .locals 0

    const p0, 0x7f0f02b3

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 170
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationIconId()I
    .locals 0

    .line 143
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->mNotificationIconId:I

    return p0
.end method

.method public getTextId()I
    .locals 0

    .line 133
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->mTextId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->mValue:Ljava/lang/String;

    return-object p0
.end method

.method public isSmileCaptureOn()Z
    .locals 0

    .line 191
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->mIsSmileCaptureOn:Z

    return p0
.end method
