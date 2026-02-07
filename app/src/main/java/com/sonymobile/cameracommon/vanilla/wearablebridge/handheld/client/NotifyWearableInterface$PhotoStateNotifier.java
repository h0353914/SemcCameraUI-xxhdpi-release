package com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client;

import com.sonymobile.cameracommon.vanilla.wearablebridge.common.AbstractCapturableState$AbstractPhotoState;

/* JADX INFO: loaded from: classes.dex */
public interface NotifyWearableInterface$PhotoStateNotifier {
    void onCaptureFailed();

    void onCaptureSucceeded();

    void onStateChanged(AbstractCapturableState$AbstractPhotoState abstractCapturableState$AbstractPhotoState);
}
