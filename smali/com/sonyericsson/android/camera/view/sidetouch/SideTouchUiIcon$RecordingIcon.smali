.class public Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;
.super Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ScreenButtonIcon;
.source "SideTouchUiIcon.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingTimeIndicator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "RecordingIcon"
.end annotation


# instance fields
.field private mRecTimeView:Landroid/widget/TextView;

.field private mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;


# direct methods
.method protected constructor <init>(Landroid/content/Context;ILcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory;Lcom/sonyericsson/android/camera/view/ViewFinderImpl$RecordingTimeReceiverProxy;)V
    .locals 0

    .line 724
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ScreenButtonIcon;-><init>(Landroid/content/Context;ILcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory;)V

    .line 726
    invoke-virtual {p4, p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$RecordingTimeReceiverProxy;->bindReceiver(Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingTimeIndicator;)V

    .line 728
    new-instance p1, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    invoke-direct {p1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    .line 729
    invoke-virtual {p4}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$RecordingTimeReceiverProxy;->getCurrentTime()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->update(I)V

    return-void
.end method

.method private updateRecordingTimeView()V
    .locals 5

    .line 809
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v0, v0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->hour:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 810
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mContext:Landroid/content/Context;

    const v1, 0x7f0f0052

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 812
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v2, v2, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->min:I

    .line 813
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v3, v3, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->sec:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 812
    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 815
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mContext:Landroid/content/Context;

    const v1, 0x7f0f0051

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 817
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v2, v2, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->hour:I

    .line 818
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v3, v3, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->min:I

    .line 819
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v4, v4, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->sec:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 817
    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 821
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mRecTimeView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected attachView(Landroid/view/ViewGroup;)V
    .locals 4

    .line 734
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ScreenButtonIcon;->attachView(Landroid/view/ViewGroup;)V

    .line 735
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    const v0, 0x7f09015e

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mRecTimeView:Landroid/widget/TextView;

    .line 736
    iget v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mOrientation:I

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setRotation(F)V

    .line 737
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mRecTimeView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 738
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    const v0, 0x7f09007a

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0802b4

    .line 740
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 743
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mRecTimeView:Landroid/widget/TextView;

    sget-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->BOLD:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    invoke-static {p1, v0}, Lcom/sonymobile/cameracommon/font/FontUtil;->setRobotoFont(Landroid/widget/TextView;Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Z

    .line 744
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mRecTimeView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 746
    iget v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mOrientation:I

    const/4 v1, 0x1

    const v2, 0x7f070208

    if-ne v0, v1, :cond_0

    .line 747
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mRecTimeView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 748
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v3, p1

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 749
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 750
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v3, v2

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    int-to-float p1, p1

    div-float/2addr p1, v1

    sub-float/2addr v0, p1

    .line 753
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mRecTimeView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getX()F

    move-result v1

    sub-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setX(F)V

    goto :goto_0

    .line 755
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 756
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 757
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 759
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->updateRecordingTimeView()V

    return-void
.end method

.method protected onSidePositionAttached(Z)V
    .locals 3

    .line 764
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    const v1, 0x7f09007a

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 767
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 768
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mRecTimeView:Landroid/widget/TextView;

    .line 769
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 771
    iget p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mOrientation:I

    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    const/4 p0, 0x5

    .line 772
    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 p0, 0x13

    .line 773
    iput p0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 775
    :cond_0
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 p0, 0x50

    if-eqz p1, :cond_1

    .line 777
    iget p1, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    or-int/2addr p0, p1

    iput p0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 779
    :cond_1
    iget p1, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    or-int/lit8 p1, p1, 0x30

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 780
    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_0
    return-void
.end method

.method public onTimeTicked(I)V
    .locals 1

    .line 798
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    if-eqz v0, :cond_1

    .line 799
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->getIconView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 800
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->getIconView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 803
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->update(I)V

    .line 804
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->updateRecordingTimeView()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected setupButtons()V
    .locals 3

    .line 786
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;->SIDE_TOUCH_STOP_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mOrientation:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->setupButtonMain(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;IZ)V

    .line 789
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;->SIDE_TOUCH_PAUSE_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mOrientation:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->setupButtonOption1(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;IZ)V

    .line 792
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;->SIDE_TOUCH_SNAPSHOT_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mOrientation:I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->setupButtonOption2(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;IZ)V

    return-void
.end method
