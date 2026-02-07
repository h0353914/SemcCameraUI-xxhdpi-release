package com.sonyericsson.android.camera.view.setting.dialog;

import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public interface SettingDialogInterface {
    void close();

    boolean hitTest(int i, int i2);

    void open(ViewGroup viewGroup);

    void setEnabled(boolean z);

    void setSensorOrientation(int i);
}
