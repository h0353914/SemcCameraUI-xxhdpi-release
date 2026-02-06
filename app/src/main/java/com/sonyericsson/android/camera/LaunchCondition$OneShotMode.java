package com.sonyericsson.android.camera;

public enum LaunchCondition$OneShotMode {
    NONE,
    PHOTO,
    VIDEO;

    public boolean isEnabled() {
        return this != NONE;
    }

    public boolean isPhoto() {
        return this == PHOTO;
    }

    public boolean isVideo() {
        return this == VIDEO;
    }
}
