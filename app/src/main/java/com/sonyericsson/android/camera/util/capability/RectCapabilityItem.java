package com.sonyericsson.android.camera.util.capability;

import android.content.SharedPreferences;
import android.graphics.Rect;

public class RectCapabilityItem extends CapabilityItem<Rect> {
    RectCapabilityItem(String str, Rect rect) {
        super(str, rect);
    }

    RectCapabilityItem(String str, SharedPreferences sharedPreferences) {
        super(str, sharedPreferences);
    }
@Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    public Rect read(SharedPreferences sharedPreferences, String str) {
        if (sharedPreferences.contains(str)) {
            return SharedPrefsTranslator.getRect(sharedPreferences.getString(str, ""));
        }
        return new Rect();
    }

    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    public void write(SharedPreferences.Editor editor) {
        Rect rect = get();
        if (rect != null) {
            editor.putString(getName(), SharedPrefsTranslator.fromRect(rect));
        }
    }

@Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    Rect getDefaultValue() {
        return new Rect();
    }
}
