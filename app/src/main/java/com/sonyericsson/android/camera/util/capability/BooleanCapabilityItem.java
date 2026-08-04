package com.sonyericsson.android.camera.util.capability;

import android.content.SharedPreferences;

public class BooleanCapabilityItem extends CapabilityItem<Boolean> {
    BooleanCapabilityItem(String str, Boolean bool) {
        super(str, bool);
    }

    BooleanCapabilityItem(String str, SharedPreferences sharedPreferences) {
        super(str, sharedPreferences);
    }
@Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    public Boolean read(SharedPreferences sharedPreferences, String str) {
        if (sharedPreferences.contains(str)) {
            return Boolean.valueOf(sharedPreferences.getBoolean(str, false));
        }
        return false;
    }

    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    public void write(SharedPreferences.Editor editor) {
        Boolean bool = get();
        if (bool != null) {
            editor.putBoolean(getName(), bool.booleanValue());
        }
    }

@Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    Boolean getDefaultValue() {
        return false;
    }
}
