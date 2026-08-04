package com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client;

public interface ObserveWearableInterface {

    public interface LifeCycleObserver {
        void onPause();

        void onResume();
    }

    public interface PhotoEventObserver {
        void onPhotoCaptureRequested();
    }

    public interface VideoEventObserver {
        void onStartVideoRecRequested();

        void onStopVideoRecRequested();
    }
}
