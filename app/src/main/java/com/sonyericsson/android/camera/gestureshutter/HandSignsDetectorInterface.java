package com.sonyericsson.android.camera.gestureshutter;

import com.sonyericsson.android.camera.CameraActivity$LayoutOrientation;
import com.sonyericsson.android.camera.device.ImageRetriever;

public interface HandSignsDetectorInterface {
    int getDetectHeight();

    int getDetectWidth();

    boolean isStarted();

    void release();

    void setLayoutOrientation(CameraActivity$LayoutOrientation cameraActivity$LayoutOrientation);

    void startDetect(ImageRetriever imageRetriever);

    void stopDetect();
}
