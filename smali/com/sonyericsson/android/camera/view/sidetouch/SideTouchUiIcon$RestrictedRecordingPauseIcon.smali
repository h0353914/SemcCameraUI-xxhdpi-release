.class public final Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RestrictedRecordingPauseIcon;
.super Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RestrictedRecordingIcon;
.source "SideTouchUiIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "RestrictedRecordingPauseIcon"
.end annotation


# direct methods
.method protected constructor <init>(Landroid/content/Context;ILcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory;Lcom/sonyericsson/android/camera/view/ViewFinderImpl$RecordingTimeReceiverProxy;)V
    .locals 0

    .line 873
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RestrictedRecordingIcon;-><init>(Landroid/content/Context;ILcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory;Lcom/sonyericsson/android/camera/view/ViewFinderImpl$RecordingTimeReceiverProxy;)V

    return-void
.end method


# virtual methods
.method protected setupButtons()V
    .locals 3

    .line 877
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;->SIDE_TOUCH_STOP_RECORDING_IN_PAUSE:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RestrictedRecordingPauseIcon;->mOrientation:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RestrictedRecordingPauseIcon;->setupButtonMain(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;IZ)V

    .line 880
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;->SIDE_TOUCH_RESUME_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RestrictedRecordingPauseIcon;->mOrientation:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RestrictedRecordingPauseIcon;->setupButtonOption1(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;IZ)V

    return-void
.end method
