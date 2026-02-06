package com.sonyericsson.android.camera.configuration;

import android.view.KeyCharacterMap;

public class Configurations {
    public static final String TAG = "Configurations";
    static final boolean sHasShutterKey = KeyCharacterMap.deviceHasKey(27);
    private IntentReader$VideoQualityConfigurations mVideoConfig;

    public static final void preload() {
    }

    public void initInSync(IntentReader$VideoQualityConfigurations intentReader$VideoQualityConfigurations) {
        this.mVideoConfig = intentReader$VideoQualityConfigurations;
    }

    public long getVideoMaxFileSizeInBytes() {
        return this.mVideoConfig.maxFileSize;
    }

    public long getVideoMaxDurationInMillisecs() {
        return this.mVideoConfig.maxDuration;
    }

    public long getVideoQuality() {
        return this.mVideoConfig.quality;
    }

    public boolean hasLimitForSizeOrDuration() {
        return this.mVideoConfig.hasSizeLimit;
    }
}
