package com.sonyericsson.android.camera.view.baselayout;

import com.sonyericsson.cameracommon.viewfinder.LayoutPattern;
import java.util.HashMap;
import java.util.Map;

public class BaseLayoutPatternApplier implements LayoutPatternApplier {
    public static final int D = 3;
    public static final int H = 2;
    public static final int N = 0;
    public static final int S = 1;
    private BaseLayout mLayout;
    private final Map<LayoutPattern, BaseLayoutPatternApplier$Visibilities> mMap = new HashMap();

    @Override // com.sonyericsson.android.camera.view.baselayout.LayoutPatternApplier
    public void setup(BaseLayout baseLayout, boolean z) {
        this.mLayout = baseLayout;
        setupVisibilities(z);
    }

    @Override // com.sonyericsson.android.camera.view.baselayout.LayoutPatternApplier
    public void apply(LayoutPattern layoutPattern) {
        BaseLayoutPatternApplier$Visibilities baseLayoutPatternApplier$Visibilities = this.mMap.get(layoutPattern);
        switch (baseLayoutPatternApplier$Visibilities.captureButton) {
            case 1:
                this.mLayout.getOnScreenButtonGroup().setVisibility(0);
                break;
            case 2:
                this.mLayout.getOnScreenButtonGroup().setVisibility(4);
                break;
            default:
                if (this.mLayout.getOnScreenButtonGroup().isMainButtonTouched()) {
                    this.mLayout.getOnScreenButtonGroup().setVisibility(0);
                } else {
                    this.mLayout.getOnScreenButtonGroup().setVisibility(4);
                }
                break;
        }
        switch (baseLayoutPatternApplier$Visibilities.contentView) {
            case 1:
                this.mLayout.showContentsViewController();
                break;
            case 2:
                this.mLayout.hideContentsViewController();
                break;
        }
        switch (baseLayoutPatternApplier$Visibilities.modeButtonShortcut) {
            case 1:
                this.mLayout.getModeButtonShortcut().show();
                break;
            case 2:
                this.mLayout.getModeButtonShortcut().hide();
                break;
        }
        switch (baseLayoutPatternApplier$Visibilities.mruShortcut) {
            case 1:
                this.mLayout.getMruButtonContainer().show();
                break;
            case 2:
                this.mLayout.getMruButtonContainer().hide();
                break;
        }
        switch (baseLayoutPatternApplier$Visibilities.captureMethodIndicator) {
            case 1:
                this.mLayout.getPhotoSmileCaptureIndicator().show();
                break;
            case 2:
                this.mLayout.getPhotoSmileCaptureIndicator().hide();
                break;
        }
        switch (baseLayoutPatternApplier$Visibilities.sceneIndicator) {
            case 1:
                this.mLayout.getSceneIndicator().show();
                this.mLayout.getConditionIndicator().show();
                break;
            case 2:
                this.mLayout.getSceneIndicator().hide();
                this.mLayout.getConditionIndicator().hide();
                break;
        }
        switch (baseLayoutPatternApplier$Visibilities.geotagIndicator) {
            case 1:
                this.mLayout.getGeoTagIndicator().show();
                break;
            case 2:
                this.mLayout.getGeoTagIndicator().hide();
                break;
        }
        switch (baseLayoutPatternApplier$Visibilities.storageIndicator) {
            case 1:
                this.mLayout.getLowMemoryInternalIndicator().show();
                this.mLayout.getLowMemorySdIndicator().show();
                break;
            case 2:
                this.mLayout.getLowMemoryInternalIndicator().hide();
                this.mLayout.getLowMemorySdIndicator().hide();
                break;
        }
        switch (baseLayoutPatternApplier$Visibilities.zoombar) {
            case 1:
                this.mLayout.getZoomBar().show();
                break;
            case 2:
                this.mLayout.getZoomBar().hideImmediately();
                break;
            case 3:
                this.mLayout.getZoomBar().hideDelayed();
                break;
        }
        switch (baseLayoutPatternApplier$Visibilities.recordingProgress) {
            case 1:
                this.mLayout.getRecordingIndicator().setVisibility(0);
                break;
            case 2:
                this.mLayout.getRecordingIndicator().setVisibility(4);
                break;
        }
        switch (baseLayoutPatternApplier$Visibilities.thermalIndicator) {
            case 1:
                this.mLayout.getThermalIndicator().show();
                break;
            case 2:
                this.mLayout.getThermalIndicator().hide();
                break;
        }
        switch (baseLayoutPatternApplier$Visibilities.primarySettingShortcut) {
            case 1:
                this.mLayout.getPrimaryShortcut().show();
                break;
            case 2:
                this.mLayout.getPrimaryShortcut().hide();
                break;
        }
        switch (baseLayoutPatternApplier$Visibilities.secondarySettingShortcut) {
            case 1:
                this.mLayout.getOnScreenSubButton().setVisibility(0);
                this.mLayout.getOnScreenExtraButton().setVisibility(0);
                break;
            case 2:
                this.mLayout.getOnScreenSubButton().setVisibility(4);
                this.mLayout.getOnScreenExtraButton().setVisibility(4);
                break;
        }
        switch (baseLayoutPatternApplier$Visibilities.batteryIndicator) {
            case 1:
                this.mLayout.getBatteryIndicator().show();
                break;
            case 2:
                this.mLayout.getBatteryIndicator().hide();
                break;
        }
        switch (baseLayoutPatternApplier$Visibilities.predictiveCaptureIndicator) {
            case 1:
                this.mLayout.getPredictiveCaptureIndicatorController().show();
                break;
            case 2:
                this.mLayout.getPredictiveCaptureIndicatorController().hide();
                break;
        }
        this.mLayout.refresh();
    }

