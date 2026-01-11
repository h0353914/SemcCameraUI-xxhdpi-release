.class public final Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$SelfTimerCancelIcon;
.super Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ScreenButtonIcon;
.source "SideTouchUiIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "SelfTimerCancelIcon"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory;)V
    .locals 0

    .line 688
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ScreenButtonIcon;-><init>(Landroid/content/Context;ILcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory;)V

    return-void
.end method


# virtual methods
.method public onFocusChanged(Z)V
    .locals 0

    return-void
.end method

.method protected setupButtons()V
    .locals 3

    .line 693
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;->CANCEL_SELFTIMER_SIDE:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$SelfTimerCancelIcon;->mOrientation:I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$SelfTimerCancelIcon;->setupButtonMain(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;IZ)V

    .line 702
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$SelfTimerCancelIcon;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->setVisibility(I)V

    return-void
.end method
