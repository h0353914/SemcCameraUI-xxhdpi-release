package com.sonyericsson.android.camera.view;

import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.parameters.UserSettingValue;
import com.sonyericsson.android.camera.setting.UserSettings;
import com.sonyericsson.android.camera.view.overlaycontrol.EnumValueAccessor;

/* JADX INFO: loaded from: classes.dex */
class ViewFinderImpl$EnumValueAccessorImpl<T extends UserSettingValue> implements EnumValueAccessor<T> {
    private final UserSettingKey mKey;
    private final UserSettings mSettings;

    @Override // com.sonyericsson.android.camera.view.overlaycontrol.ValueAccessor
    public T reset() {
        return null;
    }

    /* synthetic */ ViewFinderImpl$EnumValueAccessorImpl(UserSettings userSettings, UserSettingKey userSettingKey, ViewFinderImpl$1 viewFinderImpl$1) {
        this(userSettings, userSettingKey);
    }

    @Override // com.sonyericsson.android.camera.view.overlaycontrol.ValueAccessor
    public /* bridge */ /* synthetic */ Object get() {
        return get();
    }

    @Override // com.sonyericsson.android.camera.view.overlaycontrol.ValueAccessor
    public /* bridge */ /* synthetic */ Object reset() {
        return reset();
    }

    @Override // com.sonyericsson.android.camera.view.overlaycontrol.ValueAccessor
    public /* bridge */ /* synthetic */ void set(Object obj) {
        set((UserSettingValue) obj);
    }

    @Override // com.sonyericsson.android.camera.view.overlaycontrol.EnumValueAccessor
    public /* bridge */ /* synthetic */ Object[] values() {
        return values();
    }

    private ViewFinderImpl$EnumValueAccessorImpl(UserSettings userSettings, UserSettingKey userSettingKey) {
        this.mSettings = userSettings;
        this.mKey = userSettingKey;
    }

    @Override // com.sonyericsson.android.camera.view.overlaycontrol.ValueAccessor
    public T get() {
        return (T) this.mSettings.get(this.mKey);
    }

    public void set(T t) {
        this.mSettings.set(t);
    }

    @Override // com.sonyericsson.android.camera.view.overlaycontrol.EnumValueAccessor
    public T[] values() {
        return (T[]) this.mSettings.getOptions(this.mKey);
    }
}
