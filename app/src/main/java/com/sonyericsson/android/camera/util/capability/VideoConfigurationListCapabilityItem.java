package com.sonyericsson.android.camera.util.capability;

import android.content.SharedPreferences;
import android.content.SharedPreferences$Editor;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class VideoConfigurationListCapabilityItem extends CapabilityItem<List<VideoConfiguration>> {
    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    /* bridge */ /* synthetic */ List<VideoConfiguration> getDefaultValue() {
        return getDefaultValue2();
    }

    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    public /* bridge */ /* synthetic */ List<VideoConfiguration> read(SharedPreferences sharedPreferences, String str) {
        return read2(sharedPreferences, str);
    }

    VideoConfigurationListCapabilityItem(String str, List<VideoConfiguration> list) {
        super(str, list);
    }

    VideoConfigurationListCapabilityItem(String str, SharedPreferences sharedPreferences) {
        super(str, sharedPreferences);
    }

    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    /* JADX INFO: renamed from: read, reason: avoid collision after fix types in other method */
    public List<VideoConfiguration> read2(SharedPreferences sharedPreferences, String str) {
        if (sharedPreferences.contains(str)) {
            return SharedPrefsTranslator.getVideoConfigurationList(sharedPreferences.getString(str, ""));
        }
        return Collections.emptyList();
    }

    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    public void write(SharedPreferences$Editor sharedPreferences$Editor) {
        List<VideoConfiguration> list = get();
        if (list != null) {
            sharedPreferences$Editor.putString(getName(), SharedPrefsTranslator.fromVideoConfigurationList(list));
        }
    }

    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    /* JADX INFO: renamed from: getDefaultValue, reason: avoid collision after fix types in other method */
    List<VideoConfiguration> getDefaultValue2() {
        return Collections.emptyList();
    }
}
