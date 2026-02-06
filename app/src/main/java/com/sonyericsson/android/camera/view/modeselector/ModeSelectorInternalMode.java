package com.sonyericsson.android.camera.view.modeselector;

import android.content.Context;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.controller.launcher.ApplicationLauncher;

public enum ModeSelectorInternalMode {
    MANUAL(CapturingMode.NORMAL),
    SLOW_MOTION(CapturingMode.SLOW_MOTION),
    PORTRAIT_SELFIE(2131230875, 2131689680),
    DUAL_BACKGROUND_DEFOCUS(2131230876, 2131689650),
    DUAL_MONOCHROME(2131230882, 2131689951);

    public final int iconId;
    public final boolean isExternalApp;
    public final Object tag;
    public final int textId;

    ModeSelectorInternalMode(CapturingMode capturingMode) {
        this.tag = capturingMode;
        this.isExternalApp = false;
        this.iconId = capturingMode.getIconId();
        this.textId = capturingMode.getTextId();
    }

    ModeSelectorInternalMode(int i, int i2) {
        this.tag = null;
        this.isExternalApp = true;
        this.iconId = i;
        this.textId = i2;
    }

    public boolean isSupported(Context context) {
        if (this.isExternalApp) {
            switch (this) {
                case PORTRAIT_SELFIE:
                    return ApplicationLauncher.isPortraitSelfieAvailable(context);
                case DUAL_BACKGROUND_DEFOCUS:
                    return ApplicationLauncher.isBokehSupported();
                case DUAL_MONOCHROME:
                    return ApplicationLauncher.isMonochromeSupported();
                default:
                    return false;
            }
        }
        return CapturingMode.getValidOptions().contains(this.tag);
    }

    public static boolean exists(CapturingMode capturingMode) {
        for (ModeSelectorInternalMode modeSelectorInternalMode : values()) {
            if (capturingMode.equals(modeSelectorInternalMode.tag)) {
                return true;
            }
        }
        return false;
    }
}
