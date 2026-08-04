package com.sonyericsson.android.camera.util.capability;

import android.content.SharedPreferences;
import android.util.Range;

public class IntegerRangeCapabilityItem extends CapabilityItem<Range<Integer>> {
    IntegerRangeCapabilityItem(String str, Range<Integer> range) {
        super(str, range);
    }

    IntegerRangeCapabilityItem(String str, SharedPreferences sharedPreferences) {
        super(str, sharedPreferences);
    }
@Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    public Range<Integer> read(SharedPreferences sharedPreferences, String str) {
        if (sharedPreferences.contains(str)) {
            return SharedPrefsTranslator.getIntegerRange(sharedPreferences.getString(str, ""));
        }
        return new Range<>(0, 0);
    }

    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    public void write(SharedPreferences.Editor editor) {
        Range<Integer> range = get();
        if (range != null) {
            editor.putString(getName(), SharedPrefsTranslator.fromIntegerRange(range));
        }
    }

@Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    Range<Integer> getDefaultValue() {
        return new Range<>(0, 0);
    }
}
