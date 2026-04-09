.class public Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;
.super Landroid/widget/RelativeLayout;
.source "RecordingIndicator.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingTimeIndicator;


# static fields
.field public static final TAG:Ljava/lang/String; = "RecordingIndicator"


# instance fields
.field private mConstraintIndicator:Landroid/widget/LinearLayout;

.field private mConstraintRecordingTimeText:Landroid/widget/TextView;

.field private mContainer:Landroid/view/View;

.field private mDisplayOrientation:I

.field private mDuration:I

.field private mIsConstraint:Z

.field private mIsRecording:Z

.field private mIsSequence:Z

.field private mIsThumbnailReady:Z

.field private mMaxDurationText:Landroid/widget/TextView;

.field private mMaxTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

.field private mPivotForRotationConstraint:I

.field private mPivotForRotationSequence:I

.field private mPivotForRotationUnConstraint:I

.field private mProgressBar:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;

.field private final mRadius:F

.field private mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

.field private mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

.field private mSequenceIndicator:Landroid/widget/LinearLayout;

.field private mSequenceRec:Landroid/widget/TextView;

.field private mSequenceRecordingTimeText:Landroid/widget/TextView;

.field private mStringFormatRecordingTime:Ljava/lang/String;

.field private mStringFormatRemainConstraintTime:Ljava/lang/String;

.field private mThumbnailCnt:I

.field private mThumbnailContainer:Landroid/widget/LinearLayout;

.field private final mThumbnailMaxNum:I

.field private final mThumbnailPadding:I

.field private final mThumbnailParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private final mThumbnailSize:I

