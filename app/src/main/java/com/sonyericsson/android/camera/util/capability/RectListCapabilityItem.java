package com.sonyericsson.android.camera.util.capability;

import android.content.SharedPreferences;
import android.content.SharedPreferences$Editor;
import android.graphics.Rect;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class RectListCapabilityItem extends CapabilityItem<List<Rect>> {
    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    /* bridge */ /* synthetic */ List<Rect> getDefaultValue() {
        return getDefaultValue2();
    }

    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    public /* bridge */ /* synthetic */ List<Rect> read(SharedPreferences sharedPreferences, String str) {
        return read2(sharedPreferences, str);
    }

    RectListCapabilityItem(String str, List<Rect> list) {
        super(str, list);
    }

    RectListCapabilityItem(String str, SharedPreferences sharedPreferences) {
        super(str, sharedPreferences);
    }

    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    /* JADX INFO: renamed from: read, reason: avoid collision after fix types in other method */
    public List<Rect> read2(SharedPreferences sharedPreferences, String str) {
        if (sharedPreferences.contains(str)) {
            return SharedPrefsTranslator.getRectList(sharedPreferences.getString(str, ""));
        }
        return Collections.emptyList();
    }

    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    public void write(SharedPreferences$Editor sharedPreferences$Editor) {
        List<Rect> list = get();
        if (list != null) {
            sharedPreferences$Editor.putString(getName(), SharedPrefsTranslator.fromRectList(list));
        }
    }

    @Override // com.sonyericsson.android.camera.util.capability.CapabilityItem
    /* JADX INFO: renamed from: getDefaultValue, reason: avoid collision after fix types in other method */
    List<Rect> getDefaultValue2() {
        return Collections.emptyList();
    }
}
