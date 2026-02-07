package com.sonyericsson.android.camera.util.capability;

import android.content.SharedPreferences;
import android.content.SharedPreferences$Editor;

/* JADX INFO: loaded from: classes.dex */
public class IntegerCapabilityItem extends CapabilityItem<Integer> {
    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    /* bridge */ /* synthetic */ Integer getDefaultValue() {
        return getDefaultValue();
    }

    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    public /* bridge */ /* synthetic */ Integer read(SharedPreferences sharedPreferences, String str) {
        return read(sharedPreferences, str);
    }

    IntegerCapabilityItem(String str, Integer num) {
        super(str, num);
    }

    IntegerCapabilityItem(String str, SharedPreferences sharedPreferences) {
        super(str, sharedPreferences);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    public Integer read(SharedPreferences sharedPreferences, String str) {
        if (sharedPreferences.contains(str)) {
            return Integer.valueOf(sharedPreferences.getInt(str, 0));
        }
        return 0;
    }

    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    public void write(SharedPreferences$Editor sharedPreferences$Editor) {
        Integer num = get();
        if (num != null) {
            sharedPreferences$Editor.putInt(getName(), num.intValue());
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    Integer getDefaultValue() {
        return 0;
    }
}
