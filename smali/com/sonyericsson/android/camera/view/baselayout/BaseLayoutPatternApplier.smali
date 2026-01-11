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

.field public static final G:I = 0x4

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
    .locals 0

    .line 421
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mMap:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private varargs set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V
    .locals 1

    .line 417
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mMap:Ljava/util/Map;

    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;

    invoke-direct {v0, p2}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;-><init>([I)V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setupVisibilities(Z)V
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/16 v0, 0x12

    if-eqz p1, :cond_0

    .line 355
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->PREVIEW:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 356
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->PREVIEW_NO_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 358
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->CLEAR:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 359
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ZOOMING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_3

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 360
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ZOOMING_IN_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_4

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 362
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ZOOMING_IN_PAUSE_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ZOOMING_IN_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 364
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->FOCUS_SEARCHING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_5

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 365
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->FOCUS_DONE:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_6

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 366
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->CAPTURE:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_7

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 367
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_8

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 368
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->BURST_SHOOTING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_9

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 369
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->SETTING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_a

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 370
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->SELFTIMER:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_b

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 371
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->PAUSE_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_c

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 372
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->OVERLAY_CONTROL_SEEKING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_d

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 374
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->HIGH_FRAME_RATE_RECORDING_IN_SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_e

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 376
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->MODE_CHANGING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_f

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 377
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->CLEAR_IN_SIDE_TOUCH:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_10

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 379
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->VIDEO_FOCUS_DONE:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v0, v0, [I

    fill-array-data v0, :array_11

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    goto/16 :goto_0

    .line 382
    :cond_0
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->PREVIEW:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_12

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 383
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->PREVIEW_NO_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_13

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 385
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->CLEAR:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_14

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 386
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ZOOMING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_15

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 387
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ZOOMING_IN_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_16

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 389
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ZOOMING_IN_PAUSE_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ZOOMING_IN_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 391
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->FOCUS_SEARCHING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_17

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 392
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->FOCUS_DONE:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_18

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 393
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->CAPTURE:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_19

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 394
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_1a

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 395
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->BURST_SHOOTING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_1b

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 396
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->SETTING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_1c

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 397
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->SELFTIMER:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_1d

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 398
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->PAUSE_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_1e

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 399
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->OVERLAY_CONTROL_SEEKING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_1f

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 401
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->HIGH_FRAME_RATE_RECORDING_IN_SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_20

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 403
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->MODE_CHANGING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_21

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 404
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->CLEAR_IN_SIDE_TOUCH:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v1, v0, [I

    fill-array-data v1, :array_22

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 406
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->VIDEO_FOCUS_DONE:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    new-array v0, v0, [I

    fill-array-data v0, :array_23

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
        0x1
        0x1
        0x2
        0x1
        0x1
        0x1
        0x1
        0x2
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
        0x1
        0x1
        0x2
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
        0x2
        0x2
        0x2
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x0
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
        0x1
        0x2
        0x1
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
        0x1
        0x2
        0x0
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x4
        0x1
        0x1
        0x1
        0x4
        0x2
        0x2
        0x4
        0x4
        0x2
        0x4
        0x2
        0x2
        0x1
        0x2
        0x4
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x4
        0x1
        0x1
        0x1
        0x4
        0x2
        0x2
        0x4
        0x4
        0x2
        0x4
        0x2
        0x2
        0x1
        0x2
        0x4
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x4
        0x1
        0x1
        0x1
        0x4
        0x2
        0x2
        0x4
        0x4
        0x2
        0x4
        0x1
        0x2
        0x2
        0x2
        0x4
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
        0x1
        0x1
        0x2
        0x2
        0x1
        0x2
        0x0
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
        0x1
        0x0
        0x2
        0x2
    .end array-data

    :array_b
    .array-data 4
        0x1
        0x4
        0x1
        0x1
        0x1
        0x4
        0x2
        0x2
        0x4
        0x4
        0x2
        0x4
        0x2
        0x2
        0x1
        0x2
        0x4
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
        0x1
        0x2
        0x0
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
        0x1
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
        0x1
        0x0
        0x2
        0x0
    .end array-data

    :array_10
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
        0x2
        0x0
        0x2
    .end array-data

    :array_11
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
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_12
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
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_13
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
        0x1
        0x1
        0x2
    .end array-data

    :array_14
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
        0x2
        0x2
        0x2
    .end array-data

    :array_15
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x0
        0x1
    .end array-data

    :array_16
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
        0x1
        0x2
        0x1
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
        0x1
        0x2
        0x0
        0x2
    .end array-data

    :array_17
    .array-data 4
        0x0
        0x2
        0x1
        0x1
        0x1
        0x4
        0x4
        0x2
        0x4
        0x4
        0x4
        0x4
        0x2
        0x4
        0x1
        0x4
        0x4
        0x2
    .end array-data

    :array_18
    .array-data 4
        0x0
        0x2
        0x1
        0x1
        0x1
        0x4
        0x4
        0x2
        0x4
        0x4
        0x4
        0x4
        0x2
        0x4
        0x1
        0x4
        0x4
        0x2
    .end array-data

    :array_19
    .array-data 4
        0x0
        0x2
        0x1
        0x1
        0x1
        0x4
        0x4
        0x2
        0x4
        0x4
        0x4
        0x4
        0x1
        0x4
        0x2
        0x4
        0x4
        0x2
    .end array-data

    :array_1a
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
        0x1
        0x1
        0x2
        0x2
        0x1
        0x2
        0x0
        0x1
    .end array-data

    :array_1b
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
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_1c
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
        0x1
        0x0
        0x2
        0x2
    .end array-data

    :array_1d
    .array-data 4
        0x1
        0x2
        0x1
        0x1
        0x1
        0x4
        0x4
        0x2
        0x4
        0x4
        0x4
        0x4
        0x2
        0x4
        0x1
        0x4
        0x4
        0x2
    .end array-data

    :array_1e
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
        0x1
        0x2
        0x0
        0x1
    .end array-data

    :array_1f
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
        0x1
        0x2
        0x1
    .end array-data

    :array_20
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
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_21
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
        0x1
        0x0
        0x2
        0x0
    .end array-data

    :array_22
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
        0x1
        0x2
        0x0
        0x2
    .end array-data

    :array_23
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
        0x1
        0x2
        0x2
        0x2
    .end array-data
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V
    .locals 6

    .line 38
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;

    .line 40
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->captureButton:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->setVisibility(I)V

    goto :goto_0

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->setVisibility(I)V

    .line 51
    :goto_0
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->contentView:I

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    goto :goto_1

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->grayOutContentsViewController()V

    goto :goto_1

    .line 56
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->hideContentsViewController()V

    goto :goto_1

    .line 53
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->showContentsViewController()V

    .line 65
    :goto_1
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->modeButtonShortcut:I

    if-eq v0, v4, :cond_7

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_5

    goto :goto_2

    .line 73
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getModeButtonShortcut()Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->grayOut()V

    goto :goto_2

    .line 70
    :cond_6
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getModeButtonShortcut()Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->hide()V

    goto :goto_2

    .line 67
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getModeButtonShortcut()Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->show()V

    .line 79
    :goto_2
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->mruShortcut:I

    if-eq v0, v4, :cond_a

    if-eq v0, v3, :cond_9

    if-eq v0, v2, :cond_8

    goto :goto_3

    .line 87
    :cond_8
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getMruButtonContainer()Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->grayOut()V

    goto :goto_3

    .line 84
    :cond_9
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getMruButtonContainer()Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->hide()V

    goto :goto_3

    .line 81
    :cond_a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getMruButtonContainer()Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->show()V

    .line 93
    :goto_3
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->captureMethodIndicator:I

    if-eq v0, v4, :cond_c

    if-eq v0, v3, :cond_b

    goto :goto_4

    .line 98
    :cond_b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getPhotoSmileCaptureIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->hide()V

    goto :goto_4

    .line 95
    :cond_c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getPhotoSmileCaptureIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->show()V

    .line 104
    :goto_4
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->sceneIndicator:I

    if-eq v0, v4, :cond_e

    if-eq v0, v3, :cond_d

    goto :goto_5

    .line 110
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getSceneIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->hide()V

    .line 111
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getConditionIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->hide()V

    goto :goto_5

    .line 106
    :cond_e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getSceneIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->show()V

    .line 107
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getConditionIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->show()V

    .line 117
    :goto_5
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->geotagIndicator:I

    if-eq v0, v4, :cond_10

    if-eq v0, v3, :cond_f

    goto :goto_6

    .line 122
    :cond_f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->hide()V

    goto :goto_6

    .line 119
    :cond_10
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->show()V

    .line 128
    :goto_6
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->storageIndicator:I

    if-eq v0, v4, :cond_12

    if-eq v0, v3, :cond_11

    goto :goto_7

    .line 134
    :cond_11
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getLowMemoryInternalIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->hide()V

    .line 135
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getLowMemorySdIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->hide()V

    goto :goto_7

    .line 130
    :cond_12
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getLowMemoryInternalIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->show()V

    .line 131
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getLowMemorySdIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->show()V

    .line 141
    :goto_7
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->zoombar:I

    if-eq v0, v4, :cond_16

    if-eq v0, v3, :cond_15

    const/4 v5, 0x3

    if-eq v0, v5, :cond_14

    if-eq v0, v2, :cond_13

    goto :goto_8

    .line 152
    :cond_13
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getZoomBar()Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->grayOut()V

    goto :goto_8

    .line 149
    :cond_14
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getZoomBar()Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->hideDelayed()V

    goto :goto_8

    .line 146
    :cond_15
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getZoomBar()Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->hideImmediately()V

    goto :goto_8

    .line 143
    :cond_16
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getZoomBar()Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->show()V

    .line 158
    :goto_8
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->recordingProgress:I

    if-eq v0, v4, :cond_18

    if-eq v0, v3, :cond_17

    goto :goto_9

    .line 163
    :cond_17
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getRecordingIndicator()Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setVisibility(I)V

    goto :goto_9

    .line 160
    :cond_18
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getRecordingIndicator()Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setVisibility(I)V

    .line 169
    :goto_9
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->thermalIndicator:I

    if-eq v0, v4, :cond_1a

    if-eq v0, v3, :cond_19

    goto :goto_a

    .line 174
    :cond_19
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getThermalIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->hide()V

    goto :goto_a

    .line 171
    :cond_1a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getThermalIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->show()V

    .line 180
    :goto_a
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->primarySettingShortcut:I

    if-eq v0, v4, :cond_1d

    const/4 v5, 0x0

    if-eq v0, v3, :cond_1c

    if-eq v0, v2, :cond_1b

    goto :goto_b

    .line 191
    :cond_1b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getPrimaryShortcut()Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->grayOut()V

    .line 192
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getFacingShortcut()Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getFacingShortcut()Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->grayOut()V

    goto :goto_b

    .line 186
    :cond_1c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getPrimaryShortcut()Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->hide()V

    .line 187
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getFacingShortcut()Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getFacingShortcut()Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->hide()V

    goto :goto_b

    .line 182
    :cond_1d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getPrimaryShortcut()Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->show()V

    .line 183
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getFacingShortcut()Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->show()V

    .line 199
    :goto_b
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->secondaryOnScreensButtons:I

    if-eq v0, v4, :cond_20

    if-eq v0, v3, :cond_1f

    if-eq v0, v2, :cond_1e

    goto :goto_c

    .line 209
    :cond_1e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenSubButton()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->grayOut()V

    .line 210
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenExtraButton()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->grayOut()V

    goto :goto_c

    .line 205
    :cond_1f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenSubButton()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenExtraButton()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setVisibility(I)V

    goto :goto_c

    .line 201
    :cond_20
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenSubButton()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenExtraButton()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->setVisibility(I)V

    .line 216
    :goto_c
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->batteryIndicator:I

    if-eq v0, v4, :cond_22

    if-eq v0, v3, :cond_21

    goto :goto_d

    .line 221
    :cond_21
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getBatteryIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;->hide()V

    goto :goto_d

    .line 218
    :cond_22
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getBatteryIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;->show()V

    .line 227
    :goto_d
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->predictiveCaptureIndicator:I

    if-eq v0, v4, :cond_24

    if-eq v0, v3, :cond_23

    goto :goto_e

    .line 232
    :cond_23
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getPredictiveCaptureIndicatorController()Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->hide()V

    goto :goto_e

    .line 229
    :cond_24
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getPredictiveCaptureIndicatorController()Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->show()V

    .line 238
    :goto_e
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->isoIndicator:I

    if-eq v0, v4, :cond_26

    if-eq v0, v3, :cond_25

    goto :goto_f

    .line 243
    :cond_25
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getViewFinderDebugInfoIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/TextIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/TextIndicator;->hide()V

    goto :goto_f

    .line 240
    :cond_26
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getViewFinderDebugInfoIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/TextIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/TextIndicator;->show()V

    .line 249
    :goto_f
    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->zoomDial:I

    if-eq v0, v4, :cond_29

    if-eq v0, v3, :cond_28

    if-eq v0, v2, :cond_27

    goto :goto_10

    .line 257
    :cond_27
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getZoomDial()Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->grayOut()V

    goto :goto_10

    .line 254
    :cond_28
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getZoomDial()Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideImmediately()V

    goto :goto_10

    .line 251
    :cond_29
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getZoomDial()Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->showSimpleViewIfNeeded()V

    .line 263
    :goto_10
    iget p1, p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier$Visibilities;->autoHdrIndicator:I

    if-eq p1, v4, :cond_2b

    if-eq p1, v3, :cond_2a

    goto :goto_11

    .line 268
    :cond_2a
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getAutoHdrIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->hide()V

    goto :goto_11

    .line 265
    :cond_2b
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getAutoHdrIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->show()V

    .line 273
    :goto_11
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->refresh()V

    return-void
.end method

.method public setup(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;Z)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->mLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    .line 32
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPatternApplier;->setupVisibilities(Z)V

    return-void
.end method
