package com.sonyericsson.android.camera.view;

import android.graphics.Point;
import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.parameters.PredictiveLaunch;
import com.sonyericsson.android.camera.research.LocalResearchUtil;
import com.sonymobile.cameracommon.research.ResearchUtil;
import com.sonymobile.cameracommon.research.parameters.Event$CaptureTrigger;

class UserEventHandler$PredictiveLaunchCoverProcedure extends UserEventHandler$TouchEventProcedure {
    final /* synthetic */ UserEventHandler this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private UserEventHandler$PredictiveLaunchCoverProcedure(UserEventHandler userEventHandler) {
        super(userEventHandler, null);
        this.this$0 = userEventHandler;
    }

    /* synthetic */ UserEventHandler$PredictiveLaunchCoverProcedure(UserEventHandler userEventHandler, UserEventHandler$1 userEventHandler$1) {
        this(userEventHandler);
    }

    @Override // com.sonyericsson.android.camera.view.UserEventHandler$TouchEventProcedure
    void doTouchUp(Point point) {
        if (((PredictiveLaunch) UserEventHandler.access$3400(this.this$0).getUserSetting().get(UserSettingKey.PREDICTIVE_LAUNCH)).doCapture()) {
            UserEventHandler.access$3200(this.this$0).hidePredictiveLaunchCover(ViewFinderImpl$PredictiveLaunchHideTrigger.TOUCH_UP_CAPTURE);
            if (UserEventHandler.access$3200(this.this$0).closeAutoReviewIfShowing() || UserEventHandler$AngleActionHandler.access$2200(UserEventHandler.access$3700(this.this$0)) || UserEventHandler.access$3200(this.this$0).closeSettingDialogIfOpened() || !UserEventHandler.access$3200(this.this$0).isUserOperable() || UserEventHandler.access$3200(this.this$0).isTutorialOpened() || !UserEventHandler.access$3900(this.this$0)) {
                return;
            }
            ResearchUtil.getInstance().setCaptureTrigger(Event$CaptureTrigger.TOUCH_CAPTURE_PREDICTIVE_LAUNCH);
            LocalResearchUtil.getInstance().setPredictiveLaunchState(true);
            UserEventHandler.access$4000(this.this$0, false);
            return;
        }
        UserEventHandler.access$3200(this.this$0).hidePredictiveLaunchCover(ViewFinderImpl$PredictiveLaunchHideTrigger.TOUCH_UP);
    }
}
