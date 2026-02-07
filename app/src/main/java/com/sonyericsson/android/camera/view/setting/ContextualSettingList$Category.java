package com.sonyericsson.android.camera.view.setting;

import com.sonyericsson.android.camera.configuration.UserSettingKey;

/* JADX INFO: loaded from: classes.dex */
public class ContextualSettingList$Category {
    public final UserSettingKey[] keys;
    public final int titleResource;

    public ContextualSettingList$Category(int i, UserSettingKey... userSettingKeyArr) {
        this.titleResource = i;
        this.keys = userSettingKeyArr;
    }
}
