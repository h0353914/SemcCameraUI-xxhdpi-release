.class final enum Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;
.super Ljava/lang/Enum;
.source "CapturingModeListLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CapturingModeId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

.field public static final enum AR_EFFECT:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

.field public static final enum BOKEH:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

.field public static final enum CREATIVE_EFFECT:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

.field public static final enum DUAL_BACKGROUND_DEFOCUS:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

.field public static final enum DUAL_MONOCHROME:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

.field public static final enum GOOGLE_LENS:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

.field public static final enum MANUAL:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

.field public static final enum PANORAMA:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

.field public static final enum PORTRAIT_SELFIE:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

.field public static final enum SLOW_MOTION:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

.field public static final enum SOUND_PHOTO:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 47
    new-instance v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    const-string v1, "DUAL_BACKGROUND_DEFOCUS"

    const-string v2, "DUAL_BACKGROUND_DEFOCUS"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;->DUAL_BACKGROUND_DEFOCUS:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    .line 48
    new-instance v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    const-string v1, "DUAL_MONOCHROME"

    const-string v2, "DUAL_MONOCHROME"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;->DUAL_MONOCHROME:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    .line 49
    new-instance v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    const-string v1, "PORTRAIT_SELFIE"

    const-string v2, "PORTRAIT_SELFIE"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;->PORTRAIT_SELFIE:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    .line 50
    new-instance v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    const-string v1, "GOOGLE_LENS"

    const-string v2, "GOOGLE_LENS"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;->GOOGLE_LENS:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    .line 51
    new-instance v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    const-string v1, "BOKEH"

    const-string v2, "BackgroundDefocus"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;->BOKEH:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    .line 52
    new-instance v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    const-string v1, "SLOW_MOTION"

    const-string v2, "SLOW_MOTION"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;->SLOW_MOTION:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    .line 53
    new-instance v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    const-string v1, "AR_EFFECT"

    const-string v2, "AR Effect"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;->AR_EFFECT:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    .line 54
    new-instance v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    const-string v1, "MANUAL"

    const-string v2, "MANUAL"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;->MANUAL:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    .line 55
    new-instance v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    const-string v1, "CREATIVE_EFFECT"

    const-string v2, "capturing_mode_single_effect"

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;->CREATIVE_EFFECT:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    .line 56
    new-instance v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    const-string v1, "PANORAMA"

    const-string v2, "capturing_mode_sweep_panorama"

    const/16 v12, 0x9

    invoke-direct {v0, v1, v12, v2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;->PANORAMA:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    .line 57
    new-instance v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    const-string v1, "SOUND_PHOTO"

    const-string v2, "capturing_mode_soundphoto"

    const/16 v13, 0xa

    invoke-direct {v0, v1, v13, v2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;->SOUND_PHOTO:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    const/16 v0, 0xb

    .line 46
    new-array v0, v0, [Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;->DUAL_BACKGROUND_DEFOCUS:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;->DUAL_MONOCHROME:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;->PORTRAIT_SELFIE:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;->GOOGLE_LENS:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;->BOKEH:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;->SLOW_MOTION:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;->AR_EFFECT:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    aput-object v1, v0, v9

    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;->MANUAL:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    aput-object v1, v0, v10

    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;->CREATIVE_EFFECT:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    aput-object v1, v0, v11

    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;->PANORAMA:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    aput-object v1, v0, v12

    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;->SOUND_PHOTO:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    aput-object v1, v0, v13

    sput-object v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;->$VALUES:[Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 62
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;
    .locals 1

    .line 46
    const-class v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;
    .locals 1

    .line 46
    sget-object v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;->$VALUES:[Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;->name:Ljava/lang/String;

    return-object p0
.end method
