.class public final Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;
.super Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon;
.source "SideTouchUiIcon.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/AutoReviewContent$ContentReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "AutoReviewIcon"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;,
        Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$AutoReviewImageView;,
        Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$PreviewTimerHandler;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:J = 0xc8L

.field private static final ANIMATION_HIDE_SCALE:F = 0.8f

.field private static final ANIMATION_SHOW_SCALE:F = 1.2f

.field private static final TAG:Ljava/lang/String; = "AutoReviewIcon"


# instance fields
.field private final mAspect:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCloseListener:Lcom/sonyericsson/android/camera/view/AutoReviewController$OnAutoReviewEventListener;

.field private mImageView:Landroid/widget/ImageView;

.field private mOrientation:I

.field private mTimer:Lcom/sonyericsson/cameracommon/utility/CameraTimer;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBitmap(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCloseListener(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;)Lcom/sonyericsson/android/camera/view/AutoReviewController$OnAutoReviewEventListener;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->mCloseListener:Lcom/sonyericsson/android/camera/view/AutoReviewController$OnAutoReviewEventListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCloseListener(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;Lcom/sonyericsson/android/camera/view/AutoReviewController$OnAutoReviewEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->mCloseListener:Lcom/sonyericsson/android/camera/view/AutoReviewController$OnAutoReviewEventListener;

    return-void
.end method

.method static bridge synthetic -$$Nest$mdetachFromParent(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->detachFromParent()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartHideAnimation(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->startHideAnimation()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopTimer(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->stopTimer()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/ViewFinderImpl$AutoReviewContentReceiverProxy;)V
    .locals 2

    .line 279
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon;-><init>(Landroid/content/Context;)V

    .line 280
    invoke-virtual {p2, p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$AutoReviewContentReceiverProxy;->bindReceiver(Lcom/sonyericsson/android/camera/view/AutoReviewContent$ContentReceiver;)V

    .line 282
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->isTablet(Landroid/content/Context;)Z

    move-result p1

    const/4 p2, 0x3

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 283
    invoke-direct {p0, v1, v1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->isPreviewAspectRatio(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 284
    sget-object p1, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;->TABLET_1_1:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->mAspect:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;

    goto :goto_0

    .line 285
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->isPreviewAspectRatio(II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 286
    sget-object p1, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;->TABLET_4_3:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->mAspect:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;

    goto :goto_0

    .line 288
    :cond_1
    sget-object p1, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;->TABLET_16_9:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->mAspect:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;

    goto :goto_0

    .line 291
    :cond_2
    invoke-direct {p0, v1, v1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->isPreviewAspectRatio(II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 292
    sget-object p1, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;->PHONE_1_1:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->mAspect:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;

    goto :goto_0

    .line 293
    :cond_3
    invoke-direct {p0, v0, p2}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->isPreviewAspectRatio(II)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 294
    sget-object p1, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;->PHONE_4_3:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->mAspect:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;

    goto :goto_0

    .line 296
    :cond_4
    sget-object p1, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;->PHONE_16_9:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->mAspect:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;

    :goto_0
    return-void
.end method

.method private detachFromParent()V
    .locals 1

    .line 397
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->getIconView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 399
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->detach(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method private isPreviewAspectRatio(II)Z
    .locals 4

    .line 503
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object p0

    .line 505
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 507
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    mul-int/2addr v0, p1

    .line 508
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    mul-int/2addr p0, p2

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_0

    .line 510
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    mul-int/2addr v0, p2

    .line 511
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    mul-int/2addr p0, p1

    if-ne v0, p0, :cond_0

    :goto_0
    return v2
.end method

.method private startHideAnimation()V
    .locals 7

    .line 359
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 360
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->mImageView:Landroid/widget/ImageView;

    .line 361
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 362
    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float v3, v3

    const v4, 0x3e4ccccc    # 0.19999999f

    mul-float/2addr v3, v4

    .line 363
    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    .line 364
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    div-float/2addr v2, v5

    const/4 v5, 0x0

    invoke-direct {v4, v5, v3, v5, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 366
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3f4ccccd    # 0.8f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v2, v6, v3, v6, v3}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 368
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v6, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 370
    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 371
    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 372
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 373
    new-instance v2, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$1;-><init>(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const-wide/16 v2, 0xc8

    .line 390
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 391
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 392
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->mImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    return-void
.end method

.method private startShowAnimation()V
    .locals 7

    .line 338
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 340
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->mImageView:Landroid/widget/ImageView;

    .line 341
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 342
    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float v3, v3

    const v4, 0x3f99999a    # 1.2f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    .line 343
    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    float-to-int v5, v5

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr v5, v2

    int-to-float v2, v5

    .line 344
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    neg-float v3, v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    neg-float v2, v2

    div-float/2addr v2, v6

    const/4 v6, 0x0

    invoke-direct {v5, v3, v6, v2, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 346
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v3, v4, v3}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 348
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v4, v6, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 350
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 351
    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 352
    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v2, 0xc8

    .line 353
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 354
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 355
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private startTimer(J)V
    .locals 10

    .line 440
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startTimer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 441
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->stopTimer()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 443
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    new-instance v6, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$PreviewTimerHandler;

    const/4 v1, 0x0

    invoke-direct {v6, p0, v1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$PreviewTimerHandler;-><init>(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$PreviewTimerHandler-IA;)V

    const-string v7, "AutoReviewIcon"

    const-wide/16 v8, 0x0

    move-object v1, v0

    move-wide v2, p1

    move-wide v4, p1

    invoke-direct/range {v1 .. v9}, Lcom/sonyericsson/cameracommon/utility/CameraTimer;-><init>(JJLandroid/os/Handler;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->mTimer:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    .line 444
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->start()V

    :cond_1
    return-void
.end method

.method private stopTimer()V
    .locals 2

    .line 449
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "stopTimer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->mTimer:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->mTimer:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    if-eqz v0, :cond_1

    .line 451
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->cancel()V

    const/4 v0, 0x0

    .line 452
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->mTimer:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    :cond_1
    return-void
.end method


# virtual methods
.method protected attachView(Landroid/view/ViewGroup;)V
    .locals 3

    const v0, 0x7f0f0062

    .line 303
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->getStringResource(I)Ljava/lang/String;

    move-result-object v0

    .line 306
    new-instance v1, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$AutoReviewImageView;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$AutoReviewImageView;-><init>(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->mImageView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    .line 307
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 308
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->mImageView:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 309
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f0800f2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 311
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 313
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->mImageView:Landroid/widget/ImageView;

    .line 314
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 315
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->mAspect:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;

    iget v0, v0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;->resource_width:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 316
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->mAspect:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;

    iget v0, v0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;->resource_height:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const v0, 0x7f070068

    .line 320
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->getDimensionPixelSize(I)I

    move-result p0

    .line 322
    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 323
    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v0, p0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    return-void
.end method

.method protected getIconView()Landroid/view/View;
    .locals 0

    .line 329
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->mImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public onFocusChanged(Z)V
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    .line 413
    :cond_0
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon;->onFocusChanged(Z)V

    return-void
.end method

.method public onReceive(Lcom/sonyericsson/android/camera/view/AutoReviewContent;)V
    .locals 4

    .line 418
    iget-boolean v0, p1, Lcom/sonyericsson/android/camera/view/AutoReviewContent;->mIsPhoto:Z

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/sonyericsson/android/camera/view/AutoReviewContent;->mUri:Landroid/net/Uri;

    iget-object v2, p1, Lcom/sonyericsson/android/camera/view/AutoReviewContent;->mData:[B

    iget-boolean v3, p1, Lcom/sonyericsson/android/camera/view/AutoReviewContent;->mIsReverse:Z

    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->convertBitmap(Landroid/content/Context;Landroid/net/Uri;[BZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/sonyericsson/android/camera/view/AutoReviewContent;->mUri:Landroid/net/Uri;

    iget v2, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->mOrientation:I

    .line 426
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v2

    float-to-int v2, v2

    .line 425
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/cameracommon/contentsview/ThumbnailFactory;->createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->mBitmap:Landroid/graphics/Bitmap;

    .line 428
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 432
    :cond_1
    iget-object v0, p1, Lcom/sonyericsson/android/camera/view/AutoReviewContent;->mEventListener:Lcom/sonyericsson/android/camera/view/AutoReviewController$OnAutoReviewEventListener;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->mCloseListener:Lcom/sonyericsson/android/camera/view/AutoReviewController$OnAutoReviewEventListener;

    .line 433
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 434
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/sonyericsson/android/camera/view/AutoReviewContent;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->startShowAnimation()V

    .line 436
    iget-wide v0, p1, Lcom/sonyericsson/android/camera/view/AutoReviewContent;->mDuration:J

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->startTimer(J)V

    return-void

    .line 429
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->detachFromParent()V

    return-void
.end method

.method public setUiOrientation(I)V
    .locals 0

    .line 405
    iput p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->mOrientation:I

    return-void
.end method

.method public show()V
    .locals 0

    return-void
.end method
