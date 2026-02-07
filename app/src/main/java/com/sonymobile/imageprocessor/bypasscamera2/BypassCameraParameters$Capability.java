package com.sonymobile.imageprocessor.bypasscamera2;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class BypassCameraParameters$Capability {
    public List<String> mVideoStabilizationMode = new ArrayList();
    public List<String> mSuperSlowMode = new ArrayList();
    public List<String> mClimaxRecognitionMode = new ArrayList();
    public List<String> mBurstMode = new ArrayList();
    public List<String> mVideoHdrMode = new ArrayList();
    public List<Integer> mSuperSlowFrameNumList = new ArrayList();
    public List<BypassCameraParameters$Capability$SupportedInfo> mHighFrameRateSupportedInfoList = new ArrayList();
    public List<BypassCameraParameters$Capability$SupportedInfo> mSteadyShotSupportedInfoList = new ArrayList();
    public List<BypassCameraParameters$Capability$SupportedInfo> mIntelligentActiveSupportedInfoList = new ArrayList();
    public List<BypassCameraParameters$Capability$SupportedInfo> mSuperSlowSupportedInfoList = new ArrayList();

    BypassCameraParameters$Capability() {
    }

    public void setVideoStabilizationMode(int i) {
        for (BypassCameraParameters$Capability$VideoStabilizationMode bypassCameraParameters$Capability$VideoStabilizationMode : BypassCameraParameters$Capability$VideoStabilizationMode.values()) {
            if (bypassCameraParameters$Capability$VideoStabilizationMode.code == (bypassCameraParameters$Capability$VideoStabilizationMode.code & i)) {
                this.mVideoStabilizationMode.add(bypassCameraParameters$Capability$VideoStabilizationMode.value);
            }
        }
    }

    public void setSuperSlowMode(int i) {
        for (BypassCameraParameters$Capability$SuperSlowMode bypassCameraParameters$Capability$SuperSlowMode : BypassCameraParameters$Capability$SuperSlowMode.values()) {
            if (bypassCameraParameters$Capability$SuperSlowMode.code == (bypassCameraParameters$Capability$SuperSlowMode.code & i)) {
                this.mSuperSlowMode.add(bypassCameraParameters$Capability$SuperSlowMode.value);
            }
        }
    }

    public void setClimaxRecognitionMode(int i) {
        for (BypassCameraParameters$Capability$ClimaxRecognitionMode bypassCameraParameters$Capability$ClimaxRecognitionMode : BypassCameraParameters$Capability$ClimaxRecognitionMode.values()) {
            if (bypassCameraParameters$Capability$ClimaxRecognitionMode.code == (bypassCameraParameters$Capability$ClimaxRecognitionMode.code & i)) {
                this.mClimaxRecognitionMode.add(bypassCameraParameters$Capability$ClimaxRecognitionMode.value);
            }
        }
    }

    public void setBurstMode(int i) {
        for (BypassCameraParameters$Capability$BurstMode bypassCameraParameters$Capability$BurstMode : BypassCameraParameters$Capability$BurstMode.values()) {
            if (bypassCameraParameters$Capability$BurstMode.code == (bypassCameraParameters$Capability$BurstMode.code & i)) {
                this.mBurstMode.add(bypassCameraParameters$Capability$BurstMode.value);
            }
        }
    }

    public void setVideoHdrMode(int i) {
        for (BypassCameraParameters$Capability$VideoHdrMode bypassCameraParameters$Capability$VideoHdrMode : BypassCameraParameters$Capability$VideoHdrMode.values()) {
            if (bypassCameraParameters$Capability$VideoHdrMode.code == (bypassCameraParameters$Capability$VideoHdrMode.code & i)) {
                this.mVideoHdrMode.add(bypassCameraParameters$Capability$VideoHdrMode.value);
            }
        }
    }

    public void addSuperSlowFrameNum(int i) {
        this.mSuperSlowFrameNumList.add(Integer.valueOf(i));
    }

    public void addHighFrameRateSupportedInfo(int i, int i2, int i3) {
        this.mHighFrameRateSupportedInfoList.add(new BypassCameraParameters$Capability$SupportedInfo(i, i2, i3));
    }

    public void addSteadyShotSupportedInfo(int i, int i2, int i3) {
        this.mSteadyShotSupportedInfoList.add(new BypassCameraParameters$Capability$SupportedInfo(i, i2, i3));
    }

    public void addIntelligentActiveSupportedInfo(int i, int i2, int i3) {
        this.mIntelligentActiveSupportedInfoList.add(new BypassCameraParameters$Capability$SupportedInfo(i, i2, i3));
    }

    public void addSuperSlowSupportedInfo(int i, int i2, int i3) {
        this.mSuperSlowSupportedInfoList.add(new BypassCameraParameters$Capability$SupportedInfo(i, i2, i3));
    }
}
