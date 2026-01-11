.class Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$1;
.super Ljava/util/ArrayList;
.source "CapturingModeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 108
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    const-string v0, "capturing_mode_single_effect"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$1;->add(Ljava/lang/Object;)Z

    .line 110
    const-string v0, "capturing_mode_sweep_panorama"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$1;->add(Ljava/lang/Object;)Z

    .line 111
    const-string v0, "GOOGLE_LENS"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$1;->add(Ljava/lang/Object;)Z

    .line 112
    const-string v0, "PORTRAIT_SELFIE"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$1;->add(Ljava/lang/Object;)Z

    .line 113
    const-string v0, "BOKEH_EFFECT"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$1;->add(Ljava/lang/Object;)Z

    .line 114
    const-string v0, "EVERYONE_MODE"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$1;->add(Ljava/lang/Object;)Z

    .line 115
    const-string v0, "DUAL_BACKGROUND_DEFOCUS"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$1;->add(Ljava/lang/Object;)Z

    .line 116
    const-string v0, "DUAL_MONOCHROME"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
