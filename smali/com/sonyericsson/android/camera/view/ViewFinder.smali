.class public interface abstract Lcom/sonyericsson/android/camera/view/ViewFinder;
.super Ljava/lang/Object;
.source "ViewFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;,
        Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;,
        Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;,
        Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;
    }
.end annotation


# virtual methods
.method public abstract attachToWindow()V
.end method

.method public abstract cancelPredictiveCaptureIndicatorAnimation()V
.end method

.method public abstract clearHintText()V
.end method

.method public abstract clearMessageDialog()V
.end method

.method public abstract commit()V
.end method

.method public abstract getAutoPowerOffHintTextTimeOutDuration()I
.end method

.method public abstract getBlurViewController()Lcom/sonyericsson/android/camera/view/blur/BlurViewController;
.end method

.method public abstract getOrientation()I
.end method

.method public abstract getPhotoSelfTimerSetting()Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;
.end method

.method public abstract getPosition(Landroid/graphics/Point;)Landroid/graphics/Rect;
.end method

.method public abstract getRequestId(Z)I
.end method

.method public abstract getSelectedFaceSmileScore()I
.end method

.method public abstract getZoomStep()I
.end method

.method public abstract getZoomValue()F
.end method

.method public abstract hideAutoPowerOffHintText()V
.end method

.method public abstract hideAutoReview()V
.end method

.method public abstract hideDisplayFlashScreen()V
.end method

.method public abstract hideHudIcons()V
.end method

.method public abstract hideSavingProgressBar()V
.end method

.method public abstract hideSurface()V
.end method

.method public abstract hideViews()V
.end method

.method public abstract isAutoPowerOffWarningDisplayed()Z
.end method

.method public abstract isAutoReviewShowing()Z
.end method

.method public abstract isCameraSwitching()Z
.end method

.method public abstract isDisplayFlashScreenDisplayed()Z
.end method

.method public abstract isEvfPrepared()Z
.end method

.method public abstract isFlashAndSettingMenuOpened()Z
.end method

.method public abstract isHeadUpDisplayReady()Z
.end method

.method public abstract isMenuDialogOpened()Z
.end method

.method public abstract isMessageDialogOpened()Z
.end method

.method public abstract isModeSelectorOpened()Z
.end method

.method public abstract isNeverShowDialog(Lcom/sonyericsson/android/camera/setting/MessageType;)Z
.end method

.method public abstract isSetupHeadupDisplayInvoked()Z
.end method

.method public abstract isSwitchingAnimationProgress()Z
.end method

.method public abstract isTouchFocus()Z
.end method

.method public abstract isUserOperable()Z
.end method

.method public abstract isUserOperableForCameraKey()Z
.end method

.method public abstract isWifDialogOpened()Z
.end method

.method public abstract notifyOnEvfPrepared()V
.end method

.method public abstract notifyStorageStateChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;ZZ)V
.end method

.method public abstract notifyZoomOperationRejected()V
.end method

.method public abstract onCaptureDone()V
.end method

.method public abstract onNotifyCoolingUltraLow(Z)V
.end method

.method public abstract onObjectLost()V
.end method

.method public abstract onSettingChanged(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
.end method

.method public abstract onShutterDone(Z)V
.end method

.method public abstract postSlowMotionHintText()V
.end method

.method public abstract prepareGestureShutterCountDown()V
.end method

.method public abstract requestCheckEvfPreparationRetrying()V
.end method

.method public abstract requestInflate(Landroid/view/LayoutInflater;)V
.end method

.method public varargs abstract sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V
.end method

.method public abstract setCameraDevice(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V
.end method

.method public abstract setContentView()V
.end method

.method public abstract setDisplayFlashColor(III)V
.end method

.method public abstract setDisplayFlashRequired(Z)V
.end method

.method public abstract setIsCameraSwitching(Z)V
.end method

.method public abstract setRecordingOrientation(I)V
.end method

.method public abstract setSelfTimer(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;)V
.end method

.method public abstract setShutterTrigger(Lcom/sonyericsson/android/camera/configuration/parameters/ShutterTrigger;)V
.end method

.method public abstract setStartDraggingSlopEnabled(Z)V
.end method

.method public abstract setStateMachine(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
.end method

.method public abstract setZoomStep(I)V
.end method

.method public abstract setupFocusRectangles()V
.end method

.method public abstract showAutoPowerOffHintText()V
.end method

.method public abstract showBlank()V
.end method

.method public abstract showDisplayFlashScreen()V
.end method

.method public abstract showHiSpeedSdCardRecommendDialogOnDestinationChange()V
.end method

.method public varargs abstract showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V
.end method

.method public abstract showSavingProgressBar()V
.end method

.method public abstract showSurface()V
.end method

.method public abstract showViews()V
.end method

.method public abstract startHideThumbnail()V
.end method

.method public abstract startPredictiveCaptureIndicatorAnimation()V
.end method

.method public abstract startSlowMotionFeedbackAnimation()V
.end method

.method public abstract updateBatteryIndicator(I)V
.end method

.method public abstract updateCaptureAreaSize()V
.end method

.method public abstract updateFocusIconType(Z)V
.end method

.method public abstract updateSlowMotionView(Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;)V
.end method

.method public abstract updateVideoShutterTrigger()V
.end method
