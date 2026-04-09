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

    .line 685
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ScreenButtonIcon;-><init>(Landroid/content/Context;ILcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory;)V

    .line 687
    invoke-virtual {p4, p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$RecordingTimeReceiverProxy;->bindReceiver(Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingTimeIndicator;)V

    .line 689
    new-instance p1, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    invoke-direct {p1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    .line 690
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    invoke-virtual {p4}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$RecordingTimeReceiverProxy;->getCurrentTime()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->update(I)V

    return-void
.end method

.method private updateRecordingTimeView()V
    .locals 7

    .line 770
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v0, v0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->hour:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ge v0, v3, :cond_0

    .line 771
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mContext:Landroid/content/Context;

    const v4, 0x7f0f004b

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 773
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v5, v5, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->min:I

    .line 774
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v1, v1, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->sec:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    .line 773
    invoke-static {v4, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mContext:Landroid/content/Context;

    const v4, 0x7f0f004a

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 778
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v6, v6, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->hour:I

    .line 779
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v1, v1, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->min:I

    .line 780
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v3

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v1, v1, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->sec:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    .line 778
    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 782
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mRecTimeView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected attachView(Landroid/view/ViewGroup;)V
    .locals 4

    .line 695
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ScreenButtonIcon;->attachView(Landroid/view/ViewGroup;)V

    .line 696
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    const v0, 0x7f09010e

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mRecTimeView:Landroid/widget/TextView;

    .line 697
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mRecTimeView:Landroid/widget/TextView;

    iget v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mOrientation:I

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setRotation(F)V

    .line 698
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mRecTimeView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 699
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    const v0, 0x7f090057

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f080259

    .line 701
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 704
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mRecTimeView:Landroid/widget/TextView;

    sget-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->BOLD:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    invoke-static {p1, v0}, Lcom/sonymobile/cameracommon/font/FontUtil;->setRobotoFont(Landroid/widget/TextView;Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Z

    .line 705
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mRecTimeView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 707
    iget v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mOrientation:I

    const v1, 0x7f0701b9

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 708
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mRecTimeView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 709
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v3, p1

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 710
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 711
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v3, v1

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    int-to-float p1, p1

    div-float/2addr p1, v1

    sub-float/2addr v0, p1

    .line 714
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mRecTimeView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mRecTimeView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getX()F

    move-result v1

    sub-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setX(F)V

    goto :goto_0

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v2, p1

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 717
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 718
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 720
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->updateRecordingTimeView()V

    return-void
.end method

.method protected onSidePositionAttached(Z)V
    .locals 3

    .line 725
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    const v1, 0x7f090057

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 728
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 729
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mRecTimeView:Landroid/widget/TextView;

    .line 730
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 732
    iget p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mOrientation:I

    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    const/4 p0, 0x5

    .line 733
    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 p0, 0x13

    .line 734
    iput p0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 736
    :cond_0
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 p0, 0x50

    if-eqz p1, :cond_1

    .line 738
    iget p1, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    or-int/2addr p0, p1

    iput p0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 740
    :cond_1
    iget p1, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    or-int/lit8 p1, p1, 0x30

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 741
    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_0
    return-void
.end method

.method public onTimeTicked(I)V
    .locals 1

    .line 759
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    if-eqz v0, :cond_1

    .line 760
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->getIconView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 761
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->getIconView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->update(I)V

    .line 765
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->updateRecordingTimeView()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method protected setupButtons()V
    .locals 3

    .line 747
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;->SIDE_TOUCH_STOP_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mOrientation:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->setupButtonMain(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;IZ)V

    .line 750
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;->SIDE_TOUCH_PAUSE_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mOrientation:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->setupButtonOption1(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;IZ)V

    .line 753
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;->SIDE_TOUCH_SNAPSHOT_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->mOrientation:I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;->setupButtonOption2(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;IZ)V

    return-void
.end method
