.class public Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RestrictedRecordingIcon;
.super Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;
.source "SideTouchUiIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "RestrictedRecordingIcon"
.end annotation


# direct methods
.method protected constructor <init>(Landroid/content/Context;ILcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory;Lcom/sonyericsson/android/camera/view/ViewFinderImpl$RecordingTimeReceiverProxy;)V
    .locals 0

    .line 814
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;-><init>(Landroid/content/Context;ILcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory;Lcom/sonyericsson/android/camera/view/ViewFinderImpl$RecordingTimeReceiverProxy;)V

    return-void
.end method


# virtual methods
.method protected setupButtons()V
    .locals 3

    .line 818
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;->SIDE_TOUCH_STOP_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RestrictedRecordingIcon;->mOrientation:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RestrictedRecordingIcon;->setupButtonMain(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;IZ)V

    .line 821
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;->SIDE_TOUCH_PAUSE_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RestrictedRecordingIcon;->mOrientation:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RestrictedRecordingIcon;->setupButtonOption1(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;IZ)V

    return-void
.end method
