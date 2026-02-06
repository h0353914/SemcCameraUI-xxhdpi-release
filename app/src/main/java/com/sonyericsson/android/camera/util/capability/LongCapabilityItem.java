package com.sonyericsson.android.camera.util.capability;

import android.content.SharedPreferences;
import android.content.SharedPreferences$Editor;

public class LongCapabilityItem extends CapabilityItem<Long> {
    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    /* bridge */ /* synthetic */ Long getDefaultValue() {
        return getDefaultValue();
    }

    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    public /* bridge */ /* synthetic */ Long read(SharedPreferences sharedPreferences, String str) {
        return read(sharedPreferences, str);
    }

    LongCapabilityItem(String str, Long l) {
        super(str, l);
    }

    LongCapabilityItem(String str, SharedPreferences sharedPreferences) {
        super(str, sharedPreferences);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    public Long read(SharedPreferences sharedPreferences, String str) {
        if (sharedPreferences.contains(str)) {
            return Long.valueOf(sharedPreferences.getLong(str, 0L));
        }
        return 0L;
    }

    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    public void write(SharedPreferences$Editor sharedPreferences$Editor) {
        Long l = get();
        if (l != null) {
            sharedPreferences$Editor.putLong(getName(), l.longValue());
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    Long getDefaultValue() {
        return 0L;
    }
}