.field private final mThumbnails:[Landroid/graphics/Bitmap;

.field private mTimeContainer:Landroid/widget/LinearLayout;

.field private mUnConstraintIndicator:Landroid/widget/LinearLayout;

.field private mUnConstraintRecordingTimeText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 109
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 48
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    .line 49
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintRecordingTimeText:Landroid/widget/TextView;

    .line 52
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    .line 53
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintRecordingTimeText:Landroid/widget/TextView;

    .line 54
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mMaxDurationText:Landroid/widget/TextView;

    .line 57
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    .line 58
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceRecordingTimeText:Landroid/widget/TextView;

    .line 59
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailContainer:Landroid/widget/LinearLayout;

    .line 60
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mTimeContainer:Landroid/widget/LinearLayout;

    .line 61
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceRec:Landroid/widget/TextView;

    .line 63
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mProgressBar:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;

    .line 66
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000b

    .line 67
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailMaxNum:I

    .line 68
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070155

    .line 69
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailSize:I

    .line 70
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070154

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRadius:F

    .line 72
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailSize:I

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 74
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070153

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailPadding:I

    .line 78
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRemainConstraintTime:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRecordingTime:Ljava/lang/String;

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsConstraint:Z

    .line 84
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsSequence:Z

    .line 87
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsThumbnailReady:Z

    .line 89
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsRecording:Z

    .line 92
    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailCnt:I

    .line 93
    iget v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailMaxNum:I

    new-array v1, v1, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnails:[Landroid/graphics/Bitmap;

    .line 96
    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mDuration:I

    .line 97
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mMaxTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    .line 98
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070158

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mPivotForRotationUnConstraint:I

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070146

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mPivotForRotationConstraint:I

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07014e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mPivotForRotationSequence:I

    return-void
.end method

.method private addEmptyThumbnails()V
    .locals 4

    .line 480
    iget v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailSize:I

    iget v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailSize:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/high16 v1, -0x1000000

    .line 482
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 484
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->createRoundRectImageView(Landroid/graphics/Bitmap;)Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;

    move-result-object v0

    .line 485
    iget v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRadius:F

    iget v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRadius:F

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->setRadius(FFFF)V

    .line 487
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private createRoundRectImageView(Landroid/graphics/Bitmap;)Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;
    .locals 2

    .line 389
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "createRoundRectImageView"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 391
    :cond_0
    new-instance v0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;-><init>(Landroid/content/Context;)V

    .line 392
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, p0}, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 393
    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 p0, 0x0

    .line 394
    invoke-virtual {v0, p0}, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->setClickable(Z)V

    .line 395
    invoke-virtual {v0, p0}, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->setFocusable(Z)V

    .line 396
    invoke-virtual {v0, p0}, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->setFocusableInTouchMode(Z)V

    return-object v0
.end method

.method private resetThumbnails()V
    .locals 1

    .line 468
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "resetThumbnails"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 470
    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailCnt:I

    .line 472
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 473
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 476
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->addEmptyThumbnails()V

    return-void
.end method

.method private setSequentialIndicator(Z)V
    .locals 5

    .line 432
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSequentialIndicator:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 435
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsThumbnailReady:Z

    if-nez v0, :cond_2

    return-void

    .line 441
    :cond_1
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsThumbnailReady:Z

    :cond_2
    if-eqz p1, :cond_3

    const p1, 0x7f080246

    move v0, v1

    goto :goto_0

    :cond_3
    const p1, 0x7f080245

    const/16 v0, 0x8

    .line 454
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mTimeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 455
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mTimeContainer:Landroid/widget/LinearLayout;

    .line 456
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070151

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 458
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 455
    invoke-virtual {p1, v2, v1, v3, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 460
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mTimeContainer:Landroid/widget/LinearLayout;

    .line 461
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    .line 462
    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 463
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mTimeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 464
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceRec:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private setUnconstraintIndicator(Z)V
    .locals 4

    .line 414
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUnconstraintIndicator:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    const p1, 0x7f080249

    goto :goto_0

    :cond_1
    const p1, 0x7f080248

    .line 423
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 424
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    .line 425
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070151

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 427
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 424
    invoke-virtual {p1, v0, v1, p0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method private updateLayout()V
    .locals 6

    .line 520
    iget v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mDisplayOrientation:I

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v0

    .line 522
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v1

    .line 523
    sget-object v2, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne v1, v2, :cond_0

    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v0, v2

    .line 527
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    sget-object v3, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->EIGHTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-ne v2, v3, :cond_2

    .line 529
    sget-object v2, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    const v3, 0x7f07015b

    const/4 v4, 0x0

    if-ne v1, v2, :cond_1

    .line 530
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 531
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 530
    invoke-static {v2, v5, v3}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 533
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 534
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 533
    invoke-static {v2, v5, v3}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v4, v4, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 538
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    .line 539
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->updateLayoutParams(Landroid/widget/LinearLayout;)V

    .line 540
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setRotation(F)V

    .line 541
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mPivotForRotationUnConstraint:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setPivotX(F)V

    .line 542
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mPivotForRotationUnConstraint:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setPivotY(F)V

    .line 544
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4

    .line 545
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->updateLayoutParams(Landroid/widget/LinearLayout;)V

    .line 546
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setRotation(F)V

    .line 547
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mPivotForRotationConstraint:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setPivotX(F)V

    .line 548
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mPivotForRotationConstraint:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setPivotY(F)V

    .line 550
    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_5

    .line 551
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->updateLayoutParams(Landroid/widget/LinearLayout;)V

    .line 552
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setRotation(F)V

    .line 553
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mPivotForRotationSequence:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setPivotX(F)V

    .line 554
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    iget p0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mPivotForRotationSequence:I

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setPivotY(F)V

    :cond_5
    return-void
.end method

.method private updateLayoutParams(Landroid/widget/LinearLayout;)V
    .locals 5

    .line 506
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 508
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v0

    .line 509
    sget-object v1, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    const/4 v2, -0x1

    const/16 v3, 0xa

    const/16 v4, 0xc

    if-ne v0, v1, :cond_0

    .line 510
    invoke-virtual {p0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 511
    invoke-virtual {p0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 513
    :cond_0
    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 514
    invoke-virtual {p0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 516
    :goto_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method private updateProgressbar(I)V
    .locals 1

    .line 246
    iget v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mDuration:I

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mProgressBar:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;

    iget p0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mDuration:I

    invoke-virtual {v0, p1, p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->setProgress(II)V

    :goto_0
    return-void
.end method

.method private updateThumbnails(Landroid/graphics/Bitmap;)V
    .locals 7

    const/4 v0, 0x1

    .line 344
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsThumbnailReady:Z

    .line 345
    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsRecording:Z

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setIndicator(Z)V

    .line 347
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->createRoundRectImageView(Landroid/graphics/Bitmap;)Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;

    move-result-object v1

    .line 349
    iget v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailCnt:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 351
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 353
    iget v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRadius:F

    iget v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRadius:F

    invoke-virtual {v1, v2, v3, v3, v5}, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->setRadius(FFFF)V

    .line 354
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnails:[Landroid/graphics/Bitmap;

    aput-object p1, v2, v4

    goto :goto_2

    .line 356
    :cond_0
    iget v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailPadding:I

    invoke-virtual {v1, v2, v4, v4, v4}, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->setPadding(IIII)V

    .line 358
    iget v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailCnt:I

    if-ne v2, v0, :cond_1

    .line 359
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnails:[Landroid/graphics/Bitmap;

    aput-object p1, v2, v0

    goto :goto_1

    .line 360
    :cond_1
    iget v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailCnt:I

    iget v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailMaxNum:I

    if-lt v2, v5, :cond_2

    .line 362
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 365
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnails:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->createRoundRectImageView(Landroid/graphics/Bitmap;)Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;

    move-result-object v2

    .line 366
    iget v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRadius:F

    iget v6, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRadius:F

    invoke-virtual {v2, v5, v3, v3, v6}, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->setRadius(FFFF)V

    .line 369
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 370
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    move v2, v4

    .line 372
    :goto_0
    iget v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailMaxNum:I

    sub-int/2addr v3, v0

    if-ge v2, v3, :cond_2

    .line 373
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnails:[Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnails:[Landroid/graphics/Bitmap;

    add-int/lit8 v6, v2, 0x1

    aget-object v5, v5, v6

    aput-object v5, v3, v2

    move v2, v6

    goto :goto_0

    .line 377
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnails:[Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailMaxNum:I

    sub-int/2addr v3, v0

    aput-object p1, v2, v3

    .line 381
    :goto_2
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 382
    iget p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailCnt:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailCnt:I

    .line 384
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_3

    new-array p1, v0, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateThumbnails: thumnailCnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailCnt:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v4

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public addChapter([BI)V
    .locals 5

    .line 299
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addChapter: orientation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 301
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsSequence:Z

    if-nez v0, :cond_1

    return-void

    .line 305
    :cond_1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 308
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 309
    array-length v3, p1

    invoke-static {p1, v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 310
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 311
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ge v3, v4, :cond_2

    int-to-float v3, v3

    .line 315
    iget v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailSize:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    :cond_2
    if-ge v4, v3, :cond_3

    int-to-float v3, v4

    .line 317
    iget v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailSize:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 321
    :cond_3
    :goto_0
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 322
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 323
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 325
    array-length v1, p1

    invoke-static {p1, v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 328
    iget v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailSize:I

    iget v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailSize:I

    invoke-static {p1, v0, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 329
    invoke-static {p1, p2}, Lcom/sonyericsson/cameracommon/contentsview/ThumbnailUtil;->rotateThumbnail(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 332
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->updateThumbnails(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 4

    .line 120
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0901ad

    .line 124
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    .line 125
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    const v1, 0x7f09010c

    .line 126
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintRecordingTimeText:Landroid/widget/TextView;

    .line 127
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintRecordingTimeText:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/font/FontUtil;->setBold(Landroid/widget/TextView;)Z

    .line 128
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    const v2, 0x7f09010a

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/font/FontUtil;->setBold(Landroid/widget/TextView;)Z

    const v0, 0x7f09006a

    .line 131
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    .line 132
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    .line 133
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintRecordingTimeText:Landroid/widget/TextView;

    .line 134
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintRecordingTimeText:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/font/FontUtil;->setBold(Landroid/widget/TextView;)Z

    .line 135
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/font/FontUtil;->setBold(Landroid/widget/TextView;)Z

    .line 137
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    const v3, 0x7f090109

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/font/FontUtil;->setBold(Landroid/widget/TextView;)Z

    .line 139
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    const v3, 0x7f090112

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mMaxDurationText:Landroid/widget/TextView;

    .line 140
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mMaxDurationText:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/font/FontUtil;->setBold(Landroid/widget/TextView;)Z

    const v0, 0x7f090104

    .line 141
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mProgressBar:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;

    const v0, 0x7f090154

    .line 144
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    .line 145
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    .line 146
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceRecordingTimeText:Landroid/widget/TextView;

    .line 147
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceRecordingTimeText:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/font/FontUtil;->setBold(Landroid/widget/TextView;)Z

    .line 148
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceRec:Landroid/widget/TextView;

    .line 149
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceRec:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/font/FontUtil;->setBold(Landroid/widget/TextView;)Z

    .line 150
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    const v1, 0x7f090194

    .line 151
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailContainer:Landroid/widget/LinearLayout;

    .line 152
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    const v1, 0x7f090196

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mTimeContainer:Landroid/widget/LinearLayout;

    .line 154
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mMaxTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    .line 155
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    const v0, 0x7f090108

    .line 156
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mContainer:Landroid/view/View;

    return-void
.end method

.method public onTimeTicked(I)V
    .locals 0

    .line 586
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->updateRecordingTime(I)V

    return-void
.end method

.method public prepareBeforeRecording(I)V
    .locals 8

    .line 178
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->update(I)V

    .line 179
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mContainer:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 180
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07014d

    .line 181
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 183
    iget-boolean v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsConstraint:Z

    const v3, 0x7f0f004b

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz v2, :cond_0

    .line 185
    iput p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mDuration:I

    .line 186
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mMaxTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mDuration:I

    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->update(I)V

    .line 189
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mProgressBar:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;

    invoke-virtual {p1, v1, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->setProgress(II)V

    .line 192
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 193
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRemainConstraintTime:Ljava/lang/String;

    .line 194
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mMaxDurationText:Landroid/widget/TextView;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRemainConstraintTime:Ljava/lang/String;

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mMaxTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v7, v7, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->min:I

    .line 196
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mMaxTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v7, v7, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->sec:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    .line 195
    invoke-static {v0, v2, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 198
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRecordingTime:Ljava/lang/String;

    .line 199
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintRecordingTimeText:Landroid/widget/TextView;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRecordingTime:Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v5, v5, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->min:I

    .line 201
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v5, v5, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->sec:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 200
    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRecordingTime:Ljava/lang/String;

    .line 206
    iget-boolean p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsSequence:Z

    if-eqz p1, :cond_1

    .line 207
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->resetThumbnails()V

    .line 210
    iget-boolean p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsRecording:Z

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setIndicator(Z)V

    .line 212
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceRecordingTimeText:Landroid/widget/TextView;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRecordingTime:Ljava/lang/String;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v6, v6, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->min:I

    .line 214
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v6, v6, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->sec:I

    .line 215
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    .line 212
    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceRecordingTimeText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 218
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintRecordingTimeText:Landroid/widget/TextView;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRecordingTime:Ljava/lang/String;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v6, v6, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->min:I

    .line 220
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v6, v6, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->sec:I

    .line 221
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    .line 218
    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintRecordingTimeText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 227
    :goto_0
    iget-boolean p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsConstraint:Z

    const/16 v0, 0x8

    if-eqz p1, :cond_2

    .line 228
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 229
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 230
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 231
    :cond_2
    iget-boolean p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsSequence:Z

    if-eqz p1, :cond_3

    .line 232
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 233
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 234
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 236
    :cond_3
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 237
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 238
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 241
    :goto_1
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->updateLayout()V

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public setConstraint(Z)V
    .locals 0

    .line 160
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsConstraint:Z

    return-void
.end method

.method public setIndicator(Z)V
    .locals 4

    .line 402
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setIndicator:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 404
    :cond_0
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsRecording:Z

    .line 406
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsSequence:Z

    if-eqz v0, :cond_1

    .line 407
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setSequentialIndicator(Z)V

    goto :goto_0

    .line 409
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setUnconstraintIndicator(Z)V

    :goto_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 4

    .line 499
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOrientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 500
    :cond_0
    iput p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mDisplayOrientation:I

    .line 501
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->updateLayout()V

    return-void
.end method

.method public setScreenAspect(Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)V
    .locals 0

    .line 581
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    return-void
.end method

.method public setSequenceMode(Z)V
    .locals 0

    .line 164
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsSequence:Z

    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    const/16 v0, 0x8

    if-eqz p1, :cond_2

    .line 560
    iget-boolean p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsConstraint:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 561
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 562
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 563
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 564
    :cond_0
    iget-boolean p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsSequence:Z

    if-eqz p1, :cond_1

    .line 565
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 566
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 567
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 569
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 570
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 571
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 574
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 575
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 576
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public updateRecordingTime(I)V
    .locals 7

    .line 262
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->update(I)V

    .line 263
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v0, v0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->hour:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ge v0, v3, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f0f004b

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRecordingTime:Ljava/lang/String;

    .line 270
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRecordingTime:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v5, v5, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->min:I

    .line 271
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v1, v1, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->sec:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    .line 270
    invoke-static {v0, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07014d

    .line 273
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    .line 275
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f0f004a

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRecordingTime:Ljava/lang/String;

    .line 277
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRecordingTime:Ljava/lang/String;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v6, v6, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->hour:I

    .line 278
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v1, v1, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->min:I

    .line 279
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v3

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v1, v1, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->sec:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    .line 277
    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07014c

    .line 281
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 284
    :goto_0
    iget-boolean v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsConstraint:Z

    if-eqz v2, :cond_1

    .line 285
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintRecordingTimeText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->updateProgressbar(I)V

    goto :goto_1

    .line 288
    :cond_1
    iget-boolean p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsSequence:Z

    if-eqz p1, :cond_2

    .line 289
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceRecordingTimeText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceRecordingTimeText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iput v1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    .line 292
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintRecordingTimeText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintRecordingTimeText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iput v1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_1
    return-void
.end method
