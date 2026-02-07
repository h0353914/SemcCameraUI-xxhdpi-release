package com.sonyericsson.android.camera.view.setting.settingitem;

import android.content.res.Resources;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface SettingItem {
    boolean compareData(SettingItem settingItem);

    boolean compareData(Object obj);

    List<SettingItem> getChildren();

    String getContentDescription(Resources resources);

    int getDialogItemType();

    int getIconId();

    SettingItem$Selectability getSelectability();

    String getSubText(Resources resources);

    String getText(Resources resources);

    boolean isSelectable();

    boolean isSelected();

    boolean isSoundEnabled();

    void select();

    void setSelectability(SettingItem$Selectability settingItem$Selectability);

    void setSelected(boolean z);
}
