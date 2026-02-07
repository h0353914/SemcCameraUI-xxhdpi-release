package com.sonyericsson.android.camera.view.setting.dialog;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.view.selectabledialog.AbsSelectableDialog$AnimationType;
import com.sonyericsson.android.camera.view.selectabledialog.AbsSelectableDialog$HorizontalGravity;
import com.sonyericsson.android.camera.view.selectabledialog.AbsSelectableDialog$Params;
import com.sonyericsson.android.camera.view.selectabledialog.AbsSelectableDialog$SelectableDialogType;
import com.sonyericsson.android.camera.view.selectabledialog.ModeSelector;
import com.sonyericsson.android.camera.view.selectabledialog.SettingMenu;

/* JADX INFO: loaded from: classes.dex */
public class SettingDialogFactory {
    public static ModeSelector createModeSelector(Context context, int i, int i2, boolean z) {
        AbsSelectableDialog$Params absSelectableDialog$Params = new AbsSelectableDialog$Params();
        absSelectableDialog$Params.itemWidth = dimen(context, 2131165443);
        absSelectableDialog$Params.itemHeight = dimen(context, 2131165442);
        absSelectableDialog$Params.maxHeightLandscape = i2;
        absSelectableDialog$Params.maxHeightPortrait = i;
        absSelectableDialog$Params.rightMarginLandscape = dimen(context, 2131165617);
        absSelectableDialog$Params.scrollBarDefaultDelayBeforeFade = context.getResources().getInteger(2131361798);
        absSelectableDialog$Params.panelBackgroundColor = context.getResources().getColor(2131099756);
        absSelectableDialog$Params.animationType = AbsSelectableDialog$AnimationType.SLIDER;
        absSelectableDialog$Params.horizontalGavity = AbsSelectableDialog$HorizontalGravity.RIGHT;
        return new ModeSelector(context, absSelectableDialog$Params, 80, z);
    }

    public static SettingMenu createMonochromeDialog(Context context, boolean z, int i, int i2) {
        AbsSelectableDialog$Params absSelectableDialog$Params = new AbsSelectableDialog$Params();
        absSelectableDialog$Params.itemWidth = dimen(context, 2131165585);
        absSelectableDialog$Params.itemHeight = dimen(context, 2131165586);
        absSelectableDialog$Params.maxHeightLandscape = i2;
        absSelectableDialog$Params.maxHeightPortrait = i;
        if (z) {
            absSelectableDialog$Params.panelBackgroundColor = context.getResources().getColor(2131099756);
        } else {
            absSelectableDialog$Params.panelBackgroundColor = context.getResources().getColor(2131099757);
        }
        absSelectableDialog$Params.animationType = AbsSelectableDialog$AnimationType.FADE;
        absSelectableDialog$Params.horizontalGavity = AbsSelectableDialog$HorizontalGravity.LEFT;
        return new SettingMenu(context, absSelectableDialog$Params, AbsSelectableDialog$SelectableDialogType.SETTING_MONOCHROME);
    }

    public static SettingMenu createSettingMenuDialog(Context context, int i, int i2, boolean z) {
        AbsSelectableDialog$Params absSelectableDialog$Params = new AbsSelectableDialog$Params();
        absSelectableDialog$Params.itemWidth = i2;
        absSelectableDialog$Params.itemHeight = dimen(context, 2131165586);
        absSelectableDialog$Params.maxHeightLandscape = i2;
        absSelectableDialog$Params.maxHeightPortrait = i;
        absSelectableDialog$Params.rightMarginLandscape = dimen(context, 2131165617);
        absSelectableDialog$Params.scrollBarDefaultDelayBeforeFade = context.getResources().getInteger(2131361798);
        absSelectableDialog$Params.panelBackgroundColor = context.getResources().getColor(2131099756);
        absSelectableDialog$Params.animationType = AbsSelectableDialog$AnimationType.SLIDER;
        absSelectableDialog$Params.horizontalGavity = AbsSelectableDialog$HorizontalGravity.RIGHT;
        return new SettingMenu(context, absSelectableDialog$Params, 80, z, AbsSelectableDialog$SelectableDialogType.SETTING_MENU);
    }

    public static SettingMenu createSecondLayerDialog(Context context, int i, int i2, boolean z) {
        AbsSelectableDialog$Params absSelectableDialog$Params = new AbsSelectableDialog$Params();
        absSelectableDialog$Params.itemWidth = dimen(context, 2131165585);
        absSelectableDialog$Params.itemHeight = dimen(context, 2131165586);
        absSelectableDialog$Params.maxHeightLandscape = i2 - dimen(context, 2131165591);
        absSelectableDialog$Params.maxHeightPortrait = i - dimen(context, 2131165292, 2131165591);
        absSelectableDialog$Params.panelBackgroundColor = context.getResources().getColor(2131099757);
        absSelectableDialog$Params.dropShadowSpace = dimen(context, 2131165610);
        absSelectableDialog$Params.animationType = AbsSelectableDialog$AnimationType.FADE;
        return new SettingMenu(context, absSelectableDialog$Params, 48, z, AbsSelectableDialog$SelectableDialogType.SETTING_SECOND_LAYER);
    }

