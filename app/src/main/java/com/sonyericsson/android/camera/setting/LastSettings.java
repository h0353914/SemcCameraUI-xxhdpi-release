package com.sonyericsson.android.camera.setting;

import android.content.Context;
import android.graphics.Rect;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.FastCapture;

/* JADX INFO: loaded from: classes.dex */
public class LastSettings {
    private static final String LAUNCH_AND_RECORDING = "LAUNCH_AND_RECORDING";
    private final SharedPreferencesAccessor mAccessor;

    LastSettings(Context context) {
        this.mAccessor = new SharedPreferencesAccessor(context, "com.sonyericsson.android.camera.shared_preferences");
    }

    public CapturingMode getCapturingMode() {
        return CapturingMode.convertFrom(this.mAccessor.readString("KEY_LAST_MODE", CapturingMode.UNKNOWN.name()), CapturingMode.UNKNOWN);
    }

    public void setCapturingMode(CapturingMode capturingMode) {
        this.mAccessor.writeString("KEY_LAST_MODE", capturingMode.name(), false);
    }

    public void writePauseTime() {
        this.mAccessor.writeLong("KEY_TIME_APP_PAUSED", System.currentTimeMillis(), false);
    }

    public FastCapture getFastCapture() {
        String string = this.mAccessor.readString("key-last-fast-capture-setting", FastCapture.getDefault().name());
        if ("LAUNCH_AND_RECORDING".equals(string)) {
            return FastCapture.getDefault();
        }
        try {
            return FastCapture.valueOf(string);
        } catch (IllegalArgumentException unused) {
            return FastCapture.getDefault();
        }
    }

    public void setFastCapture(FastCapture fastCapture) {
        this.mAccessor.writeString("key-last-fast-capture-setting", fastCapture.name(), false);
    }

    public Rect getPreviewSize(CapturingMode capturingMode) {
        return getRect(this.mAccessor.readString(getLastPreviewSizeKey(capturingMode), null));
    }

    private Rect getRect(String str) {
        if (str != null) {
            String[] strArrSplit = str.split("x");
            if (strArrSplit.length == 2) {
                Rect rect = new Rect();
                rect.right = Integer.valueOf(strArrSplit[0]).intValue();
                rect.bottom = Integer.valueOf(strArrSplit[1]).intValue();
                return rect;
            }
        }
        return null;
    }

    public void setPreviewSize(Rect rect, CapturingMode capturingMode) {
        this.mAccessor.writeString(getLastPreviewSizeKey(capturingMode), String.valueOf(rect.width()) + "x" + rect.height(), false);
    }

    private String getLastPreviewSizeKey(CapturingMode capturingMode) {
        return "last-preview-size-" + capturingMode.name();
    }

    public void save() {
        this.mAccessor.apply();
    }

    public void clear() {
        synchronized (this.mAccessor) {
            this.mAccessor.remove("key-last-fast-capture-setting", false);
            this.mAccessor.remove("KEY_LAST_MODE", false);
            for (CapturingMode capturingMode : CapturingMode.values()) {
                if (capturingMode != CapturingMode.UNKNOWN) {
                    this.mAccessor.remove(getLastPreviewSizeKey(capturingMode), false);
                }
            }
            this.mAccessor.apply();
        }
    }
}
