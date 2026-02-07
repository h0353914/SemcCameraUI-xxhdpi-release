package com.sonyericsson.android.camera;

import com.sonyericsson.android.camera.configuration.parameters.UserSettingValue;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class ExternalCameraAppSetting$ItemsBuilder {
    public final Map<Object, UserSettingValue> entries;

    private ExternalCameraAppSetting$ItemsBuilder() {
        this.entries = new HashMap();
    }

    /* synthetic */ ExternalCameraAppSetting$ItemsBuilder(ExternalCameraAppSetting$1 externalCameraAppSetting$1) {
        this();
    }

    public ExternalCameraAppSetting$ItemsBuilder add(Object obj, UserSettingValue userSettingValue) {
        this.entries.put(obj, userSettingValue);
        return this;
    }
}
