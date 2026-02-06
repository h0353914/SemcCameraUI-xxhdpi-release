package com.sonyericsson.android.camera.util.capability;

import android.content.SharedPreferences;
import android.content.SharedPreferences$Editor;

public class StringCapabilityItem extends CapabilityItem<String> {
    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    /* JADX INFO: renamed from: getDefaultValue, reason: avoid collision after fix types in other method */
    String getDefaultValue2() {
        return "";
    }

    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    /* bridge */ /* synthetic */ String getDefaultValue() {
        return getDefaultValue2();
    }

    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    public /* bridge */ /* synthetic */ String read(SharedPreferences sharedPreferences, String str) {
        return read2(sharedPreferences, str);
    }

    StringCapabilityItem(String str, String str2) {
        super(str, str2);
    }

    StringCapabilityItem(String str, SharedPreferences sharedPreferences) {
        super(str, sharedPreferences);
    }

    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    /* JADX INFO: renamed from: read, reason: avoid collision after fix types in other method */
    public String read2(SharedPreferences sharedPreferences, String str) {
        return sharedPreferences.contains(str) ? sharedPreferences.getString(str, "") : "";
    }

    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    public void write(SharedPreferences$Editor sharedPreferences$Editor) {
        String str = get();
        if (str != null) {
            sharedPreferences$Editor.putString(getName(), str);
        }
    }
}
