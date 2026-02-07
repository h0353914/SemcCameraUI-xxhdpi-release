package com.sonyericsson.android.camera.util.capability;

import android.content.SharedPreferences;
import android.content.SharedPreferences$Editor;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class StringListCapabilityItem extends CapabilityItem<List<String>> {
    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    /* bridge */ /* synthetic */ List<String> getDefaultValue() {
        return getDefaultValue2();
    }

    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    public /* bridge */ /* synthetic */ List<String> read(SharedPreferences sharedPreferences, String str) {
        return read2(sharedPreferences, str);
    }

    StringListCapabilityItem(String str, List<String> list) {
        super(str, list);
    }

    StringListCapabilityItem(String str, SharedPreferences sharedPreferences) {
        super(str, sharedPreferences);
    }

    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    /* JADX INFO: renamed from: read, reason: avoid collision after fix types in other method */
    public List<String> read2(SharedPreferences sharedPreferences, String str) {
        if (sharedPreferences.contains(str)) {
            return SharedPrefsTranslator.getStringList(sharedPreferences.getString(str, ""));
        }
        return Collections.emptyList();
    }

    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    public void write(SharedPreferences$Editor sharedPreferences$Editor) {
        List<String> list = get();
        if (list != null) {
            sharedPreferences$Editor.putString(getName(), SharedPrefsTranslator.fromStringList(list));
        }
    }

    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    /* JADX INFO: renamed from: getDefaultValue, reason: avoid collision after fix types in other method */
    List<String> getDefaultValue2() {
        return Collections.emptyList();
    }
}
