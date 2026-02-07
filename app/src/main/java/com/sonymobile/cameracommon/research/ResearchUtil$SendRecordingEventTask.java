package com.sonymobile.cameracommon.research;

import android.graphics.Point;
import android.text.TextUtils;
import android.util.ArrayMap;
import com.sonymobile.cameracommon.research.parameters.Event$Category;
import com.sonymobile.cameracommon.research.parameters.Event$StopOperation;
import com.sonymobile.cameracommon.research.parameters.Event$UserOperation;
import com.sonymobile.cameracommon.research.parameters.ShootingLabel$Parameter;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class ResearchUtil$SendRecordingEventTask implements Runnable {
    private final boolean mIsLaunchViewerAfterRec;
    private final int mRecTimeMillis;
    private final Map<String, String> mSettings;
    private final Event$StopOperation mStopOperation;
    private final Event$UserOperation mUserOperation;
    final /* synthetic */ ResearchUtil this$0;

    /* synthetic */ ResearchUtil$SendRecordingEventTask(ResearchUtil researchUtil, Event$UserOperation event$UserOperation, Event$StopOperation event$StopOperation, int i, boolean z, Map map, ResearchUtil$1 researchUtil$1) {
        this(researchUtil, event$UserOperation, event$StopOperation, i, z, map);
    }

    private ResearchUtil$SendRecordingEventTask(ResearchUtil researchUtil, Event$UserOperation event$UserOperation, Event$StopOperation event$StopOperation, int i, boolean z, Map<String, String> map) {
        this.this$0 = researchUtil;
        this.mUserOperation = event$UserOperation;
        this.mStopOperation = event$StopOperation;
        this.mRecTimeMillis = i;
        this.mIsLaunchViewerAfterRec = z;
        this.mSettings = map;
    }

    @Override // java.lang.Runnable
    public void run() {
        int i = this.mRecTimeMillis / 1000;
        if (i >= 0) {
            if (!this.mIsLaunchViewerAfterRec && this.mUserOperation != null) {
                this.this$0.setUserOperation(this.mUserOperation);
            }
            Point point = new Point();
            Event$StopOperation event$StopOperation = this.mStopOperation;
            ArrayMap arrayMap = new ArrayMap();
            if (ResearchUtil.access$000(this.this$0) != null) {
                if (ResearchUtil$TemporarySettingValues.access$2600(ResearchUtil.access$000(this.this$0))) {
                    ResearchUtil$TemporarySettingValues.access$2602(ResearchUtil.access$000(this.this$0), false);
                    point = ResearchUtil$TemporarySettingValues.access$200(ResearchUtil.access$000(this.this$0));
                    if (event$StopOperation == Event$StopOperation.USER_STOP) {
                        event$StopOperation = Event$StopOperation.SIDE_SENSE_STOP;
                    }
                }
                for (ShootingLabel$Parameter shootingLabel$Parameter : ResearchUtil.access$000(this.this$0).getParameterListForRecording()) {
                    arrayMap.put(shootingLabel$Parameter.getClass().getSimpleName(), shootingLabel$Parameter.toString());
                }
            }
            arrayMap.put("side_sense_position_x", String.valueOf(point.x));
            arrayMap.put("side_sense_position_y", String.valueOf(point.y));
            arrayMap.put("rec_time", String.valueOf(i));
            arrayMap.put("resume", String.valueOf(ResearchUtil.access$2700(this.this$0)));
            arrayMap.put("snapshot", String.valueOf(ResearchUtil.access$2800(this.this$0)));
            arrayMap.put("stop_factor", event$StopOperation.toString());
            if (this.mSettings == null || !"OFF".equals(this.mSettings.get("SLOW_MOTION")) || TextUtils.isEmpty(this.mSettings.get("VIDEO_SIZE"))) {
                arrayMap.put("video_size", "Other");
            } else {
                arrayMap.put("video_size", this.mSettings.get("VIDEO_SIZE"));
            }
            ResearchUtil.access$500(this.this$0, Event$Category.ALL_SETTINGS_VIDEO, arrayMap, this.mSettings == null ? new ArrayMap() : this.mSettings);
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(String.valueOf(i));
            stringBuffer.append("_Sec_");
            stringBuffer.append(String.valueOf(ResearchUtil.access$2700(this.this$0)));
            stringBuffer.append("_Resume_");
            stringBuffer.append(String.valueOf(ResearchUtil.access$2800(this.this$0)));
            stringBuffer.append("_Snapshot_");
            ResearchUtil.access$2702(this.this$0, 0);
            ResearchUtil.access$2802(this.this$0, 0);
            if (ResearchUtil.access$000(this.this$0) != null) {
                stringBuffer.append(ResearchUtil.access$000(this.this$0).toStringForRecording());
                ResearchUtil.access$000(this.this$0).clearRecordingMaxFaceNum();
            }
            if (this.mSettings == null || !"OFF".equals(this.mSettings.get("SLOW_MOTION")) || TextUtils.isEmpty(this.mSettings.get("VIDEO_SIZE"))) {
                stringBuffer.append(ResearchUtil.access$2900("Other"));
            } else {
                stringBuffer.append(ResearchUtil.access$2900(this.mSettings.get("VIDEO_SIZE")));
            }
            this.this$0.sendEvent(Event$Category.RECORDING, event$StopOperation.toString(), stringBuffer.toString());
        }
    }
}
