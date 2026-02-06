package com.sonyericsson.cameracommon.status.eachcamera;

import com.sonyericsson.android.camera.configuration.parameters.VideoHdr;
import com.sonyericsson.cameracommon.status.EachCameraStatusValue;
import com.sonyericsson.cameracommon.status.EnumValue;

public class Hdr extends EnumValue<Hdr$Value> implements EachCameraStatusValue {
    public static final Hdr$Value DEFAULT_VALUE = Hdr$Value.OFF;
    public static final String KEY = "hdr";
    private static int REQUIRED_PROVIDER_VERSION = 12;

    @Override // com.sonyericsson.cameracommon.status.CameraStatusValue
    public String getKey() {
        return "hdr";
    }

    public static Hdr$Value fromCameraParameter(VideoHdr videoHdr) {
        if (videoHdr == VideoHdr.HDR_ON) {
            return Hdr$Value.ON;
        }
        return Hdr$Value.OFF;
    }

    public Hdr(Hdr$Value hdr$Value) {
        super(hdr$Value);
    }

    @Override // com.sonyericsson.cameracommon.status.CameraStatusValue
    public int minRequiredVersion() {
        return REQUIRED_PROVIDER_VERSION;
    }
}
