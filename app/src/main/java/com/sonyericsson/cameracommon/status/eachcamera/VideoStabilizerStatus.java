package com.sonyericsson.cameracommon.status.eachcamera;

import com.sonyericsson.cameracommon.status.EachCameraStatusValue;
import com.sonyericsson.cameracommon.status.EnumValue;

/* JADX INFO: loaded from: classes.dex */
public class VideoStabilizerStatus extends EnumValue<VideoStabilizerStatus$Value> implements EachCameraStatusValue {
    public static final VideoStabilizerStatus$Value DEFAULT_VALUE = VideoStabilizerStatus$Value.OFF;
    public static final String KEY = "video_stabilizer";
    private static int REQUIRED_PROVIDER_VERSION = 1;

    @Override // com.sonyericsson.cameracommon.status.CameraStatusValue
    public String getKey() {
        return "video_stabilizer";
    }

    public VideoStabilizerStatus(VideoStabilizerStatus$Value videoStabilizerStatus$Value) {
        super(videoStabilizerStatus$Value);
    }

    public static VideoStabilizerStatus fromCameraParameter(String str) {
        if ("on".equals(str)) {
            return new VideoStabilizerStatus(VideoStabilizerStatus$Value.ON);
        }
        if ("on".equals(str)) {
            return new VideoStabilizerStatus(VideoStabilizerStatus$Value.ON);
        }
        if ("intelligent_active".equals(str)) {
            return new VideoStabilizerStatus(VideoStabilizerStatus$Value.INTELLIGENT_ACTIVE);
        }
        return new VideoStabilizerStatus(VideoStabilizerStatus$Value.OFF);
    }

    @Override // com.sonyericsson.cameracommon.status.CameraStatusValue
    public int minRequiredVersion() {
        return REQUIRED_PROVIDER_VERSION;
    }
}