    public static SettingMenu createSecondLayerDialogDetails(Context context, int i, int i2, boolean z) {
        AbsSelectableDialog$Params absSelectableDialog$Params = new AbsSelectableDialog$Params();
        absSelectableDialog$Params.itemWidth = dimen(context, 2131165585);
        absSelectableDialog$Params.itemHeight = dimen(context, 2131165612, 2131165611);
        absSelectableDialog$Params.maxHeightLandscape = i2 - dimen(context, 2131165591);
        absSelectableDialog$Params.maxHeightPortrait = i - dimen(context, 2131165292, 2131165591);
        absSelectableDialog$Params.panelBackgroundColor = context.getResources().getColor(2131099757);
        absSelectableDialog$Params.dropShadowSpace = dimen(context, 2131165610);
        absSelectableDialog$Params.animationType = AbsSelectableDialog$AnimationType.FADE;
        return new SettingMenu(context, absSelectableDialog$Params, 48, z, AbsSelectableDialog$SelectableDialogType.SETTING_SECOND_LAYER_DETAIL);
    }

    public static SettingMenu createShortcutDialog(Context context, UserSettingKey userSettingKey, int i, int i2) {
        AbsSelectableDialog$Params absSelectableDialog$Params = new AbsSelectableDialog$Params();
        absSelectableDialog$Params.itemWidth = dimen(context, 2131165585);
        absSelectableDialog$Params.itemHeight = dimen(context, 2131165586);
        absSelectableDialog$Params.maxHeightLandscape = i2;
        absSelectableDialog$Params.maxHeightPortrait = i;
        absSelectableDialog$Params.leftMarginLandscape = dimen(context, 2131165617, 2131165428);
        absSelectableDialog$Params.leftMarginPortrait = absSelectableDialog$Params.leftMarginLandscape;
        absSelectableDialog$Params.bottomMarginLandscape = dimen(context, 2131165617);
        absSelectableDialog$Params.bottomMarginPortrait = absSelectableDialog$Params.bottomMarginLandscape;
        absSelectableDialog$Params.scrollBarDefaultDelayBeforeFade = context.getResources().getInteger(2131361798);
        absSelectableDialog$Params.panelBackgroundColor = context.getResources().getColor(2131099756);
        absSelectableDialog$Params.animationType = AbsSelectableDialog$AnimationType.FADE;
        absSelectableDialog$Params.horizontalGavity = AbsSelectableDialog$HorizontalGravity.LEFT;
        switch (SettingDialogFactory$1.$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[userSettingKey.ordinal()]) {
            case 1:
            case 2:
            case 3:
                return new SettingMenu(context, absSelectableDialog$Params, AbsSelectableDialog$SelectableDialogType.SETTING_FLASH);
            case 4:
                return new SettingMenu(context, absSelectableDialog$Params, AbsSelectableDialog$SelectableDialogType.SETTING_SELFTIMER);
            case 5:
                return new SettingMenu(context, absSelectableDialog$Params, AbsSelectableDialog$SelectableDialogType.SETTING_ASPECT_RATIO);
            case 6:
                return new SettingMenu(context, absSelectableDialog$Params, AbsSelectableDialog$SelectableDialogType.SETTING_FUSION_MODE);
            case 7:
                return new SettingMenu(context, absSelectableDialog$Params, AbsSelectableDialog$SelectableDialogType.SETTING_VIDEO_HDR);
            case 8:
                return new SettingMenu(context, absSelectableDialog$Params, AbsSelectableDialog$SelectableDialogType.SETTING_HDR);
            default:
                return null;
        }
    }

    public static SettingMenu createSceneDialog(Context context, int i, int i2) {
        AbsSelectableDialog$Params absSelectableDialog$Params = new AbsSelectableDialog$Params();
        absSelectableDialog$Params.itemWidth = i2;
        absSelectableDialog$Params.itemHeight = dimen(context, 2131165586);
        absSelectableDialog$Params.maxHeightLandscape = i2;
        absSelectableDialog$Params.maxHeightPortrait = i - dimen(context, 2131165428, 2131165565);
        absSelectableDialog$Params.rightMarginLandscape = dimen(context, 2131165617);
        absSelectableDialog$Params.scrollBarDefaultDelayBeforeFade = context.getResources().getInteger(2131361798);
        absSelectableDialog$Params.panelBackgroundColor = context.getResources().getColor(2131099756);
        absSelectableDialog$Params.animationType = AbsSelectableDialog$AnimationType.FADE;
        absSelectableDialog$Params.horizontalGavity = AbsSelectableDialog$HorizontalGravity.RIGHT;
        return new SettingMenu(context, absSelectableDialog$Params, AbsSelectableDialog$SelectableDialogType.SETTING_SCENE);
    }

    private static View inflate(Context context, int i) {
        return ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(i, (ViewGroup) null);
    }

    private static int dimen(Context context, int... iArr) {
        int dimensionPixelSize = 0;
        for (int i : iArr) {
            dimensionPixelSize += context.getResources().getDimensionPixelSize(i);
        }
        return dimensionPixelSize;
    }
}
