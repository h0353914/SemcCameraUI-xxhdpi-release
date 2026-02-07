package com.sonyericsson.android.camera.view;

import android.graphics.Point;
import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.parameters.FusionMode;
import com.sonyericsson.android.camera.controller.StateMachine$TransitterEvent;
import com.sonyericsson.android.camera.device.CameraInfo$CameraId;
import com.sonyericsson.android.camera.util.capability.PlatformCapability;
import com.sonyericsson.cameracommon.focusview.FocusActionListener;
import com.sonymobile.cameracommon.research.ResearchUtil;
import com.sonymobile.cameracommon.research.parameters.Event$CaptureTrigger;
import com.sonymobile.cameracommon.research.parameters.Event$SelfTimerTrigger;

/* JADX INFO: loaded from: classes.dex */
class ViewFinderImpl$FocusActionListenerImpl implements FocusActionListener {
    final /* synthetic */ ViewFinderImpl this$0;

    @Override // com.sonyericsson.cameracommon.focusview.FocusActionListener
    public void onTouched() {
    }

    private ViewFinderImpl$FocusActionListenerImpl(ViewFinderImpl viewFinderImpl) {
        this.this$0 = viewFinderImpl;
    }

    /* synthetic */ ViewFinderImpl$FocusActionListenerImpl(ViewFinderImpl viewFinderImpl, ViewFinderImpl$1 viewFinderImpl$1) {
        this(viewFinderImpl);
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusActionListener
    public void onCanceled() {
        ViewFinderImpl.access$6302(this.this$0, ViewFinder$BurstRejectedReason.NONE);
        ViewFinderImpl.access$1000(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_CAPTURE_CANCEL, new Object[0]);
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusActionListener
    public void onReleased() {
        if (this.this$0.isAutoReviewShowing()) {
            this.this$0.hideAutoReview();
            return;
        }
        if (!ViewFinderImpl.access$900(this.this$0).isVideo()) {
            if (ViewFinderImpl.access$6400(this.this$0) && this.this$0.isPreviewLayout()) {
                ViewFinderImpl.access$1000(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_START_CAPTURE_COUNTDOWN, Event$SelfTimerTrigger.NORMAL);
            } else {
                ViewFinderImpl.access$1000(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_CAPTURE, new Object[0]);
            }
        } else if (!ViewFinderImpl.access$1000(this.this$0).isRecording()) {
            ViewFinderImpl.access$1000(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_START_RECORDING, new Object[0]);
        }
        ResearchUtil.getInstance().setCaptureTrigger(Event$CaptureTrigger.TOUCH_CAPTURE);
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusActionListener
    public void onLongPressed() {
        boolean z = !ViewFinderImpl.access$500(this.this$0).isOneShot();
        if (ViewFinderImpl.access$3500(this.this$0) && ViewFinderImpl.access$6500(this.this$0) && z) {
            if (!PlatformCapability.isManualBurstSupported(ViewFinderImpl.access$900(this.this$0).getCameraId())) {
                if (PlatformCapability.isManualBurstSupported(CameraInfo$CameraId.BACK)) {
                    this.this$0.sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_BURST_REJECTED, ViewFinder$BurstRejectedReason.CANNOT_BURST_USING_FRONT_CAMERA);
                }
            } else {
                if (ViewFinderImpl.access$1000(this.this$0).getUserSetting().get(UserSettingKey.FUSION_MODE) == FusionMode.ON) {
                    this.this$0.sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_BURST_REJECTED, ViewFinder$BurstRejectedReason.CANNOT_BURST_DUE_TO_FUSION_MODE);
                    return;
                }
                this.this$0.hideAutoReview();
                ViewFinderImpl.access$1000(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_CAPTURE_BURST, new Object[0]);
                ResearchUtil.getInstance().setCaptureTrigger(Event$CaptureTrigger.TOUCH_CAPTURE);
            }
        }
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusActionListener
    public void onFaceSelected(Point point) {
        ViewFinderImpl.access$1000(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_CHANGE_SELECTED_FACE, point);
    }
}
