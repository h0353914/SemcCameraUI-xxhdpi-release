package com.sonymobile.cameracommon.research;

import com.sonyericsson.android.camera.util.CamLog;
import com.sonymobile.cameracommon.research.parameters.Event$TimeFromAfDoneToCaptureStart;
import com.sonymobile.cameracommon.research.parameters.ShootingLabel;
import com.sonymobile.cameracommon.research.parameters.ShootingLabel$Parameter;

/* JADX INFO: loaded from: classes.dex */
class ResearchUtil$AfDoneKeepingTimeHolder {
    private boolean mContinuousCapture;
    private long mTimeAfDone;
    private long mTimeCapture;

    private ResearchUtil$AfDoneKeepingTimeHolder() {
        this.mContinuousCapture = false;
        this.mTimeAfDone = 0L;
        this.mTimeCapture = 0L;
    }

    /* synthetic */ ResearchUtil$AfDoneKeepingTimeHolder(ResearchUtil$1 researchUtil$1) {
        this();
    }

    public void updateContinuousCapture(boolean z) {
        this.mContinuousCapture = z;
    }

    public void updateTimeAfDone(long j) {
        this.mTimeAfDone = j;
    }

    public void updateTimeCapture(long j) {
        if (this.mTimeCapture == 0) {
            this.mTimeCapture = j;
        }
    }

    public ShootingLabel$Parameter getParameter() {
        Event$TimeFromAfDoneToCaptureStart type;
        if (this.mContinuousCapture) {
            type = Event$TimeFromAfDoneToCaptureStart.CONTINUOUS_CAPTURE;
        } else if (this.mTimeAfDone == 0) {
            type = Event$TimeFromAfDoneToCaptureStart.NOT_TARGET;
        } else {
            if (CamLog.DEBUG) {
                CamLog.d("AfDoneKeepingTime: " + (this.mTimeCapture - this.mTimeAfDone));
            }
            type = Event$TimeFromAfDoneToCaptureStart.getType(this.mTimeCapture - this.mTimeAfDone);
        }
        return ShootingLabel.getAfDoneKeepingTimeParameter(type.toString());
    }

    public void clear() {
        this.mTimeAfDone = 0L;
        this.mTimeCapture = 0L;
        this.mContinuousCapture = false;
    }
}
