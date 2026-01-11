.class public Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;
.super Landroid/widget/FrameLayout;
.source "ScrollContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;,
        Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$OnScrollListener;,
        Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$DIRECTION;
    }
.end annotation


# static fields
.field private static final INVALID_POINTER:I = -0x1

.field private static final MIN_SCROLL_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "ScrollContainer"


# instance fields
.field private currentStatus:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

.field private mActivePointerId:I

.field private mChildHeight:I

.field private mContext:Landroid/content/Context;

.field private mDirection:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$DIRECTION;

.field private mIsBeingDragged:Z

.field private mLastMotionY:I

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mOnScrollListener:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$OnScrollListener;

.field private mOrientation:I

.field private mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

.field private mScroller:Landroid/widget/OverScroller;

.field private mSettingDefaultHeight:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewConfiguration:Landroid/view/ViewConfiguration;

.field private offsetY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 61
    sget-object p1, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->OPENED:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->currentStatus:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    const/4 p1, 0x0

    .line 65
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mOnScrollListener:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$OnScrollListener;

    const/4 p1, -0x1

    .line 79
    iput p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mActivePointerId:I

    .line 101
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 105
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    sget-object p1, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->OPENED:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->currentStatus:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    const/4 p1, 0x0

    .line 65
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mOnScrollListener:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$OnScrollListener;

    const/4 p1, -0x1

    .line 79
    iput p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mActivePointerId:I

    .line 106
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 110
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    sget-object p1, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->OPENED:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->currentStatus:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    const/4 p1, 0x0

    .line 65
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mOnScrollListener:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$OnScrollListener;

    const/4 p1, -0x1

    .line 79
    iput p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mActivePointerId:I

    .line 111
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->init()V

    return-void
.end method

.method private completeMove()V
    .locals 2

    .line 373
    iget v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mSettingDefaultHeight:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    .line 374
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->getScrollY()I

    move-result v1

    if-gt v1, v0, :cond_0

    .line 376
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->scrollToExit()V

    goto :goto_0

    .line 379
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->scrollToOpen()V

    :goto_0
    return-void
.end method

.method private endDrag()V
    .locals 1

    const/4 v0, 0x0

    .line 425
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mIsBeingDragged:Z

    return-void
.end method

.method private fling(I)V
    .locals 13

    .line 415
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 416
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 418
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->getScrollY()I

    move-result v4

    iget v3, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mSettingDefaultHeight:I

    sub-int/2addr v1, v3

    .line 419
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v6, p1

    .line 418
    invoke-virtual/range {v2 .. v12}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 420
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->postInvalidateOnAnimation()V

    :cond_0
    return-void
.end method

.method private flingWithDispatch(I)V
    .locals 2

    .line 407
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->getScrollY()I

    move-result v0

    if-gtz v0, :cond_0

    if-lez p1, :cond_2

    .line 408
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->getScrollY()I

    move-result v0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->getScrollRange()I

    move-result v1

    if-lt v0, v1, :cond_1

    if-gez p1, :cond_2

    .line 410
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->fling(I)V

    :cond_2
    return-void
.end method

.method private getScrollRange()I
    .locals 2

    .line 459
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 460
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 462
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mSettingDefaultHeight:I

    sub-int/2addr v0, p0

    .line 461
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    return v1
.end method

.method private inChild(II)Z
    .locals 3

    .line 214
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->getScrollY()I

    move-result v0

    .line 216
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 217
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    if-lt p2, v2, :cond_0

    .line 218
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int/2addr v2, v0

    if-ge p2, v2, :cond_0

    .line 219
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p2

    if-lt p1, p2, :cond_0

    .line 220
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result p0

    if-ge p1, p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private init()V
    .locals 2

    .line 123
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mContext:Landroid/content/Context;

    .line 124
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mViewConfiguration:Landroid/view/ViewConfiguration;

    .line 125
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mTouchSlop:I

    .line 126
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mMinimumVelocity:I

    .line 127
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mMaximumVelocity:I

    .line 128
    new-instance v0, Landroid/widget/OverScroller;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mScroller:Landroid/widget/OverScroller;

    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 430
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 432
    :cond_0
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_0
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 438
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private isPortrait()Z
    .locals 1

    .line 553
    iget p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mOrientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onScrollFinished(Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;)V
    .locals 0

    .line 592
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mOnScrollListener:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$OnScrollListener;

    if-eqz p0, :cond_0

    .line 593
    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$OnScrollListener;->onScrollFinished(Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;)V

    :cond_0
    return-void
.end method

