package com.sonyericsson.android.camera.util.capability;

import android.content.SharedPreferences;
import android.content.SharedPreferences$Editor;

public class BooleanCapabilityItem extends CapabilityItem<Boolean> {
    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    /* bridge */ /* synthetic */ Boolean getDefaultValue() {
        return getDefaultValue();
    }

    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    public /* bridge */ /* synthetic */ Boolean read(SharedPreferences sharedPreferences, String str) {
        return read(sharedPreferences, str);
    }

    BooleanCapabilityItem(String str, Boolean bool) {
        super(str, bool);
    }

    BooleanCapabilityItem(String str, SharedPreferences sharedPreferences) {
        super(str, sharedPreferences);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    public Boolean read(SharedPreferences sharedPreferences, String str) {
        if (sharedPreferences.contains(str)) {
            return Boolean.valueOf(sharedPreferences.getBoolean(str, false));
        }
        return false;
    }

    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    public void write(SharedPreferences$Editor sharedPreferences$Editor) {
        Boolean bool = get();
        if (bool != null) {
            sharedPreferences$Editor.putBoolean(getName(), bool.booleanValue());
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    Boolean getDefaultValue() {
        return false;
    }
}
