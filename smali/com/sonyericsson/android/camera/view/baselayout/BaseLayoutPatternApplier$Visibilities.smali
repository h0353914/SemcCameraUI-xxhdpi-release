.class Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;
.super Ljava/lang/Object;
.source "BaseLayoutPatternApplier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Visibilities"
.end annotation


# instance fields
.field public final batteryIndicator:I

.field public final captureButton:I

.field public final captureMethodIndicator:I

.field public final contentView:I

.field public final geotagIndicator:I

.field public final modeButtonShortcut:I

.field public final mruShortcut:I

.field public final predictiveCaptureIndicator:I

.field public final primarySettingShortcut:I

.field public final recordingProgress:I

.field public final sceneIndicator:I

.field public final secondarySettingShortcut:I

.field public final storageIndicator:I

.field public final thermalIndicator:I

.field public final zoombar:I


# direct methods
.method public constructor <init>([I)V
    .locals 1

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 250
    aget v0, p1, v0

    iput v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->captureButton:I

    const/4 v0, 0x1

    .line 251
    aget v0, p1, v0

    iput v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->captureMethodIndicator:I

    const/4 v0, 0x2

    .line 252
    aget v0, p1, v0

    iput v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->sceneIndicator:I

    const/4 v0, 0x3

    .line 253
    aget v0, p1, v0

    iput v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->geotagIndicator:I

    const/4 v0, 0x4

    .line 254
    aget v0, p1, v0

    iput v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->storageIndicator:I

    const/4 v0, 0x5

    .line 255
    aget v0, p1, v0

    iput v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->zoombar:I

    const/4 v0, 0x6

    .line 256
    aget v0, p1, v0

    iput v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->contentView:I

    const/4 v0, 0x7

    .line 257
    aget v0, p1, v0

    iput v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->recordingProgress:I

    const/16 v0, 0x8

    .line 258
    aget v0, p1, v0

    iput v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->thermalIndicator:I

    const/16 v0, 0x9

    .line 259
    aget v0, p1, v0

    iput v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->primarySettingShortcut:I

    const/16 v0, 0xa

    .line 260
    aget v0, p1, v0

    iput v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->secondarySettingShortcut:I

    const/16 v0, 0xb

    .line 261
    aget v0, p1, v0

    iput v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->batteryIndicator:I

    const/16 v0, 0xc

    .line 262
    aget v0, p1, v0

    iput v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->predictiveCaptureIndicator:I

    const/16 v0, 0xd

    .line 263
    aget v0, p1, v0

    iput v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->modeButtonShortcut:I

    const/16 v0, 0xe

    .line 264
    aget p1, p1, v0

    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->mruShortcut:I

    return-void
.end method
