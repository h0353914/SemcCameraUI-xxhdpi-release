package com.sonyericsson.android.camera.view.overlaycontrol.semiauto;

public interface SemiAutoControlView$OnSemiAutoChangeListener {
    void onAmberBlueColorChanged(int i);

    void onBrightnessChanged(int i);

    void onSemiAutoControlStarted();

    void onSemiAutoControlStopped();

    void onSemiAutoDisabled();

    void onSemiAutoEnabled();

    void onSemiAutoReset();
}
