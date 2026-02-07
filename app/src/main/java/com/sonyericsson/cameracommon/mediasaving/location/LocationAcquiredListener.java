package com.sonyericsson.cameracommon.mediasaving.location;

/* JADX INFO: loaded from: classes.dex */
public interface LocationAcquiredListener {
    void onAcquired(boolean z, boolean z2);

    void onDisabled();

    void onLost();
}
