.class final Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$1;
.super Ljava/util/ArrayList;
.source "CapturingModeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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

    .line 116
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "capturing_mode_soundphoto"

    .line 117
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$1;->add(Ljava/lang/Object;)Z

    const-string v0, "capturing_mode_single_effect"

    .line 118
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$1;->add(Ljava/lang/Object;)Z

    const-string v0, "capturing_mode_sweep_panorama"

    .line 119
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$1;->add(Ljava/lang/Object;)Z

    const-string v0, "GOOGLE_LENS"

    .line 120
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$1;->add(Ljava/lang/Object;)Z

    const-string v0, "PORTRAIT_SELFIE"

    .line 121
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$1;->add(Ljava/lang/Object;)Z

    const-string v0, "DUAL_BACKGROUND_DEFOCUS"

    .line 122
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$1;->add(Ljava/lang/Object;)Z

    const-string v0, "DUAL_MONOCHROME"

    .line 123
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
