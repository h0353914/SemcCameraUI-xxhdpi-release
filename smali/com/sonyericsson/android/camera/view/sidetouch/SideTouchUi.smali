.class public Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;
.super Ljava/lang/Object;
.source "SideTouchUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon;,
        Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;,
        Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;
    }
.end annotation


# instance fields
.field private mAutoReviewProxy:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$AutoReviewContentReceiverProxy;

.field private mButtonListenerFactory:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory;

.field private final mIconLayer:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsOneShot:Z

.field private mMovableArea:Landroid/view/ViewGroup;

.field private final mOnDetachedListener:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon$OnDetachedListener;

.field private mOrientation:I

.field private mRecordingTimeReceiverProxy:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$RecordingTimeReceiverProxy;

.field private mZoomUiUpdateProxy:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIconLayer(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mIconLayer:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mattemptLayerFocusChange(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->attemptLayerFocusChange(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdestroyIcon(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->destroyIcon(I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;-><init>(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Z)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mIconLayer:Landroid/util/SparseArray;

    .line 32
    new-instance v0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$1;-><init>(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mOnDetachedListener:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon$OnDetachedListener;

    .line 83
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mMovableArea:Landroid/view/ViewGroup;

    .line 84
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mIsOneShot:Z

    return-void
.end method

.method private attachInternal(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon;Landroid/graphics/Point;Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;)Z
    .locals 2

    .line 336
    iget v0, p3, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;->layer:I

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->getAttachPoint(I)Landroid/graphics/Point;

    move-result-object v0

    if-nez p2, :cond_0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 343
    :cond_0
    iget v1, p3, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;->layer:I

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->removeIconView(I)V

    .line 345
    iget v1, p3, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;->layer:I

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->getIconLayer(I)Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;

    move-result-object v1

    .line 346
    invoke-static {v1, p1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;->-$$Nest$fputmIcon(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon;)V

    .line 347
    invoke-static {v1, p3}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;->-$$Nest$fputmIconType(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;)V

    if-nez p2, :cond_1

    .line 351
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;->-$$Nest$fputmAttachPoint(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;Landroid/graphics/Point;)V

    goto :goto_0

    .line 353
    :cond_1
    invoke-static {v1, p2}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;->-$$Nest$fputmAttachPoint(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;Landroid/graphics/Point;)V

    .line 356
    :goto_0
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mMovableArea:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;->-$$Nest$fgetmAttachPoint(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;)Landroid/graphics/Point;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon;->attach(Landroid/view/ViewGroup;Landroid/graphics/Point;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 358
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 360
    :cond_2
    iget p2, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mOrientation:I

    invoke-interface {p1, p2}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon;->setUiOrientation(I)V

    .line 362
    iget p1, p3, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;->layer:I

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->requestLayerFocus(I)V

    const/4 p0, 0x1

    return p0
.end method

.method private attemptLayerFocusChange(I)V
    .locals 0

    .line 393
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->searchNextIconLayer(I)Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 394
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;->-$$Nest$misValid(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 395
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;->-$$Nest$fputmFocused(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;Z)V

    .line 396
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;->-$$Nest$fgetmIcon(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;)Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon;

    move-result-object p1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;->-$$Nest$fgetmFocused(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;)Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon;->onFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method private compareTo(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;)Z
    .locals 1

    .line 302
    iget v0, p1, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;->layer:I

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->getIconType(I)Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    move-result-object p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private destroyIcon(I)V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mIconLayer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;

    .line 283
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->removeIconView(I)V

    .line 284
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;->-$$Nest$minvalid(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;)V

    return-void
.end method

.method private detachIcon(I)V
    .locals 0

    .line 264
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->getIcon(I)Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 268
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mMovableArea:Landroid/view/ViewGroup;

    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon;->detach(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private findNextIconLayer(IZ)Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;
    .locals 2

    const/4 v0, 0x0

    .line 411
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mIconLayer:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 412
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mIconLayer:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    if-eqz p2, :cond_0

    if-ge p1, v1, :cond_1

    goto :goto_1

    :cond_0
    if-ge v1, p1, :cond_1

    :goto_1
    move p1, v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 418
    :cond_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mIconLayer:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;

    return-object p0
.end method

.method private getAttachPoint(I)Landroid/graphics/Point;
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mIconLayer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 323
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mIconLayer:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;->-$$Nest$fgetmAttachPoint(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method private getIcon(I)Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mIconLayer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 316
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mIconLayer:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;->-$$Nest$fgetmIcon(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;)Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon;

    move-result-object p0

    return-object p0
.end method

.method private getIconLayer(I)Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mIconLayer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;

    if-nez v0, :cond_0

    .line 329
    new-instance v0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;-><init>(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer-IA;)V

    .line 330
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mIconLayer:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private getIconType(I)Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mIconLayer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 309
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mIconLayer:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;->-$$Nest$fgetmIconType(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;)Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    move-result-object p0

    return-object p0
.end method

.method private removeIconView(I)V
    .locals 1

    .line 370
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->getIcon(I)Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mMovableArea:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 377
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mMovableArea:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private requestLayerFocus(I)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 382
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mIconLayer:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 383
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mIconLayer:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 384
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mIconLayer:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;

    if-eqz v3, :cond_1

    .line 385
    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;->-$$Nest$misValid(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-ne p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    move v2, v0

    .line 386
    :goto_1
    invoke-static {v3, v2}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;->-$$Nest$fputmFocused(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;Z)V

    .line 387
    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;->-$$Nest$fgetmIcon(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;)Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon;

    move-result-object v2

    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;->-$$Nest$fgetmFocused(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon;->onFocusChanged(Z)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private searchNextIconLayer(I)Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;
    .locals 2

    const/4 v0, 0x1

    .line 402
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->findNextIconLayer(IZ)Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 403
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;->-$$Nest$misValid(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 405
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->findNextIconLayer(IZ)Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;

    move-result-object v0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public attachIcon(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;Landroid/graphics/Point;)V
    .locals 5

    .line 172
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mMovableArea:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 175
    sget-object v1, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$2;->$SwitchMap$com$sonyericsson$android$camera$view$sidetouch$SideTouchUi$Type:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    return-void

    .line 232
    :pswitch_0
    new-instance p2, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$TransparentCoverIcon;

    invoke-direct {p2, v0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$TransparentCoverIcon;-><init>(Landroid/content/Context;)V

    .line 233
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mOnDetachedListener:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon$OnDetachedListener;

    invoke-interface {p2, v0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon;->setOnDetachedListener(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon$OnDetachedListener;)V

    .line 234
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    goto/16 :goto_1

    .line 226
    :pswitch_1
    new-instance v1, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RestrictedRecordingPauseIcon;

    iget v2, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mOrientation:I

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mButtonListenerFactory:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mRecordingTimeReceiverProxy:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$RecordingTimeReceiverProxy;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RestrictedRecordingPauseIcon;-><init>(Landroid/content/Context;ILcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory;Lcom/sonyericsson/android/camera/view/ViewFinderImpl$RecordingTimeReceiverProxy;)V

    goto/16 :goto_0

    .line 214
    :pswitch_2
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mIsOneShot:Z

    if-nez v1, :cond_0

    .line 215
    new-instance v1, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingPauseIcon;

    iget v2, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mOrientation:I

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mButtonListenerFactory:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mRecordingTimeReceiverProxy:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$RecordingTimeReceiverProxy;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingPauseIcon;-><init>(Landroid/content/Context;ILcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory;Lcom/sonyericsson/android/camera/view/ViewFinderImpl$RecordingTimeReceiverProxy;)V

    goto :goto_0

    .line 219
    :cond_0
    new-instance v1, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RestrictedRecordingPauseIcon;

    iget v2, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mOrientation:I

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mButtonListenerFactory:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mRecordingTimeReceiverProxy:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$RecordingTimeReceiverProxy;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RestrictedRecordingPauseIcon;-><init>(Landroid/content/Context;ILcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory;Lcom/sonyericsson/android/camera/view/ViewFinderImpl$RecordingTimeReceiverProxy;)V

    goto :goto_0

    .line 208
    :pswitch_3
    new-instance v1, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RestrictedRecordingIcon;

    iget v2, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mOrientation:I

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mButtonListenerFactory:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mRecordingTimeReceiverProxy:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$RecordingTimeReceiverProxy;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RestrictedRecordingIcon;-><init>(Landroid/content/Context;ILcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory;Lcom/sonyericsson/android/camera/view/ViewFinderImpl$RecordingTimeReceiverProxy;)V

    goto :goto_0

    .line 196
    :pswitch_4
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mIsOneShot:Z

    if-nez v1, :cond_1

    .line 197
    new-instance v1, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;

    iget v2, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mOrientation:I

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mButtonListenerFactory:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mRecordingTimeReceiverProxy:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$RecordingTimeReceiverProxy;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;-><init>(Landroid/content/Context;ILcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory;Lcom/sonyericsson/android/camera/view/ViewFinderImpl$RecordingTimeReceiverProxy;)V

    goto :goto_0

    .line 201
    :cond_1
    new-instance v1, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RestrictedRecordingIcon;

    iget v2, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mOrientation:I

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mButtonListenerFactory:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mRecordingTimeReceiverProxy:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$RecordingTimeReceiverProxy;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RestrictedRecordingIcon;-><init>(Landroid/content/Context;ILcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory;Lcom/sonyericsson/android/camera/view/ViewFinderImpl$RecordingTimeReceiverProxy;)V

    goto :goto_0

    .line 191
    :pswitch_5
    new-instance v1, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ZoomIcon;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mZoomUiUpdateProxy:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;

    invoke-direct {v1, v0, v2}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ZoomIcon;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;)V

    .line 192
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mOnDetachedListener:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon$OnDetachedListener;

    invoke-interface {v1, v0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon;->setOnDetachedListener(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon$OnDetachedListener;)V

    goto :goto_0

    .line 186
    :pswitch_6
    new-instance v1, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mAutoReviewProxy:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$AutoReviewContentReceiverProxy;

    invoke-direct {v1, v0, v2}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/ViewFinderImpl$AutoReviewContentReceiverProxy;)V

    .line 187
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mOnDetachedListener:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon$OnDetachedListener;

    invoke-interface {v1, v0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon;->setOnDetachedListener(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon$OnDetachedListener;)V

    goto :goto_0

    .line 182
    :pswitch_7
    new-instance v1, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$SelfTimerCancelIcon;

    iget v2, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mOrientation:I

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mButtonListenerFactory:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory;

    invoke-direct {v1, v0, v2, v3}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$SelfTimerCancelIcon;-><init>(Landroid/content/Context;ILcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory;)V

    goto :goto_0

    .line 178
    :pswitch_8
    new-instance v1, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$CountDownIcon;

    invoke-direct {v1, v0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$CountDownIcon;-><init>(Landroid/content/Context;)V

    :goto_0
    move-object v0, p2

    move-object p2, v1

    .line 242
    :goto_1
    invoke-direct {p0, p2, v0, p1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->attachInternal(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon;Landroid/graphics/Point;Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public varargs containsAll([Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;)Z
    .locals 4

    .line 157
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 158
    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->compareTo(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public varargs containsIn([Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;)Z
    .locals 4

    .line 142
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 143
    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->compareTo(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public destroyIcon()V
    .locals 2

    const/4 v0, 0x0

    .line 275
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mIconLayer:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mIconLayer:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 277
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->destroyIcon(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public destroyTo(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;)Z
    .locals 1

    .line 294
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->compareTo(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget p1, p1, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;->layer:I

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->destroyIcon(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public detachTo(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;)Z
    .locals 1

    .line 252
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->compareTo(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget p1, p1, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;->layer:I

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->detachIcon(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setAutoReviewProxy(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$AutoReviewContentReceiverProxy;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mAutoReviewProxy:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$AutoReviewContentReceiverProxy;

    return-void
.end method

.method public setRecordingTimeReceiverProxy(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$RecordingTimeReceiverProxy;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mRecordingTimeReceiverProxy:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$RecordingTimeReceiverProxy;

    return-void
.end method

.method public setScreenButtonListenerFactory(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mButtonListenerFactory:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory;

    return-void
.end method

.method public setUiOrientation(I)V
    .locals 2

    .line 112
    iput p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mOrientation:I

    const/4 p1, 0x0

    .line 113
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mIconLayer:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mIconLayer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;

    if-eqz v0, :cond_0

    .line 115
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;->-$$Nest$misValid(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;->-$$Nest$fgetmIcon(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;)Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mOrientation:I

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon;->setUiOrientation(I)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setZoomBarUpdateProxy(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mZoomUiUpdateProxy:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;

    return-void
.end method

.method public showIcon()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 125
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mIconLayer:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 126
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;->mIconLayer:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;

    .line 127
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;->-$$Nest$fgetmFocused(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;->-$$Nest$fgetmIcon(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$IconLayer;)Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon;->show()V

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