    private void setupVisibilities(boolean z) {
        this.mMap.clear();
        if (z) {
            set(BaseLayoutPattern.PREVIEW, 1, 1, 2, 1, 1, 3, 2, 2, 1, 1, 0, 1, 2, 1, 1);
            set(BaseLayoutPattern.PREVIEW_NO_RECORDING, 1, 1, 2, 1, 1, 3, 2, 2, 1, 1, 0, 1, 2, 1, 1);
            set(BaseLayoutPattern.CLEAR, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2);
            set(BaseLayoutPattern.ZOOMING, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2);
            set(BaseLayoutPattern.ZOOMING_IN_RECORDING, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2);
            set(BaseLayoutPattern.ZOOMING_IN_PAUSE_RECORDING, BaseLayoutPattern.ZOOMING_IN_RECORDING);
            set(BaseLayoutPattern.FOCUS_SEARCHING, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2);
            set(BaseLayoutPattern.FOCUS_DONE, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2);
            set(BaseLayoutPattern.CAPTURE, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2);
            set(BaseLayoutPattern.RECORDING, 1, 1, 2, 2, 1, 3, 2, 1, 1, 2, 2, 1, 2, 2, 2);
            set(BaseLayoutPattern.BURST_SHOOTING, 0, 2, 2, 2, 1, 2, 2, 2, 1, 2, 2, 1, 2, 2, 2);
            set(BaseLayoutPattern.SETTING, 1, 2, 2, 2, 2, 2, 2, 2, 2, 1, 0, 2, 2, 1, 0);
            set(BaseLayoutPattern.SELFTIMER, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2);
            set(BaseLayoutPattern.PAUSE_RECORDING, 1, 1, 2, 2, 1, 3, 2, 1, 1, 2, 2, 1, 2, 2, 2);
            set(BaseLayoutPattern.OVERLAY_CONTROL_SEEKING, 1, 1, 2, 1, 1, 2, 2, 2, 1, 1, 2, 1, 2, 2, 2);
            set(BaseLayoutPattern.HIGH_FRAME_RATE_RECORDING_IN_SUPER_SLOW_MOTION, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2);
            set(BaseLayoutPattern.MODE_CHANGING, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
            return;
        }
        set(BaseLayoutPattern.PREVIEW, 1, 1, 1, 1, 1, 3, 1, 2, 1, 1, 0, 1, 1, 1, 1);
        set(BaseLayoutPattern.PREVIEW_NO_RECORDING, 1, 1, 2, 1, 1, 3, 1, 2, 1, 1, 0, 1, 1, 1, 1);
        set(BaseLayoutPattern.CLEAR, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2);
        set(BaseLayoutPattern.ZOOMING, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2);
        set(BaseLayoutPattern.ZOOMING_IN_RECORDING, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2);
        set(BaseLayoutPattern.ZOOMING_IN_PAUSE_RECORDING, BaseLayoutPattern.ZOOMING_IN_RECORDING);
        set(BaseLayoutPattern.FOCUS_SEARCHING, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2);
        set(BaseLayoutPattern.FOCUS_DONE, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2);
        set(BaseLayoutPattern.CAPTURE, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 2, 2);
        set(BaseLayoutPattern.RECORDING, 1, 1, 1, 2, 1, 3, 1, 1, 1, 2, 2, 1, 2, 2, 2);
        set(BaseLayoutPattern.BURST_SHOOTING, 0, 2, 2, 2, 1, 2, 2, 2, 1, 2, 2, 1, 2, 2, 2);
        set(BaseLayoutPattern.SETTING, 1, 2, 2, 2, 2, 2, 1, 2, 2, 1, 0, 2, 2, 1, 0);
        set(BaseLayoutPattern.SELFTIMER, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2);
        set(BaseLayoutPattern.PAUSE_RECORDING, 1, 1, 1, 2, 1, 3, 2, 1, 1, 2, 2, 1, 2, 2, 2);
        set(BaseLayoutPattern.OVERLAY_CONTROL_SEEKING, 1, 1, 1, 1, 1, 2, 1, 2, 1, 1, 0, 1, 2, 1, 1);
        set(BaseLayoutPattern.HIGH_FRAME_RATE_RECORDING_IN_SUPER_SLOW_MOTION, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2);
        set(BaseLayoutPattern.MODE_CHANGING, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    }

    private void set(LayoutPattern layoutPattern, int... iArr) {
        this.mMap.put(layoutPattern, new BaseLayoutPatternApplier$Visibilities(iArr));
    }

    private void set(LayoutPattern layoutPattern, LayoutPattern layoutPattern2) {
        this.mMap.put(layoutPattern, this.mMap.get(layoutPattern2));
    }
}
