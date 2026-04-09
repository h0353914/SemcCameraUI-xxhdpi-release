.class public Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;
.super Ljava/lang/Object;
.source "BaseLayoutPatternApplier.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/baselayout/LayoutPatternApplier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;
    }
.end annotation


# static fields
.field public static final D:I = 0x3

.field public static final H:I = 0x2

.field public static final N:I = 0x0

.field public static final S:I = 0x1


# instance fields
.field private mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

.field private final mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;",
            "Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mMap:Ljava/util/Map;

    return-void
.end method

.method private set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mMap:Ljava/util/Map;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mMap:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private varargs set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V
    .locals 1

    .line 347
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mMap:Ljava/util/Map;

    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;

    invoke-direct {v0, p2}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;-><init>([I)V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setupVisibilities(Z)V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/16 v0, 0xf

    if-eqz p1, :cond_0

    .line 291
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->PREVIEW:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 292
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->PREVIEW_NO_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 294
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->CLEAR:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 295
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ZOOMING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_3

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 296
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ZOOMING_IN_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_4

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 298
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ZOOMING_IN_PAUSE_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ZOOMING_IN_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 300
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->FOCUS_SEARCHING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_5

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 301
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->FOCUS_DONE:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_6

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 302
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->CAPTURE:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_7

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 303
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_8

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 304
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->BURST_SHOOTING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_9

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 305
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->SETTING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_a

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 306
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->SELFTIMER:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_b

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 307
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->PAUSE_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_c

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 308
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->OVERLAY_CONTROL_SEEKING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_d

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 310
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->HIGH_FRAME_RATE_RECORDING_IN_SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_e

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 312
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->MODE_CHANGING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v0, v0, [I

    fill-array-data v0, :array_f

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    goto/16 :goto_0

    .line 315
    :cond_0
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->PREVIEW:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_10

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 316
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->PREVIEW_NO_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_11

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 318
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->CLEAR:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_12

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 319
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ZOOMING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_13

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 320
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ZOOMING_IN_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_14

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 322
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ZOOMING_IN_PAUSE_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ZOOMING_IN_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 324
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->FOCUS_SEARCHING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_15

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 325
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->FOCUS_DONE:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_16

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 326
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->CAPTURE:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_17

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 327
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_18

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 328
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->BURST_SHOOTING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_19

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 329
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->SETTING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_1a

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 330
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->SELFTIMER:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_1b

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 331
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->PAUSE_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_1c

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 332
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->OVERLAY_CONTROL_SEEKING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_1d

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 334
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->HIGH_FRAME_RATE_RECORDING_IN_SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_1e

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 336
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->MODE_CHANGING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v0, v0, [I

    fill-array-data v0, :array_1f

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        0x2
        0x1
        0x1
        0x3
        0x2
        0x2
        0x1
        0x1
        0x0
        0x1
        0x2
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x1
        0x2
        0x1
        0x1
        0x3
        0x2
        0x2
        0x1
        0x1
        0x0
        0x1
        0x2
        0x1
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_3
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_4
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_8
    .array-data 4
        0x1
        0x1
        0x2
        0x2
        0x1
        0x3
        0x2
        0x1
        0x1
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_9
    .array-data 4
        0x0
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_a
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
        0x0
        0x2
        0x2
        0x1
        0x0
    .end array-data

    :array_b
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_c
    .array-data 4
        0x1
        0x1
        0x2
        0x2
        0x1
        0x3
        0x2
        0x1
        0x1
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_d
    .array-data 4
        0x1
        0x1
        0x2
        0x1
        0x1
        0x2
        0x2
        0x2
        0x1
        0x1
        0x2
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_e
    .array-data 4
        0x0
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_f
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_10
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
        0x1
        0x2
        0x1
        0x1
        0x0
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_11
    .array-data 4
        0x1
        0x1
        0x2
        0x1
        0x1
        0x3
        0x1
        0x2
        0x1
        0x1
        0x0
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_12
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_13
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_14
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_15
    .array-data 4
        0x0
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_16
    .array-data 4
        0x0
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_17
    .array-data 4
        0x0
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_18
    .array-data 4
        0x1
        0x1
        0x1
        0x2
        0x1
        0x3
        0x1
        0x1
        0x1
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_19
    .array-data 4
        0x0
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_1a
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
        0x1
        0x0
        0x2
        0x2
        0x1
        0x0
    .end array-data

    :array_1b
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_1c
    .array-data 4
        0x1
        0x1
        0x1
        0x2
        0x1
        0x3
        0x2
        0x1
        0x1
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_1d
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x1
        0x2
        0x1
        0x1
        0x0
        0x1
        0x2
        0x1
        0x1
    .end array-data

    :array_1e
    .array-data 4
        0x0
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_1f
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;

    .line 40
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->captureButton:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 49
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->isMainButtonTouched()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->setVisibility(I)V

    goto :goto_0

    .line 45
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->setVisibility(I)V

    goto :goto_0

    .line 42
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->setVisibility(I)V

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->setVisibility(I)V

    .line 57
    :goto_0
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->contentView:I

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 62
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->hideContentsViewController()V

    goto :goto_1

    .line 59
    :pswitch_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->showContentsViewController()V

    .line 68
    :goto_1
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->modeButtonShortcut:I

    packed-switch v0, :pswitch_data_2

    goto :goto_2

    .line 73
    :pswitch_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getModeButtonShortcut()Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->hide()V

    goto :goto_2

    .line 70
    :pswitch_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getModeButtonShortcut()Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->show()V

    .line 79
    :goto_2
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->mruShortcut:I

    packed-switch v0, :pswitch_data_3

    goto :goto_3

    .line 84
    :pswitch_6
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getMruButtonContainer()Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->hide()V

    goto :goto_3

    .line 81
    :pswitch_7
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getMruButtonContainer()Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->show()V

    .line 90
    :goto_3
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->captureMethodIndicator:I

    packed-switch v0, :pswitch_data_4

    goto :goto_4

    .line 95
    :pswitch_8
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getPhotoSmileCaptureIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->hide()V

    goto :goto_4

    .line 92
    :pswitch_9
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getPhotoSmileCaptureIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->show()V

    .line 101
    :goto_4
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->sceneIndicator:I

    packed-switch v0, :pswitch_data_5

    goto :goto_5

    .line 107
    :pswitch_a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getSceneIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->hide()V

    .line 108
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getConditionIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->hide()V

    goto :goto_5

    .line 103
    :pswitch_b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getSceneIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->show()V

    .line 104
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getConditionIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->show()V

    .line 114
    :goto_5
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->geotagIndicator:I

    packed-switch v0, :pswitch_data_6

    goto :goto_6

    .line 119
    :pswitch_c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->hide()V

    goto :goto_6

    .line 116
    :pswitch_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->show()V

    .line 125
    :goto_6
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->storageIndicator:I

    packed-switch v0, :pswitch_data_7

    goto :goto_7

    .line 131
    :pswitch_e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getLowMemoryInternalIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->hide()V

    .line 132
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getLowMemorySdIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->hide()V

    goto :goto_7

    .line 127
    :pswitch_f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getLowMemoryInternalIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->show()V

    .line 128
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getLowMemorySdIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->show()V

    .line 138
    :goto_7
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->zoombar:I

    packed-switch v0, :pswitch_data_8

    goto :goto_8

    .line 146
    :pswitch_10
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getZoomBar()Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->hideDelayed()V

    goto :goto_8

    .line 143
    :pswitch_11
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getZoomBar()Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->hideImmediately()V

    goto :goto_8

    .line 140
    :pswitch_12
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getZoomBar()Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->show()V

    .line 152
    :goto_8
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->recordingProgress:I

    packed-switch v0, :pswitch_data_9

    goto :goto_9

    .line 157
    :pswitch_13
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getRecordingIndicator()Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setVisibility(I)V

    goto :goto_9

    .line 154
    :pswitch_14
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getRecordingIndicator()Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setVisibility(I)V

    .line 163
    :goto_9
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->thermalIndicator:I

    packed-switch v0, :pswitch_data_a

    goto :goto_a

    .line 168
    :pswitch_15
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getThermalIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->hide()V

    goto :goto_a

    .line 165
    :pswitch_16
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getThermalIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->show()V

    .line 174
    :goto_a
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->primarySettingShortcut:I

    packed-switch v0, :pswitch_data_b

    goto :goto_b

    .line 179
    :pswitch_17
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getPrimaryShortcut()Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->hide()V

    goto :goto_b

    .line 176
    :pswitch_18
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getPrimaryShortcut()Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->show()V

    .line 185
    :goto_b
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->secondarySettingShortcut:I

    packed-switch v0, :pswitch_data_c

    goto :goto_c

    .line 191
    :pswitch_19
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenSubButton()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenExtraButton()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setVisibility(I)V

    goto :goto_c

    .line 187
    :pswitch_1a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenSubButton()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenExtraButton()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setVisibility(I)V

    .line 198
    :goto_c
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->batteryIndicator:I

    packed-switch v0, :pswitch_data_d

    goto :goto_d

    .line 203
    :pswitch_1b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getBatteryIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;->hide()V

    goto :goto_d

    .line 200
    :pswitch_1c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getBatteryIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;->show()V

    .line 209
    :goto_d
    iget p1, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->predictiveCaptureIndicator:I

    packed-switch p1, :pswitch_data_e

    goto :goto_e

    .line 214
    :pswitch_1d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getPredictiveCaptureIndicatorController()Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->hide()V

    goto :goto_e

    .line 211
    :pswitch_1e
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getPredictiveCaptureIndicatorController()Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->show()V

    .line 220
    :goto_e
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->refresh()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x1
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
    .end packed-switch

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1d
    .end packed-switch
.end method

.method public setup(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;Z)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    .line 32
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->setupVisibilities(Z)V

    return-void
.end method
