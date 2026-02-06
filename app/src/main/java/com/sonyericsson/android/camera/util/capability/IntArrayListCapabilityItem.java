package com.sonyericsson.android.camera.util.capability;

import android.content.SharedPreferences;
import android.content.SharedPreferences$Editor;
import java.util.Collections;
import java.util.List;

public class IntArrayListCapabilityItem extends CapabilityItem<List<int[]>> {
    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    /* bridge */ /* synthetic */ List<int[]> getDefaultValue() {
        return getDefaultValue2();
    }

    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    public /* bridge */ /* synthetic */ List<int[]> read(SharedPreferences sharedPreferences, String str) {
        return read2(sharedPreferences, str);
    }

    IntArrayListCapabilityItem(String str, List<int[]> list) {
        super(str, list);
    }

    IntArrayListCapabilityItem(String str, SharedPreferences sharedPreferences) {
        super(str, sharedPreferences);
    }

    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    /* JADX INFO: renamed from: read, reason: avoid collision after fix types in other method */
    public List<int[]> read2(SharedPreferences sharedPreferences, String str) {
        if (sharedPreferences.contains(str)) {
            return SharedPrefsTranslator.getIntArrayList(sharedPreferences.getString(str, ""));
        }
        return Collections.emptyList();
    }

    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    public void write(SharedPreferences$Editor sharedPreferences$Editor) {
        List<int[]> list = get();
        if (list != null) {
            sharedPreferences$Editor.putString(getName(), SharedPrefsTranslator.fromIntArrayList(list));
        }
    }

    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    /* JADX INFO: renamed from: getDefaultValue, reason: avoid collision after fix types in other method */
    List<int[]> getDefaultValue2() {
        return Collections.emptyList();
    }
}
