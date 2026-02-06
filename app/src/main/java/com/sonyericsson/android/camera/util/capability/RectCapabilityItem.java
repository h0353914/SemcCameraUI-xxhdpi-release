package com.sonyericsson.android.camera.util.capability;

import android.content.SharedPreferences;
import android.content.SharedPreferences$Editor;
import android.graphics.Rect;

public class RectCapabilityItem extends CapabilityItem<Rect> {
    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    /* bridge */ /* synthetic */ Rect getDefaultValue() {
        return getDefaultValue();
    }

    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    public /* bridge */ /* synthetic */ Rect read(SharedPreferences sharedPreferences, String str) {
        return read(sharedPreferences, str);
    }

    RectCapabilityItem(String str, Rect rect) {
        super(str, rect);
    }

    RectCapabilityItem(String str, SharedPreferences sharedPreferences) {
        super(str, sharedPreferences);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    public Rect read(SharedPreferences sharedPreferences, String str) {
        if (sharedPreferences.contains(str)) {
            return SharedPrefsTranslator.getRect(sharedPreferences.getString(str, ""));
        }
        return new Rect();
    }

    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    public void write(SharedPreferences$Editor sharedPreferences$Editor) {
        Rect rect = get();
        if (rect != null) {
            sharedPreferences$Editor.putString(getName(), SharedPrefsTranslator.fromRect(rect));
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    Rect getDefaultValue() {
        return new Rect();
    }
}
