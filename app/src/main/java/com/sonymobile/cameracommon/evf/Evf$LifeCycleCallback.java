package com.sonymobile.cameracommon.evf;

/* JADX INFO: loaded from: classes.dex */
public interface Evf$LifeCycleCallback {
    void onEvfFinalized(Evf evf);

    void onEvfInitialized(Evf evf, int i, int i2);

    void onEvfSizeChanged(Evf evf, int i, int i2);
}
