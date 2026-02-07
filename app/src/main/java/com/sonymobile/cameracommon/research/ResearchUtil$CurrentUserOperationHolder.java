package com.sonymobile.cameracommon.research;

import android.graphics.Point;
import android.util.ArrayMap;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonymobile.cameracommon.research.parameters.Event$CaptureOperation;
import com.sonymobile.cameracommon.research.parameters.Event$CaptureTrigger;
import com.sonymobile.cameracommon.research.parameters.Event$Category;
import com.sonymobile.cameracommon.research.parameters.Event$UserOperation;
import com.sonymobile.cameracommon.research.parameters.ShootingLabel$Parameter;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class ResearchUtil$CurrentUserOperationHolder {
    private Event$UserOperation mUserOperation;
    final /* synthetic */ ResearchUtil this$0;

    private ResearchUtil$CurrentUserOperationHolder(ResearchUtil researchUtil) {
        this.this$0 = researchUtil;
        this.mUserOperation = null;
    }

    /* synthetic */ ResearchUtil$CurrentUserOperationHolder(ResearchUtil researchUtil, ResearchUtil$1 researchUtil$1) {
        this(researchUtil);
    }

    public void setUserOperation(Event$UserOperation event$UserOperation) {
        setUserOperation(event$UserOperation, null, null);
    }

    public void setUserOperation(Event$UserOperation event$UserOperation, List<ShootingLabel$Parameter> list, Map<String, String> map) {
        ShootingLabel$Parameter parameter;
        if (CamLog.VERBOSE) {
            CamLog.d("setUserOperation() : operation = " + event$UserOperation);
        }
        if (event$UserOperation.isShooting()) {
            Point point = new Point();
            ArrayMap arrayMap = new ArrayMap();
            if (ResearchUtil.access$000(this.this$0) != null) {
                arrayMap.put("ManualBurst", ResearchUtil.access$000(this.this$0).getManualBurstParameterForIDD());
                if (ResearchUtil$TemporarySettingValues.access$100(ResearchUtil.access$000(this.this$0)) == Event$CaptureTrigger.SIDE_SENSE) {
                    point = ResearchUtil$TemporarySettingValues.access$200(ResearchUtil.access$000(this.this$0));
                }
                for (ShootingLabel$Parameter shootingLabel$Parameter : ResearchUtil.access$000(this.this$0).getParameterList()) {
                    arrayMap.put(shootingLabel$Parameter.getClass().getSimpleName(), shootingLabel$Parameter.toString());
                }
                if (ResearchUtil$TemporarySettingValues.access$300(ResearchUtil.access$000(this.this$0)) != -1) {
                    arrayMap.put("assist_self_timer", String.valueOf(ResearchUtil$TemporarySettingValues.access$300(ResearchUtil.access$000(this.this$0))));
                    ResearchUtil.access$000(this.this$0).clearAssistSelfTimer();
                }
            }
            arrayMap.put("side_sense_position_x", String.valueOf(point.x));
            arrayMap.put("side_sense_position_y", String.valueOf(point.y));
            if (list != null) {
                for (ShootingLabel$Parameter shootingLabel$Parameter2 : list) {
                    arrayMap.put(shootingLabel$Parameter2.getClass().getSimpleName(), shootingLabel$Parameter2.toString());
                }
            }
            if (ResearchUtil.access$400(this.this$0) != null && (parameter = ResearchUtil.access$400(this.this$0).getParameter()) != null) {
                arrayMap.put(parameter.getClass().getSimpleName(), parameter.toString());
            }
            ResearchUtil researchUtil = this.this$0;
            Event$Category event$Category = Event$Category.ALL_SETTINGS_PHOTO;
            if (map == null) {
                map = new ArrayMap<>();
            }
            ResearchUtil.access$500(researchUtil, event$Category, arrayMap, map);
        }
        if (this.mUserOperation == null || this.mUserOperation == Event$CaptureOperation.EMPTY) {
            this.mUserOperation = event$UserOperation;
        }
        this.mUserOperation = event$UserOperation.updateOperation(this.mUserOperation);
    }

    public void setViewerLaunched() {
        if (this.mUserOperation == null) {
            this.mUserOperation = Event$CaptureOperation.EMPTY;
        }
        setUserOperation(this.mUserOperation.getViewer());
    }

    public void clear() {
        if (CamLog.VERBOSE) {
            CamLog.d("UserOperationInfo#clear()");
        }
        this.mUserOperation = null;
    }
}
