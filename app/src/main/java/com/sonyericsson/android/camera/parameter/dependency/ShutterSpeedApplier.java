package com.sonyericsson.android.camera.parameter.dependency;

import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.Iso;
import com.sonyericsson.android.camera.configuration.parameters.ShutterSpeed;
import com.sonyericsson.android.camera.parameter.CapturingModeParams;
import com.sonyericsson.android.camera.parameter.ParameterUtil;
import com.sonyericsson.android.camera.util.capability.PlatformCapability;

/* JADX INFO: loaded from: classes.dex */
public class ShutterSpeedApplier extends DependencyApplier {
    public static final String TAG = "ShutterSpeedApplier";
    private final ShutterSpeed mValue;

    @Override // com.sonyericsson.android.camera.parameter.dependency.DependencyApplier
    public void reset(CapturingModeParams capturingModeParams) {
    }

    public ShutterSpeedApplier(ShutterSpeed shutterSpeed) {
        this.mValue = shutterSpeed;
    }

    @Override // com.sonyericsson.android.camera.parameter.dependency.DependencyApplier
    public void apply(CapturingModeParams capturingModeParams) {
        if (this.mValue == ShutterSpeed.AUTO || PlatformCapability.getSupportedAeModes(((CapturingMode) capturingModeParams.mCapturingMode.get()).getCameraId()).contains("semi-auto")) {
            return;
        }
        ParameterUtil.applyRecommendedValue(capturingModeParams.mIso, Iso.ISO_AUTO);
    }
}
