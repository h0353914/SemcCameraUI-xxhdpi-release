package com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client;

import com.sonymobile.cameracommon.vanilla.wearablebridge.common.AbstractCapturableState$AbstractVideoState;

public interface NotifyWearableInterface$VideoStateNotifier {
    void onStartRecordingFailed();

    void onStartRecordingSucceeded();

    void onStateChanged(AbstractCapturableState$AbstractVideoState abstractCapturableState$AbstractVideoState);

    void onStopRecordingFailed();

    void onStopRecordingSucceeded();
}
