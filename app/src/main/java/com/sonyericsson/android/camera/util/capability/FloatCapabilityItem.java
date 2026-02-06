package com.sonyericsson.android.camera.util.capability;

import android.content.SharedPreferences;
import android.content.SharedPreferences$Editor;

public class FloatCapabilityItem extends CapabilityItem<Float> {
    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    /* bridge */ /* synthetic */ Float getDefaultValue() {
        return getDefaultValue();
    }

    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    public /* bridge */ /* synthetic */ Float read(SharedPreferences sharedPreferences, String str) {
        return read(sharedPreferences, str);
    }

    FloatCapabilityItem(String str, Float f) {
        super(str, f);
    }

    FloatCapabilityItem(String str, SharedPreferences sharedPreferences) {
        super(str, sharedPreferences);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    public Float read(SharedPreferences sharedPreferences, String str) {
        if (sharedPreferences.contains(str)) {
            return Float.valueOf(sharedPreferences.getFloat(str, 0.0f));
        }
        return Float.valueOf(0.0f);
    }

    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    public void write(SharedPreferences$Editor sharedPreferences$Editor) {
        Float f = get();
        if (f != null) {
            sharedPreferences$Editor.putFloat(getName(), f.floatValue());
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    Float getDefaultValue() {
        return Float.valueOf(0.0f);
    }
}
