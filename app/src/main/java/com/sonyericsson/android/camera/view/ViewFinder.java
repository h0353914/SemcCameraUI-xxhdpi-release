package com.sonyericsson.android.camera.view;

import android.graphics.Point;
import android.graphics.Rect;
import android.view.LayoutInflater;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.SelfTimer;
import com.sonyericsson.android.camera.configuration.parameters.ShutterTrigger;
import com.sonyericsson.android.camera.configuration.parameters.SlowMotion;
import com.sonyericsson.android.camera.configuration.parameters.UserSettingValue;
import com.sonyericsson.android.camera.controller.StateMachine;
import com.sonyericsson.android.camera.device.CameraDeviceHandler;
import com.sonyericsson.android.camera.view.messagedialog.DialogId;
import com.sonyericsson.cameracommon.storage.Storage$StorageState;
import com.sonyericsson.cameracommon.storage.Storage$StorageType;

public interface ViewFinder {
    void attachToWindow();

    void cancelPredictiveCaptureIndicatorAnimation();

    void clearHintText();

    void clearMessageDialog();

    void commit();

    int getAutoPowerOffHintTextTimeOutDuration();

    int getOrientation();

    SelfTimer getPhotoSelfTimerSetting();

    Rect getPosition(Point point);

    int getRequestId(boolean z);

    int getSelectedFaceSmileScore();

    void hideAutoPowerOffHintText();

    void hideAutoReview();

    void hideDisplayFlashScreen();

    void hideHudIcons();

    void hideSavingProgressBar();

    void hideSurface();

    void hideViews();

    boolean isAutoPowerOffWarningDisplayed();

    boolean isAutoReviewShowing();

    boolean isCameraSwitching();

    boolean isDisplayFlashScreenDisplayed();

    boolean isEvfPrepared();

    boolean isFlashAndSettingMenuOpened();

    boolean isHeadUpDisplayReady();

    boolean isMessageDialogOpened();

    boolean isSetupHeadupDisplayInvoked();

    boolean isSwitchingAnimationProgress();

    boolean isTouchFocus();

    boolean isUserOperable();

    void notifyOnEvfPrepared();

    void notifyStorageStateChanged(Storage$StorageType storage$StorageType, Storage$StorageState storage$StorageState, boolean z, boolean z2);

    void notifyZoomOperationRejected();

    void onCaptureDone();

    void onNotifyCoolingUltraLow(boolean z);

    void onObjectLost();

    void onSettingChanged(UserSettingValue userSettingValue);

    void onShutterDone(boolean z);

    void postSlowMotionHintText();

    void prepareGestureShutterCountDown();

    void requestCheckEvfPreparationRetrying();

    void requestInflate(LayoutInflater layoutInflater);

    void sendViewUpdateEvent(ViewFinder$ViewUpdateEvent viewFinder$ViewUpdateEvent, Object... objArr);

    void setCameraDevice(CameraDeviceHandler cameraDeviceHandler);

    void setContentView();

    void setDisplayFlashColor(int i, int i2, int i3);

    void setDisplayFlashRequired(boolean z);

    void setIsCameraSwitching(boolean z);

    void setRecordingOrientation(int i);

    void setSelfTimer(CapturingMode capturingMode, SelfTimer selfTimer);

    void setShutterTrigger(ShutterTrigger shutterTrigger);

    void setStartDraggingSlopEnabled(boolean z);

    void setStateMachine(StateMachine stateMachine);

    void setupFocusRectangles();

    void showAutoPowerOffHintText();

    void showBlank();

    void showDisplayFlashScreen();

    void showHiSpeedSdCardRecommendDialogOnDestinationChange();

    void showMessageDialog(DialogId dialogId, Object... objArr);

    void showSavingProgressBar();

    void showSurface();

    void showViews();

    void startHideThumbnail();

    void startPredictiveCaptureIndicatorAnimation();

    void startSlowMotionFeedbackAnimation();

    void updateBatteryIndicator(int i);

    void updateCaptureAreaSize();

    void updateFocusIconType(boolean z);

    void updateSlowMotionView(SlowMotion slowMotion);

    void updateVideoShutterTrigger();
}
