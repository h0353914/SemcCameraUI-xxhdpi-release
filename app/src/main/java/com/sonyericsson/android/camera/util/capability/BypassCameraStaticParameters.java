package com.sonyericsson.android.camera.util.capability;

import com.sonyericsson.android.camera.util.CamLog;
import com.sonymobile.imageprocessor.bypasscamera2.BypassCameraParameters;
import java.util.ArrayList;
import java.util.List;

final class BypassCameraStaticParameters {
    private static final String DELIMITER_COMMA = ",";
    private static final String TAG = "BypassCameraStaticParameters";
    private final BypassCameraParameters mParams;

    public BypassCameraStaticParameters(BypassCameraParameters bypassCameraParameters) {
        this.mParams = bypassCameraParameters;
    }

    public List<String> getSupportedSuperSlowmotion() {
        String[] strArrSplit;
        ArrayList arrayList = new ArrayList();
        String str = this.mParams.get("super-slow-values");
        if (str != null && (strArrSplit = str.split(",")) != null) {
            for (String str2 : strArrSplit) {
                arrayList.add(str2);
            }
        }
        if (CamLog.VERBOSE) {
            CamLog.d("getSupportedSuperSlowmotion() : " + arrayList);
        }
        return arrayList;
    }

    public List<VideoConfiguration> getSupportedSuperSlowConfiguration() {
        return VideoConfiguration.parse(this.mParams.get("video-super-slow-configuration"));
    }

    public List<String> getSupportedClimaxRecognition() {
        String[] strArrSplit;
        ArrayList arrayList = new ArrayList();
        String str = this.mParams.get("climax-recognition-values");
        if (str != null && (strArrSplit = str.split(",")) != null) {
            for (String str2 : strArrSplit) {
                arrayList.add(str2);
            }
        }
        if (CamLog.VERBOSE) {
            CamLog.d("getSupportedClimaxRecognition() : " + arrayList);
        }
        return arrayList;
    }

    public List<String> getSupportedBurst() {
        String[] strArrSplit;
        ArrayList arrayList = new ArrayList();
        String str = this.mParams.get("burst-values");
        if (str != null && (strArrSplit = str.split(",")) != null) {
            for (String str2 : strArrSplit) {
                arrayList.add(str2);
            }
        }
        if (CamLog.VERBOSE) {
            CamLog.d("getSupportedBurst() : " + arrayList);
        }
        return arrayList;
    }

    public List<String> getSupportedVideoStabilizer() {
        String[] strArrSplit;
        ArrayList arrayList = new ArrayList();
        String str = this.mParams.get("vs-values");
        if (str != null && (strArrSplit = str.split(",")) != null) {
            for (String str2 : strArrSplit) {
                arrayList.add(str2);
            }
        }
        if (CamLog.VERBOSE) {
            CamLog.d("getSupportedVideoStabilizer() : " + arrayList);
        }
        return arrayList;
    }

    public List<VideoConfiguration> getSupportedHighFrameRateVideoConfiguration() {
        return VideoConfiguration.parse(this.mParams.get("video-high-frame-rate-configuration"));
    }

    public List<VideoConfiguration> getSupportedSteadyShotConfiguration() {
        return VideoConfiguration.parse(this.mParams.get("vs-steady-shot-configuration"));
    }

    public List<VideoConfiguration> getSupportedIntelligentActiveConfiguration() {
        return VideoConfiguration.parse(this.mParams.get("vs-intelligent-active-configuration"));
    }

    public boolean isVideoHdrSupported() {
        String str = this.mParams.get("video-hdr-values");
        if (str == null) {
            return false;
        }
        for (String str2 : str.split(",")) {
            if ("on".equals(str2)) {
                return true;
            }
        }
        return false;
    }
}
