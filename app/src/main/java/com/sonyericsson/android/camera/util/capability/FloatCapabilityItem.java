package com.sonyericsson.android.camera.util.capability;

import android.content.SharedPreferences;

public class FloatCapabilityItem extends CapabilityItem<Float> {
    FloatCapabilityItem(String str, Float f) {
        super(str, f);
    }

    FloatCapabilityItem(String str, SharedPreferences sharedPreferences) {
        super(str, sharedPreferences);
    }
@Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    public Float read(SharedPreferences sharedPreferences, String str) {
        if (sharedPreferences.contains(str)) {
            return Float.valueOf(sharedPreferences.getFloat(str, 0.0f));
        }
        return Float.valueOf(0.0f);
    }

    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    public void write(SharedPreferences.Editor editor) {
        Float f = get();
        if (f != null) {
            editor.putFloat(getName(), f.floatValue());
        }
    }

@Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    Float getDefaultValue() {
        return Float.valueOf(0.0f);
    }
}
