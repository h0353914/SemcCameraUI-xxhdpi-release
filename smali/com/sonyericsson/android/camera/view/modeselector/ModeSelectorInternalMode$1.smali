.class synthetic Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode$1;
.super Ljava/lang/Object;
.source "ModeSelectorInternalMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 56
    invoke-static {}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->values()[Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode$1;->$SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode:[I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->PORTRAIT_SELFIE:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode$1;->$SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->BOKEH_EFFECT:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode$1;->$SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->EVERYONE_MODE:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode$1;->$SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->DUAL_BACKGROUND_DEFOCUS:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode$1;->$SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->DUAL_MONOCHROME:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
