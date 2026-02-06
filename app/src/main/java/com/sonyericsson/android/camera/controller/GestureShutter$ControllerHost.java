package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.CameraActivity$LayoutOrientation;
import com.sonyericsson.android.camera.CameraActivity$LayoutOrientationChangedListener;

public interface GestureShutter$ControllerHost {
    void addOrientationListener(CameraActivity$LayoutOrientationChangedListener cameraActivity$LayoutOrientationChangedListener);

    CameraActivity$LayoutOrientation getLayoutOrientation();

    void prepareGestureShutterCountDown();

    void removeOrientationListener(CameraActivity$LayoutOrientationChangedListener cameraActivity$LayoutOrientationChangedListener);

    void resetGestureShutterCountDown();

    void startGestureShutterCountDown();
}
