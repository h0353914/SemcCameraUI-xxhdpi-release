package com.sonyericsson.android.camera.research;

import com.sonyericsson.android.camera.util.CamLog;
import com.sonymobile.cameracommon.research.parameters.ShootingLabel;
import com.sonymobile.cameracommon.research.parameters.ShootingLabel$Parameter;

/* JADX INFO: loaded from: classes.dex */
final class LocalResearchUtil$GestureShutterValues {
    private int mHandSignLostNum;

    private LocalResearchUtil$GestureShutterValues() {
        this.mHandSignLostNum = -1;
    }

    /* synthetic */ LocalResearchUtil$GestureShutterValues(LocalResearchUtil$1 localResearchUtil$1) {
        this();
    }

    public void startHandSignLostNumCounting() {
        this.mHandSignLostNum = 0;
    }

    public void resetHandSignLostNum() {
        this.mHandSignLostNum = -1;
    }

    public void countUpHandSignLostNum() {
        if (this.mHandSignLostNum == -1 && CamLog.VERBOSE) {
            CamLog.d("Counting up hand signs lost number from -1.");
        }
        this.mHandSignLostNum++;
    }

    public ShootingLabel$Parameter getParameter() {
        return ShootingLabel.getHandSignLostParameter(this.mHandSignLostNum);
    }
}
