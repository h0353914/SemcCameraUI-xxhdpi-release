.class public Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
.super Landroid/widget/RelativeLayout;
.source "TaggedRectangle.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;


# static fields
.field public static final FACEDETECT_CAPTURE:I = 0x1

.field public static final FACERECOGNITION_REVIEW:I = 0x2

.field private static final GAUGE_DIR_BOTTOM:I = 0x2

.field private static final GAUGE_DIR_LEFT:I = 0x0

.field private static final GAUGE_DIR_TOP:I = 0x1

.field public static final OBJECT_TRACKING:I = 0x3

.field public static final SMILE_DETECTION_CAPTURE:I = 0x0

.field private static final SMILE_GAUGE_NUMBER:I = 0x3

.field public static final TAG:Ljava/lang/String; = "TaggedRectangle"


# instance fields
.field private mCurrentType:I

.field private mFaceUuid:Ljava/lang/String;

.field private mIsAbleToTouch:Z

.field private mIsLockedBySelfTimer:Z

.field private mIsUpdate:Z

.field private mRectImageHeight:I

.field private mRectImageWidth:I

.field private mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

.field private mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;

.field private mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 97
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 78
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsUpdate:Z

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsAbleToTouch:Z

    .line 84
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsLockedBySelfTimer:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 78
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsUpdate:Z

    const/4 p2, 0x1

    .line 81
    iput-boolean p2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsAbleToTouch:Z

    .line 84
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsLockedBySelfTimer:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 128
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 78
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsUpdate:Z

    const/4 p2, 0x1

    .line 81
    iput-boolean p2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsAbleToTouch:Z

    .line 84
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsLockedBySelfTimer:Z

    return-void
.end method

.method private isSmileGaugeVisible()Z
    .locals 3

    .line 444
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->getVisibility()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    aget-object v0, v0, v2

    .line 445
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v0, 0x2

    aget-object p0, p0, v0

    .line 446
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    return v2
.end method

