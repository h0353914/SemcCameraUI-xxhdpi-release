package com.sonyericsson.cameracommon.viewfinder;

/* JADX INFO: loaded from: classes.dex */
public interface ViewFinderInterface {
    boolean isHeadUpDisplayReady();

    void onCaptureDone();

    void onShutterDone(boolean z);
}
