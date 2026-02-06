package com.sonyericsson.android.camera.util.capability;

import android.content.SharedPreferences;
import android.content.SharedPreferences$Editor;
import android.util.Range;

public class IntegerRangeCapabilityItem extends CapabilityItem<Range<Integer>> {
    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    /* bridge */ /* synthetic */ Range<Integer> getDefaultValue() {
        return getDefaultValue();
    }

    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    public /* bridge */ /* synthetic */ Range<Integer> read(SharedPreferences sharedPreferences, String str) {
        return read(sharedPreferences, str);
    }

    IntegerRangeCapabilityItem(String str, Range<Integer> range) {
        super(str, range);
    }

    IntegerRangeCapabilityItem(String str, SharedPreferences sharedPreferences) {
        super(str, sharedPreferences);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    public Range<Integer> read(SharedPreferences sharedPreferences, String str) {
        if (sharedPreferences.contains(str)) {
            return SharedPrefsTranslator.getIntegerRange(sharedPreferences.getString(str, ""));
        }
        return new Range<>(0, 0);
    }

    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    public void write(SharedPreferences$Editor sharedPreferences$Editor) {
        Range<Integer> range = get();
        if (range != null) {
            sharedPreferences$Editor.putString(getName(), SharedPrefsTranslator.fromIntegerRange(range));
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    Range<Integer> getDefaultValue() {
        return new Range<>(0, 0);
    }
}
