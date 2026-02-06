package com.sonyericsson.android.camera.view.setting.dialogitem;

import android.view.View;
import android.view.ViewGroup;
import com.sonyericsson.android.camera.view.setting.dialog.SettingAdapter$ItemLayoutParams;
import com.sonyericsson.android.camera.view.setting.settingitem.SettingItem;

public abstract class SettingDialogItem {
    private SettingItem mItem;

    public abstract View getView();

    public void refresh() {
    }

    public void reset() {
    }

    public void setClickable(boolean z) {
    }

    public void setUiOrientation(int i) {
    }

    public abstract void update(ViewGroup viewGroup, SettingAdapter$ItemLayoutParams settingAdapter$ItemLayoutParams);

    public SettingDialogItem(SettingItem settingItem) {
        this.mItem = settingItem;
    }

    public void setItem(SettingItem settingItem) {
        this.mItem = settingItem;
    }

    public SettingItem getItem() {
        return this.mItem;
    }

    public void select(SettingItem settingItem) {
        settingItem.select();
    }

    protected DrawableStateChanger changeDrawableState(SettingAdapter$ItemLayoutParams settingAdapter$ItemLayoutParams) {
        return new DrawableStateChanger(settingAdapter$ItemLayoutParams);
    }
}
