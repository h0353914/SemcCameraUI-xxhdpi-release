package com.sonyericsson.cameracommon.viewfinder;

public interface ViewFinderInterface {
    boolean isHeadUpDisplayReady();

    void onCaptureDone();

    void onShutterDone(boolean z);
}
