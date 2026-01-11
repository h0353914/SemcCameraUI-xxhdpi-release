.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;
.super Ljava/lang/Enum;
.source "FocusRange.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingIntValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingIntValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

.field public static final enum AF:Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

.field public static final enum DEFAULT:Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

.field private static final INITIAL_FOCUS_RANGE:I = 0x0

.field public static final enum MF:Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

.field public static final NUMBER_OF_DIVISION_FOR_THE_WHOLE_RANGE:I = 0x63

.field public static final RATIO_OF_THE_RANGE_FROM_1M_TO_INFINITY:I = 0x1

.field public static final RATIO_OF_THE_RANGE_FROM_MACRO_TO_1M:I = 0x2


# instance fields
.field private final mIconId:I

.field private final mTextId:I


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;
    .locals 3

    .line 15
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->AF:Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->MF:Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->DEFAULT:Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    filled-new-array {v0, v1, v2}, [Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 16
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    const v1, 0x7f0f026e

    const-string v2, "AF"

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->AF:Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    .line 20
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    const-string v1, "MF"

    const/4 v2, 0x1

    const v3, 0x7f0f026f

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->MF:Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    .line 25
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    const-string v1, "DEFAULT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->DEFAULT:Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    .line 15
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->$values()[Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->mIconId:I

    .line 54
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->mTextId:I

    return-void
.end method

.method public static calculateFocusRange(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;I)F
    .locals 4

    .line 105
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    .line 106
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->MACRO_FOCUS_RANGE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    .line 107
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameters;->MANUAL_FOCUS_INFINITY:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 108
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameters;->MANUAL_FOCUS_1M:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    int-to-float p1, p1

    .line 112
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->getThreshold()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v3, v3, p1

    if-gtz v3, :cond_0

    cmpg-float v3, p1, v2

    if-gez v3, :cond_0

    sub-float/2addr v1, v0

    .line 117
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    div-float/2addr p0, v2

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    goto :goto_0

    :cond_0
    cmpg-float v0, v2, p1

    if-gtz v0, :cond_1

    const/high16 v0, 0x42c60000    # 99.0f

    cmpg-float v3, p1, v0

    if-gtz v3, :cond_1

    sub-float p0, v1, p0

    .line 120
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    sub-float/2addr v0, v2

    div-float/2addr p0, v0

    sub-float/2addr p1, v2

    mul-float/2addr p0, p1

    add-float v0, v1, p0

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)[Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;
    .locals 1

    .line 127
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isManualFocusSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->isFront()Z

    move-result p0

    if-nez p0, :cond_0

    .line 129
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 131
    new-array p0, p0, [Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    return-object p0
.end method

.method public static getThreshold()F
    .locals 1

    const/high16 v0, 0x42040000    # 33.0f

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;
    .locals 1

    .line 15
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;
    .locals 1

    .line 15
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .locals 0

    .line 59
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;)V

    return-void
.end method

.method public getIconId()I
    .locals 0

    .line 64
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->mIconId:I

    return p0
.end method

.method public getInitialIntValue()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .locals 0

    .line 69
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FOCUS_RANGE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextId()I
    .locals 0

    .line 84
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->mTextId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 89
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
