package com.sonyericsson.android.camera.view.overlaycontrol.imagequality;

import android.content.Context;
import com.sonyericsson.android.camera.configuration.parameters.Ev;
import com.sonyericsson.android.camera.view.setting.settingitem.SettingItem;

class EvSlider extends SettingItemSlider {
    @Override // com.sonyericsson.android.camera.view.overlaycontrol.imagequality.SettingItemSlider
    protected int getBackgroundImageResource(int i) {
        return i == 2 ? 2131231060 : 2131231061;
    }

    @Override // com.sonyericsson.android.camera.view.overlaycontrol.imagequality.SettingItemSlider
    protected String getMaxValue() {
        return null;
    }

    @Override // com.sonyericsson.android.camera.view.overlaycontrol.imagequality.SettingItemSlider
    protected String getMinValue() {
        return null;
    }

    public EvSlider(Context context, SettingItem settingItem, OnSlideListener onSlideListener) {
        super(context, settingItem, false, false, onSlideListener);
    }

    @Override // com.sonyericsson.android.camera.view.overlaycontrol.imagequality.SettingItemSlider
    protected int getDefaultSettingItemPosition() {
        return (getItem().getChildren().size() - 1) - Ev.ZERO.ordinal();
    }
}
