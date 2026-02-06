package com.sonymobile.cameracommon.research;

import com.sonyericsson.android.camera.util.CamLog;
import com.sonymobile.cameracommon.research.idd.IddUtil;
import com.sonymobile.cameracommon.research.parameters.Event$Category;
import com.sonymobile.cameracommon.research.parameters.Event$ViewerLaunched;

class ResearchUtil$PanoramaInfo {
    private int mSuccessNum;
    private int mTryNum;
    private Event$ViewerLaunched mViewerLaunched;

    private ResearchUtil$PanoramaInfo() {
        this.mTryNum = 0;
        this.mSuccessNum = 0;
        this.mViewerLaunched = Event$ViewerLaunched.NOT_LAUNCHED;
    }

    /* synthetic */ ResearchUtil$PanoramaInfo(ResearchUtil$1 researchUtil$1) {
        this();
    }

    static /* synthetic */ void access$1400(ResearchUtil$PanoramaInfo researchUtil$PanoramaInfo) {
        researchUtil$PanoramaInfo.sendPanoramaInfo();
    }

    public void tryPanorama() {
        if (CamLog.VERBOSE) {
            CamLog.d("tryPanorama()");
        }
        this.mTryNum++;
    }

    public void succeedInPanorama() {
        if (CamLog.VERBOSE) {
            CamLog.d("succeedInPanorama()");
        }
        this.mSuccessNum++;
    }

    public void setViewerLaunched() {
        if (CamLog.VERBOSE) {
            CamLog.d("setViewerLaunched()");
        }
        this.mViewerLaunched = Event$ViewerLaunched.LAUNCHED;
    }

    private void sendPanoramaInfo() {
        if (this.mTryNum > 0 || this.mViewerLaunched == Event$ViewerLaunched.LAUNCHED) {
            String strValueOf = String.valueOf(this.mTryNum);
            String strValueOf2 = String.valueOf(this.mSuccessNum);
            IddUtil.sendEvent(Event$Category.PANORAMA, strValueOf + "_try", strValueOf2 + "_success", this.mViewerLaunched.mValue);
        }
        clear();
    }

    public void clear() {
        if (CamLog.VERBOSE) {
            CamLog.d("PanoramaInfo#clear()");
        }
        this.mTryNum = 0;
        this.mSuccessNum = 0;
        this.mViewerLaunched = Event$ViewerLaunched.NOT_LAUNCHED;
    }
}
