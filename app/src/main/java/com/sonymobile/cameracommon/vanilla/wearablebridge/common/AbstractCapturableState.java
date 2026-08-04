package com.sonymobile.cameracommon.vanilla.wearablebridge.common;

public interface AbstractCapturableState {

    public enum AbstractPhotoState {
        IDLE,
        BLOCKED
    }

    public enum AbstractVideoState {
        IDLE,
        STARTING_REC,
        RECORDING,
        BLOCKED
    }
}
