package com.sonyericsson.cameracommon.status.eachcamera;

import com.sonyericsson.cameracommon.status.EachCameraStatusValue;
import com.sonyericsson.cameracommon.status.EnumValue;

public class VideoNoiseReduction extends EnumValue<VideoNoiseReduction$Value> implements EachCameraStatusValue {
    public static final VideoNoiseReduction$Value DEFAULT_VALUE = VideoNoiseReduction$Value.OFF;
    public static final String KEY = "video_noise_reduction";
    private static int REQUIRED_PROVIDER_VERSION = 10;

    @Override // com.sonyericsson.cameracommon.status.CameraStatusValue
    public String getKey() {
        return "video_noise_reduction";
    }

    public VideoNoiseReduction(VideoNoiseReduction$Value videoNoiseReduction$Value) {
        super(videoNoiseReduction$Value);
    }

    @Override // com.sonyericsson.cameracommon.status.CameraStatusValue
    public int minRequiredVersion() {
        return REQUIRED_PROVIDER_VERSION;
    }
}
