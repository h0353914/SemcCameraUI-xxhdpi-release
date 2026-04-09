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

.field public static final enum DUAL_BACKGROUND_DEFOCUS:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

.field public static final enum DUAL_MONOCHROME:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

.field public static final enum MANUAL:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

.field public static final enum PORTRAIT_SELFIE:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

.field public static final enum SLOW_MOTION:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;


# instance fields
.field public final iconId:I

.field public final isExternalApp:Z

.field public final tag:Ljava/lang/Object;

.field public final textId:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 18
    new-instance v0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    const-string v1, "MANUAL"

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;-><init>(Ljava/lang/String;ILcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->MANUAL:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    .line 19
    new-instance v0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    const-string v1, "SLOW_MOTION"

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;-><init>(Ljava/lang/String;ILcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    .line 20
    new-instance v0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    const-string v1, "PORTRAIT_SELFIE"

    const/4 v2, 0x2

    const v5, 0x7f08009b

    const v6, 0x7f0f00d0

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->PORTRAIT_SELFIE:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    .line 23
    new-instance v0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    const-string v1, "DUAL_BACKGROUND_DEFOCUS"

    const/4 v5, 0x3

    const v6, 0x7f08009c

    const v7, 0x7f0f00b2

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->DUAL_BACKGROUND_DEFOCUS:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    .line 26
    new-instance v0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    const-string v1, "DUAL_MONOCHROME"

    const/4 v6, 0x4

    const v7, 0x7f0800a2

    const v8, 0x7f0f01df

    invoke-direct {v0, v1, v6, v7, v8}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->DUAL_MONOCHROME:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    const/4 v0, 0x5

    .line 17
    new-array v0, v0, [Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->MANUAL:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->PORTRAIT_SELFIE:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->DUAL_BACKGROUND_DEFOCUS:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->DUAL_MONOCHROME:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    aput-object v1, v0, v6

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

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->tag:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->isExternalApp:Z

    .line 41
    iput p3, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->iconId:I

    .line 42
    iput p4, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->textId:I

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

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->tag:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->isExternalApp:Z

    .line 34
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getIconId()I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->iconId:I

    .line 35
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getTextId()I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->textId:I

    return-void
.end method

.method public static exists(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Z
    .locals 5

    .line 63
    invoke-static {}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->values()[Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 64
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

    .line 17
    const-class v0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;
    .locals 1

    .line 17
    sget-object v0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->$VALUES:[Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    return-object v0
.end method


# virtual methods
.method public isSupported(Landroid/content/Context;)Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->isExternalApp:Z

    if-eqz v0, :cond_0

    .line 47
    sget-object v0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode$1;->$SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    .line 53
    :pswitch_0
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->isMonochromeSupported()Z

    move-result p0

    return p0

    .line 51
    :pswitch_1
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->isBokehSupported()Z

    move-result p0

    return p0

    .line 49
    :pswitch_2
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->isPortraitSelfieAvailable(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 58
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getValidOptions()Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->tag:Ljava/lang/Object;

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
