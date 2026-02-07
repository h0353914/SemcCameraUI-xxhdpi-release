package com.sonymobile.imageprocessor.bypasscamera2;

import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class BypassCameraParameters {
    public static final String BURST_OFF = "off";
    public static final String BURST_ON = "on";
    public static final String CLIMAX_RECOGNITION_AUTO = "auto";
    public static final String CLIMAX_RECOGNITION_OFF = "off";
    public static final String CLIMAX_RECOGNITION_ON = "on";
    public static final String KEY_BURST_VALUES = "burst-values";
    public static final String KEY_CLIMAX_RECOGNITION = "climax-recognition";
    public static final String KEY_CLIMAX_RECOGNITION_VALUES = "climax-recognition-values";
    public static final String KEY_SUPER_SLOW_VALUES = "super-slow-values";
    public static final String KEY_VIDEO_HDR_VALUES = "video-hdr-values";
    public static final String KEY_VIDEO_HIGH_FRAME_RATE_CONFIGURATION = "video-high-frame-rate-configuration";
    public static final String KEY_VIDEO_STABILIZERS_INTELLIGENT_ACTIVE_CONFIGURATION = "vs-intelligent-active-configuration";
    public static final String KEY_VIDEO_STABILIZERS_STEADY_SHOT_CONFIGURATION = "vs-steady-shot-configuration";
    public static final String KEY_VIDEO_STABILIZERS_VALUES = "vs-values";
    public static final String KEY_VIDEO_SUPER_SLOW_CONFIGURATION = "video-super-slow-configuration";
    public static final String SUPER_SLOW_OFF = "off";
    public static final String SUPER_SLOW_ON = "on";
    public static final String VIDEO_HDR_OFF = "off";
    public static final String VIDEO_HDR_ON = "on";
    private final Map<String, String> mMap = new LinkedHashMap();

    public void set(String str, String str2) {
        this.mMap.put(str, str2);
    }

    public void setInt(String str, int i) {
        this.mMap.put(str, String.valueOf(i));
    }

    public String get(String str) {
        return this.mMap.get(str);
    }

    public int getInt(String str) {
        return Integer.parseInt(this.mMap.get(str));
    }
}
