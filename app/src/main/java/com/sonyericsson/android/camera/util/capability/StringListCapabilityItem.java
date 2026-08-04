package com.sonyericsson.android.camera.util.capability;

import android.content.SharedPreferences;
import java.util.Collections;
import java.util.List;

public class StringListCapabilityItem extends CapabilityItem<List<String>> {
    StringListCapabilityItem(String str, List<String> list) {
        super(str, list);
    }

    StringListCapabilityItem(String str, SharedPreferences sharedPreferences) {
        super(str, sharedPreferences);
    }

    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    public List<String> read(SharedPreferences sharedPreferences, String str) {
        if (sharedPreferences.contains(str)) {
            return SharedPrefsTranslator.getStringList(sharedPreferences.getString(str, ""));
        }
        return Collections.emptyList();
    }

    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    public void write(SharedPreferences.Editor editor) {
        List<String> list = get();
        if (list != null) {
            editor.putString(getName(), SharedPrefsTranslator.fromStringList(list));
        }
    }

    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    List<String> getDefaultValue() {
        return Collections.emptyList();
    }
}