.method private onScrollListener(F)V
    .locals 4

    .line 531
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mOnScrollListener:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$OnScrollListener;

    if-eqz p0, :cond_1

    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 535
    :cond_0
    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$OnScrollListener;->onScrollProgressChanged(F)V

    :cond_1
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 227
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 229
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 230
    iget v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 234
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mLastMotionY:I

    .line 235
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mActivePointerId:I

    .line 236
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_1

    .line 237
    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 445
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .line 451
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->scrollTo(II)V

    .line 453
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->invalidate()V

    :cond_0
    return-void
.end method

.method public getCurrentStatus()Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;
    .locals 1

    .line 557
    sget-object v0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$1;->$SwitchMap$com$sonyericsson$android$camera$view$selectabledialog$ScrollContainer$Status:[I

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->currentStatus:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 573
    sget-object p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->OPENED:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    return-object p0

    .line 571
    :pswitch_0
    sget-object p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->CLOSING:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    return-object p0

    .line 569
    :pswitch_1
    sget-object p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->OPENING:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    return-object p0

    .line 567
    :pswitch_2
    sget-object p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->MOVING:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    return-object p0

    .line 565
    :pswitch_3
    sget-object p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->IDLE:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    return-object p0

    .line 563
    :pswitch_4
    sget-object p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->EXIT:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    return-object p0

    .line 561
    :pswitch_5
    sget-object p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->OPENED:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    return-object p0

    .line 559
    :pswitch_6
    sget-object p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->FULLSCREEN:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getScrolledHeight()I
    .locals 1

    .line 643
    iget v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mSettingDefaultHeight:I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->getScrollY()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public noAnimationFullScreen()V
    .locals 3

    .line 598
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->currentStatus:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    sget-object v1, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->FULLSCREEN:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 599
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget v0, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightPortrait:I

    iget v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mSettingDefaultHeight:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->setViewMargin(I)V

    .line 602
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget v0, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightPortrait:I

    iget v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mSettingDefaultHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->offsetY:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->scrollTo(II)V

    goto :goto_0

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget v0, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightLandscape:I

    iget v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mSettingDefaultHeight:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->setViewMargin(I)V

    .line 606
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget v0, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightLandscape:I

    iget v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mSettingDefaultHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->offsetY:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->scrollTo(II)V

    .line 611
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->currentStatus:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    sget-object v1, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->IDLE:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    if-ne v0, v1, :cond_3

    .line 612
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mScroller:Landroid/widget/OverScroller;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 613
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 615
    :cond_2
    invoke-virtual {p0, v2, v2}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->scrollTo(II)V

    :cond_3
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 134
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 135
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mIsBeingDragged:Z

    if-eqz v0, :cond_0

    return v1

    .line 139
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 143
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    const/4 v4, -0x1

    if-eq v0, v1, :cond_6

    if-eq v0, v2, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    goto/16 :goto_0

    .line 206
    :cond_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 172
    :cond_3
    iget v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mActivePointerId:I

    if-ne v0, v4, :cond_4

    goto/16 :goto_0

    .line 178
    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-ne v2, v4, :cond_5

    .line 180
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Invalid pointerId="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " in onInterceptTouchEvent"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ScrollContainer"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 186
    :cond_5
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->initVelocityTrackerIfNotExists()V

    .line 187
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 188
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 189
    iget v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mLastMotionY:I

    sub-int v0, p1, v0

    .line 190
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mTouchSlop:I

    if-le v0, v2, :cond_9

    .line 191
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mIsBeingDragged:Z

    .line 192
    iput p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mLastMotionY:I

    .line 193
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 195
    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 201
    :cond_6
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mIsBeingDragged:Z

    .line 202
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->recycleVelocityTracker()V

    .line 203
    iput v4, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mActivePointerId:I

    goto :goto_0

    .line 145
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v2, v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->inChild(II)Z

    move-result v2

    if-nez v2, :cond_8

    .line 147
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mIsBeingDragged:Z

    .line 148
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->recycleVelocityTracker()V

    goto :goto_0

    .line 155
    :cond_8
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mActivePointerId:I

    .line 157
    iput v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mLastMotionY:I

    .line 158
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->initOrResetVelocityTracker()V

    .line 159
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 160
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 161
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mIsBeingDragged:Z

    .line 162
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_9

    .line 163
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 210
    :cond_9
    :goto_0
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mIsBeingDragged:Z

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v0, 0x0

    .line 248
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 249
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 250
    invoke-virtual {v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 252
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 253
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 254
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    iget v3, v1, Landroid/graphics/Rect;->right:I

    .line 256
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v3, v4

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 257
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v1, v4

    .line 255
    invoke-virtual {v2, v3, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 261
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_f

    const/4 v3, -0x1

    const/4 v4, 0x2

    if-eq v1, v2, :cond_9

    if-eq v1, v4, :cond_3

    const/4 v0, 0x3

    if-eq v1, v0, :cond_9

    const/4 v0, 0x5

    if-eq v1, v0, :cond_2

    const/4 v0, 0x6

    if-eq v1, v0, :cond_1

    goto/16 :goto_3

    .line 365
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 366
    iget v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mLastMotionY:I

    goto/16 :goto_3

    .line 358
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 359
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mLastMotionY:I

    .line 360
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mActivePointerId:I

    goto/16 :goto_3

    .line 287
    :cond_3
    iget v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 289
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid pointerId="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mActivePointerId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " in onTouchEvent"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ScrollContainer"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 293
    :cond_4
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->initVelocityTrackerIfNotExists()V

    .line 294
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 296
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    .line 297
    iget v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mLastMotionY:I

    sub-int v1, p1, v1

    .line 298
    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mIsBeingDragged:Z

    if-nez v3, :cond_7

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mTouchSlop:I

    if-le v3, v4, :cond_7

    .line 299
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 301
    invoke-interface {v3, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 304
    :cond_5
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mIsBeingDragged:Z

    if-lez v1, :cond_6

    .line 306
    iget v3, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mTouchSlop:I

    sub-int/2addr v1, v3

    goto :goto_0

    .line 308
    :cond_6
    iget v3, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mTouchSlop:I

    add-int/2addr v1, v3

    .line 311
    :cond_7
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->getScrollY()I

    move-result v3

    sub-int/2addr v3, v1

    .line 312
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mIsBeingDragged:Z

    if-eqz v1, :cond_13

    .line 313
    sget-object v1, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->MOVING:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->currentStatus:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    .line 315
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v4, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mSettingDefaultHeight:I

    sub-int/2addr v1, v4

    if-lt v3, v1, :cond_8

    .line 316
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mSettingDefaultHeight:I

    sub-int/2addr p1, v1

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->scrollTo(II)V

    goto/16 :goto_3

    .line 319
    :cond_8
    invoke-virtual {p0, v0, v3}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->scrollTo(II)V

    .line 320
    iput p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mLastMotionY:I

    goto/16 :goto_3

    .line 327
    :cond_9
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mMaximumVelocity:I

    int-to-float v0, v0

    const/16 v1, 0x3e8

    invoke-virtual {p1, v1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 328
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mIsBeingDragged:Z

    if-eqz p1, :cond_c

    .line 330
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->isPortrait()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 331
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result p1

    neg-float p1, p1

    goto :goto_1

    .line 333
    :cond_a
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result p1

    :goto_1
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_b

    .line 335
    sget-object v0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$DIRECTION;->UP:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$DIRECTION;

    goto :goto_2

    :cond_b
    sget-object v0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$DIRECTION;->DOWN:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$DIRECTION;

    :goto_2
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mDirection:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$DIRECTION;

    .line 336
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mMinimumVelocity:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_c

    float-to-int p1, p1

    .line 337
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->flingWithDispatch(I)V

    .line 340
    :cond_c
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->endDrag()V

    .line 341
    iput v3, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mActivePointerId:I

    .line 344
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mDirection:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$DIRECTION;

    sget-object v0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$DIRECTION;->DOWN:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$DIRECTION;

    if-ne p1, v0, :cond_d

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->getScrollY()I

    move-result p1

    if-gez p1, :cond_d

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 345
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p1

    neg-float p1, p1

    .line 344
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mMinimumVelocity:I

    mul-int/2addr v0, v4

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_d

    .line 346
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->scrollToExit()V

    return v2

    .line 351
    :cond_d
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->getScrollY()I

    move-result p1

    if-gez p1, :cond_e

    .line 352
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->completeMove()V

    .line 354
    :cond_e
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->recycleVelocityTracker()V

    goto :goto_3

    .line 263
    :cond_f
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->getChildCount()I

    move-result v1

    if-nez v1, :cond_10

    return v0

    .line 267
    :cond_10
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mIsBeingDragged:Z

    if-eqz v1, :cond_11

    .line 269
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 271
    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 275
    :cond_11
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_12

    .line 276
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 280
    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mLastMotionY:I

    .line 281
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mActivePointerId:I

    .line 283
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->initOrResetVelocityTracker()V

    .line 284
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_13
    :goto_3
    return v2
.end method

.method public scrollTo(II)V
    .locals 4

    .line 470
    iget v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mChildHeight:I

    iget v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mSettingDefaultHeight:I

    sub-int v2, v0, v1

    if-lt p2, v2, :cond_0

    sub-int p2, v0, v1

    .line 474
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 476
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x, y:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 479
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->isPortrait()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 480
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget p1, p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightPortrait:I

    goto :goto_0

    .line 482
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget p1, p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightLandscape:I

    :goto_0
    int-to-float p1, p1

    if-ltz p2, :cond_3

    int-to-float v0, p2

    .line 487
    iget v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mSettingDefaultHeight:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->onScrollListener(F)V

    goto :goto_1

    :cond_3
    int-to-float v0, p2

    .line 490
    iget v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mSettingDefaultHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->onScrollListener(F)V

    :goto_1
    int-to-float v0, p2

    .line 493
    iget v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mSettingDefaultHeight:I

    int-to-float v2, v1

    sub-float v2, p1, v2

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_5

    if-nez p2, :cond_4

    int-to-float v2, v1

    sub-float v2, p1, v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_5

    .line 496
    :cond_4
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->currentStatus:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    sget-object v1, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->FULLSCREEN:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    if-eq p2, v1, :cond_8

    .line 497
    sget-object p2, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->FULLSCREEN:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->currentStatus:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    .line 498
    sget-object p2, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->FULLSCREEN:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->onScrollFinished(Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;)V

    goto :goto_2

    :cond_5
    if-lez p2, :cond_6

    int-to-float v2, v1

    sub-float v2, p1, v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_6

    .line 502
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->currentStatus:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    sget-object v1, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->IDLE:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    if-eq p2, v1, :cond_8

    .line 503
    sget-object p2, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->IDLE:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->currentStatus:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    goto :goto_2

    :cond_6
    if-nez p2, :cond_7

    .line 507
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->currentStatus:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    sget-object v1, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->OPENED:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    if-eq p2, v1, :cond_8

    .line 508
    sget-object p2, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->OPENED:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->currentStatus:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    .line 509
    sget-object p2, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->OPENED:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->onScrollFinished(Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;)V

    goto :goto_2

    :cond_7
    neg-int v1, v1

    if-ne p2, v1, :cond_8

    .line 513
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->currentStatus:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    sget-object v1, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->EXIT:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    if-eq p2, v1, :cond_8

    .line 514
    sget-object p2, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->EXIT:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->currentStatus:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    .line 515
    sget-object p2, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->EXIT:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->onScrollFinished(Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;)V

    .line 519
    :cond_8
    :goto_2
    iget p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mSettingDefaultHeight:I

    int-to-float p2, p2

    sub-float p2, p1, p2

    cmpl-float p2, v0, p2

    if-ltz p2, :cond_9

    .line 520
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->getScrollY()I

    move-result p2

    int-to-float p2, p2

    iget v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mSettingDefaultHeight:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    sub-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->offsetY:I

    const/4 p2, 0x0

    .line 521
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget v1, v1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightPortrait:I

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_9

    .line 522
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget p2, p2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightPortrait:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->offsetY:I

    .line 526
    :cond_9
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_a

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "current status:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->currentStatus:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public scrollToExit()V
    .locals 7

    .line 385
    iget v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mSettingDefaultHeight:I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->getScrollY()I

    move-result v1

    add-int/2addr v0, v1

    neg-int v5, v0

    if-nez v5, :cond_0

    return-void

    .line 389
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->CLOSING:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->currentStatus:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    .line 390
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->getScrollY()I

    move-result v3

    const/4 v4, 0x0

    const/16 v6, 0xc8

    const/4 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 391
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->invalidate()V

    return-void
.end method

.method public scrollToOpen()V
    .locals 7

    .line 397
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->getScrollY()I

    move-result v0

    neg-int v5, v0

    if-nez v5, :cond_0

    return-void

    .line 401
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->OPENING:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->currentStatus:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    .line 402
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->getScrollY()I

    move-result v3

    const/4 v4, 0x0

    const/16 v6, 0xc8

    const/4 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 403
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->invalidate()V

    return-void
.end method

.method public setChildHeight(I)V
    .locals 0

    .line 620
    iput p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mChildHeight:I

    return-void
.end method

.method public setCurrentStatus(Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;)V
    .locals 0

    .line 628
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->currentStatus:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    return-void
.end method

.method public setOnScrollListener(Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$OnScrollListener;)V
    .locals 0

    .line 624
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mOnScrollListener:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$OnScrollListener;

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 540
    iput p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mOrientation:I

    .line 541
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->noAnimationFullScreen()V

    return-void
.end method

.method public setSettingDefaultHeight(I)V
    .locals 0

    .line 545
    iput p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mSettingDefaultHeight:I

    return-void
.end method

.method public setSettingMenuParams(Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;)V
    .locals 0

    .line 549
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    return-void
.end method

.method public setViewMargin(I)V
    .locals 2

    .line 632
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 633
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 635
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 636
    iget p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->mChildHeight:I

    iput p0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 637
    invoke-virtual {v1, v0, p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
