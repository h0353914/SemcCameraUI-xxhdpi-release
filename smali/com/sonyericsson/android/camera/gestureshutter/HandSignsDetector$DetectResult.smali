.class Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectResult;
.super Ljava/lang/Object;
.source "HandSignsDetector.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DetectResult"
.end annotation


# static fields
.field public static final AHS_STATUS_CLICKDOWN:I = 0x200000

.field public static final AHS_STATUS_CLICKUP:I = 0x400000

.field public static final AHS_STATUS_NONE:I = 0x0

.field public static final AHS_STATUS_PALM:I = 0x10


# instance fields
.field private mArea:Landroid/graphics/Rect;

.field private mStatus:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface$HandStatus;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectResult;->mArea:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getArea()Landroid/graphics/Rect;
    .locals 0

    .line 360
    iget-object p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectResult;->mArea:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getStatus()Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface$HandStatus;
    .locals 0

    .line 368
    iget-object p0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectResult;->mStatus:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface$HandStatus;

    return-object p0
.end method

.method public setAreaAndStatus(IIIII)V
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectResult;->mArea:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 353
    iget-object p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectResult;->mArea:Landroid/graphics/Rect;

    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 354
    iget-object p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectResult;->mArea:Landroid/graphics/Rect;

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 355
    iget-object p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectResult;->mArea:Landroid/graphics/Rect;

    iput p4, p1, Landroid/graphics/Rect;->bottom:I

    const/16 p1, 0x10

    if-ne p5, p1, :cond_0

    .line 356
    sget-object p1, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface$HandStatus;->PALM:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface$HandStatus;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface$HandStatus;->NONE:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface$HandStatus;

    :goto_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectResult;->mStatus:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface$HandStatus;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectResult;->getStatus()Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface$HandStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectResult;->getArea()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
