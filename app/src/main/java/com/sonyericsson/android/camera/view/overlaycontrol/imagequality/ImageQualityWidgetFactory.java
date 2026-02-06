package com.sonyericsson.android.camera.view.overlaycontrol.imagequality;

import android.content.Context;
import android.view.ViewGroup;
import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.device.CameraInfo$CameraId;
import com.sonyericsson.android.camera.view.setting.dialogitem.SettingDialogItem;
import com.sonyericsson.android.camera.view.setting.dialogitem.SettingDialogItemFactory;
import com.sonyericsson.android.camera.view.setting.settingitem.SettingItem;
import com.sonyericsson.android.camera.view.setting.settingitem.TypedSettingItem;

public class ImageQualityWidgetFactory extends SettingDialogItemFactory {
    private CameraInfo$CameraId mCameraId;
    private final OnSlideListener mListener;

    public ImageQualityWidgetFactory(OnSlideListener onSlideListener, CameraInfo$CameraId cameraInfo$CameraId) {
        this.mListener = onSlideListener;
        this.mCameraId = cameraInfo$CameraId;
    }

    @Override // com.sonyericsson.android.camera.view.setting.dialogitem.SettingDialogItemFactory
    public SettingDialogItem create(SettingItem settingItem, ViewGroup viewGroup, boolean z) {
        Context context = viewGroup.getContext();
        UserSettingKey userSettingKey = (UserSettingKey) ((TypedSettingItem) settingItem).getData();
        switch (ImageQualityWidgetFactory$1.$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[userSettingKey.ordinal()]) {
            case 1:
                return new EvSlider(context, settingItem, this.mListener);
            case 2:
                return new ShutterSpeedSlider(context, settingItem, this.mListener);
            case 3:
                return new FocusRangeSlider(context, settingItem, this.mListener, this.mCameraId);
            case 4:
                return new IsoSlider(context, settingItem, this.mListener);
            case 5:
                return new WbList(context, settingItem);
            default:
                throw new IllegalArgumentException("ImageQualityWidgetFactory#create() The UserSettingKey is unknown. key:" + userSettingKey);
        }
    }
}
