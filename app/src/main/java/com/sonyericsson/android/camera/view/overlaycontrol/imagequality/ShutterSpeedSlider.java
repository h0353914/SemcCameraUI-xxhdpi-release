package com.sonyericsson.android.camera.view.overlaycontrol.imagequality;

import android.content.Context;
import com.sonyericsson.android.camera.configuration.parameters.ShutterSpeed;
import com.sonyericsson.android.camera.view.setting.settingitem.SettingItem;

/* JADX INFO: loaded from: classes.dex */
class ShutterSpeedSlider extends SettingItemSlider {
    @Override // com.sonyericsson.android.camera.view.overlaycontrol.imagequality.SettingItemSlider
    protected int getBackgroundImageResource(int i) {
        return i == 2 ? 2131231068 : 2131231069;
    }

    @Override // com.sonyericsson.android.camera.view.overlaycontrol.imagequality.SettingItemSlider
    protected String getMaxValue() {
        return null;
    }

    @Override // com.sonyericsson.android.camera.view.overlaycontrol.imagequality.SettingItemSlider
    protected String getMinValue() {
        return null;
    }

    public ShutterSpeedSlider(Context context, SettingItem settingItem, OnSlideListener onSlideListener) {
        super(context, settingItem, true, false, onSlideListener);
    }

    @Override // com.sonyericsson.android.camera.view.overlaycontrol.imagequality.SettingItemSlider
    protected int getDefaultSettingItemPosition() {
        return (getItem().getChildren().size() - 1) - ShutterSpeed.getIndexOfDefault();
    }
}
