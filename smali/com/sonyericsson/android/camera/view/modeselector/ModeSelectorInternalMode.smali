.class public final enum Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;
.super Ljava/lang/Enum;
.source "ModeSelectorInternalMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

.field public static final enum BOKEH_EFFECT:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

.field public static final enum DUAL_BACKGROUND_DEFOCUS:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

.field public static final enum DUAL_MONOCHROME:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

.field public static final enum EVERYONE_MODE:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

.field public static final enum MANUAL:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

.field public static final enum PORTRAIT_SELFIE:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

.field public static final enum SLOW_MOTION:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;


# instance fields
.field public final iconId:I

.field public final isExternalApp:Z

.field public modeName:Ljava/lang/String;

.field public final tag:Ljava/lang/Object;

.field public final textId:I


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;
    .locals 7

    .line 18
    sget-object v0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->MANUAL:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    sget-object v2, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->PORTRAIT_SELFIE:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    sget-object v3, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->EVERYONE_MODE:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    sget-object v4, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->BOKEH_EFFECT:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    sget-object v5, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->DUAL_BACKGROUND_DEFOCUS:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    sget-object v6, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->DUAL_MONOCHROME:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    filled-new-array/range {v0 .. v6}, [Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 19
    new-instance v0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    const/4 v1, 0x0

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const-string v3, "MANUAL"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;-><init>(Ljava/lang/String;ILcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->MANUAL:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    .line 20
    new-instance v0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    const/4 v1, 0x1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const-string v3, "SLOW_MOTION"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;-><init>(Ljava/lang/String;ILcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    .line 21
    new-instance v0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    const v1, 0x7f0800a3

    const v2, 0x7f0f00f7

    const-string v3, "PORTRAIT_SELFIE"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->PORTRAIT_SELFIE:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    .line 24
    new-instance v0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    const v1, 0x7f0800a6

    const/4 v2, -0x1

    const-string v3, "EVERYONE_MODE"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->EVERYONE_MODE:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    .line 27
    new-instance v0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    const-string v1, "BOKEH_EFFECT"

    const/4 v2, 0x4

    const v3, 0x7f0800a2

    const v4, 0x7f0f00d0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->BOKEH_EFFECT:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    .line 30
    new-instance v0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    const/4 v1, 0x5

    const v2, 0x7f0800a4

    const-string v3, "DUAL_BACKGROUND_DEFOCUS"

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->DUAL_BACKGROUND_DEFOCUS:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    .line 33
    new-instance v0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    const v1, 0x7f0800ab

    const v2, 0x7f0f02d5

    const-string v3, "DUAL_MONOCHROME"

    const/4 v4, 0x6

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->DUAL_MONOCHROME:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    .line 18
    invoke-static {}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->$values()[Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->$VALUES:[Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->tag:Ljava/lang/Object;

    const/4 p2, 0x1

    .line 48
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->isExternalApp:Z

    .line 49
    iput p3, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->iconId:I

    .line 50
    iput p4, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->textId:I

    .line 51
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->modeName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->tag:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->isExternalApp:Z

    .line 41
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getIconId()I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->iconId:I

    .line 42
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getTextId()I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->textId:I

    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->modeName:Ljava/lang/String;

    return-void
.end method

.method public static exists(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Z
    .locals 5

    .line 81
    invoke-static {}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->values()[Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 82
    iget-object v4, v4, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->tag:Ljava/lang/Object;

    invoke-virtual {p0, v4}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;
    .locals 1

    .line 18
    const-class v0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;
    .locals 1

    .line 18
    sget-object v0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->$VALUES:[Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    return-object v0
.end method


# virtual methods
.method public isSupported(Landroid/content/Context;)Z
    .locals 4

    .line 55
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->isExternalApp:Z

    if-eqz v0, :cond_6

    .line 56
    sget-object v0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode$1;->$SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    const/4 p0, 0x4

    if-eq v0, p0, :cond_1

    const/4 p0, 0x5

    if-eq v0, p0, :cond_0

    return v3

    .line 71
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->isMonochromeSupported()Z

    move-result p0

    return p0

    .line 69
    :cond_1
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->isBokehSupported()Z

    move-result p0

    return p0

    .line 62
    :cond_2
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->isEveryoneModeCameraAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 63
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->getEveryoneModeLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->modeName:Ljava/lang/String;

    return v1

    :cond_3
    return v3

    .line 60
    :cond_4
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->isBokehCameraEffectAvailable(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 58
    :cond_5
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->isPortraitSelfieAvailable(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 76
    :cond_6
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getValidOptions()Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->tag:Ljava/lang/Object;

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