.method private prepare()V
    .locals 3

    .line 135
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "prepare() is called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const v0, 0x7f09015f

    .line 144
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    const/4 v0, 0x3

    .line 145
    new-array v0, v0, [Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const v1, 0x7f0901c2

    .line 146
    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 147
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const v1, 0x7f0901c5

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 148
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const v1, 0x7f0901c0

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v1, 0x2

    aput-object p0, v0, v1

    return-void
.end method

.method private setRectCenter(II)V
    .locals 2

    .line 259
    iget v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mCurrentType:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 278
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 279
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 268
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 269
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    :goto_0
    neg-int p1, p1

    add-int/2addr p1, v0

    neg-int p2, p2

    add-int/2addr p2, v1

    .line 283
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->scrollTo(II)V

    return-void
.end method

.method private setRectSize(II)V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 234
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 235
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 236
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private setUuid(Ljava/lang/String;)V
    .locals 0

    .line 497
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mFaceUuid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final changeRectangleResource(I)V
    .locals 0

    .line 304
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->changeChildBackgroundResource(I)V

    return-void
.end method

.method public clearUpdated()V
    .locals 1

    const/4 v0, 0x0

    .line 550
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsUpdate:Z

    return-void
.end method

.method public getFaceRect()Landroid/graphics/Rect;
    .locals 3

    .line 484
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 485
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    const/4 v1, 0x2

    .line 486
    new-array v1, v1, [I

    .line 487
    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getLocationInWindow([I)V

    const/4 p0, 0x0

    .line 488
    aget p0, v1, p0

    neg-int p0, p0

    const/4 v2, 0x1

    aget v1, v1, v2

    neg-int v1, v1

    invoke-virtual {v0, p0, v1}, Landroid/graphics/Rect;->offset(II)V

    return-object v0
.end method

.method public getRectImageHeight()I
    .locals 0

    .line 597
    iget p0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectImageHeight:I

    return p0
.end method

.method public getRectImageWidth()I
    .locals 0

    .line 594
    iget p0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectImageWidth:I

    return p0
.end method

.method public getRectangleHeight()I
    .locals 0

    .line 412
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getHeight()I

    move-result p0

    return p0
.end method

.method public getRectangleLeft()I
    .locals 0

    .line 385
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getLeft()I

    move-result p0

    return p0
.end method

.method public getRectangleTop()I
    .locals 0

    .line 394
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getTop()I

    move-result p0

    return p0
.end method

.method public getRectangleWidth()I
    .locals 0

    .line 403
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getWidth()I

    move-result p0

    return p0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 0

    .line 493
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mFaceUuid:Ljava/lang/String;

    return-object p0
.end method

.method public hide()V
    .locals 3

    .line 558
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->isSmileGaugeVisible()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 559
    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setSmileGaugeVisibility(I)V

    .line 561
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 565
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 567
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 568
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 569
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 571
    :cond_1
    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public isUpdate()Z
    .locals 0

    .line 554
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsUpdate:Z

    return p0
.end method

.method public moveRectTopLeft(II)V
    .locals 0

    neg-int p1, p1

    neg-int p2, p2

    .line 295
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->scrollBy(II)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 319
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "onDetachedFromWindow() is called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 320
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;

    .line 321
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->setRectangleOnTouchListener(Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;)V

    .line 322
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onRectTouchCancel(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 1

    .line 371
    iget-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsLockedBySelfTimer:Z

    if-eqz p1, :cond_0

    return-void

    .line 374
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsAbleToTouch:Z

    if-eqz v0, :cond_1

    .line 375
    invoke-interface {p1, p0, p2}, Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;->onRectTouchCancel(Landroid/view/View;Landroid/view/MotionEvent;)V

    :cond_1
    return-void
.end method

.method public onRectTouchDown(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 1

    .line 335
    iget-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsLockedBySelfTimer:Z

    if-eqz p1, :cond_0

    return-void

    .line 338
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsAbleToTouch:Z

    if-eqz v0, :cond_1

    .line 339
    invoke-interface {p1, p0, p2}, Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;->onRectTouchDown(Landroid/view/View;Landroid/view/MotionEvent;)V

    :cond_1
    return-void
.end method

.method public onRectTouchLongPress(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 1

    .line 577
    iget-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsLockedBySelfTimer:Z

    if-eqz p1, :cond_0

    return-void

    .line 580
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsAbleToTouch:Z

    if-eqz v0, :cond_1

    .line 581
    invoke-interface {p1, p0, p2}, Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;->onRectTouchLongPress(Landroid/view/View;Landroid/view/MotionEvent;)V

    :cond_1
    return-void
.end method

.method public onRectTouchUp(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 1

    .line 353
    iget-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsLockedBySelfTimer:Z

    if-eqz p1, :cond_0

    return-void

    .line 356
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsAbleToTouch:Z

    if-eqz v0, :cond_1

    .line 357
    invoke-interface {p1, p0, p2}, Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;->onRectTouchUp(Landroid/view/View;Landroid/view/MotionEvent;)V

    :cond_1
    return-void
.end method

.method public prepare(I)V
    .locals 1

    .line 160
    iput p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mCurrentType:I

    .line 161
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->prepare()V

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->setVisibility(I)V

    goto :goto_0

    .line 170
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->setRectangleOnTouchListener(Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;)V

    :goto_0
    return-void
.end method

.method public setIsAbleToTouch(Z)V
    .locals 0

    .line 586
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsAbleToTouch:Z

    return-void
.end method

.method public setLockedBySelfTimer(Z)V
    .locals 0

    .line 590
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsLockedBySelfTimer:Z

    return-void
.end method

.method public setRawPosition(Landroid/graphics/Rect;)V
    .locals 2

    .line 184
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectSize(II)V

    .line 185
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectCenter(II)V

    return-void
.end method

.method public setRectImageSize(IIII)V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    const v1, 0x7f090160

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 211
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 212
    iput p3, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectImageWidth:I

    .line 213
    iput p4, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectImageHeight:I

    if-eqz v1, :cond_0

    .line 215
    iput p4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 216
    iput p3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 217
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    .line 220
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectCenter(II)V

    return-void
.end method

.method public setRectOrientation(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 539
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    const/high16 p1, -0x3d4c0000    # -90.0f

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->setRotation(F)V

    goto :goto_0

    .line 541
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->setRotation(F)V

    :goto_0
    return-void
.end method

.method public setRectPosition(IIII)V
    .locals 0

    .line 197
    invoke-direct {p0, p3, p4}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectSize(II)V

    .line 198
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectCenter(II)V

    return-void
.end method

.method public setRectangleOnTouchListener(Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;

    return-void
.end method

.method public setSize(II)V
    .locals 1

    .line 241
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 242
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 243
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 244
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setSmileGaugeVisibility(I)V
    .locals 2

    .line 458
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setVisibility(I)V

    .line 459
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setVisibility(I)V

    .line 460
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v0, 0x2

    aget-object p0, p0, v0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setVisibility(I)V

    return-void
.end method

.method public setSmileGaugesPosition(IIIII)V
    .locals 8

    .line 473
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setPosition(IIIII)V

    .line 474
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    invoke-virtual/range {v2 .. v7}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setPosition(IIIII)V

    .line 475
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v0, 0x2

    aget-object v1, p0, v0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setPosition(IIIII)V

    return-void
.end method

.method public final setSmileLevel(I)V
    .locals 3

    if-gez p1, :cond_0

    return-void

    .line 420
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 421
    invoke-virtual {v2, p1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setSmileLevel(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setSmileScore(I)V
    .locals 2

    .line 432
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setSmileScore(I)V

    .line 433
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setSmileScore(I)V

    .line 434
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v0, 0x2

    aget-object p0, p0, v0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setSmileScore(I)V

    return-void
.end method

.method public setUpdated()V
    .locals 1

    const/4 v0, 0x1

    .line 546
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsUpdate:Z

    return-void
.end method

.method public startRectangleAnimation(I)V
    .locals 1

    .line 518
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f010022

    .line 517
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    check-cast p1, Landroid/view/animation/AnimationSet;

    .line 521
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public startRectanglePressAnimation()V
    .locals 2

    .line 527
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010021

    .line 526
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationSet;

    .line 530
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->clearAnimation()V

    .line 511
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public update(Ljava/lang/String;I)V
    .locals 0

    .line 505
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setUuid(Ljava/lang/String;)V

    return-void
.end method
