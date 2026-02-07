package com.sonyericsson.android.camera.view.overlaycontrol;

import com.sonyericsson.android.camera.configuration.parameters.UserSettingValue;
import com.sonyericsson.android.camera.view.setting.executor.SettingExecutorInterface;
import com.sonyericsson.android.camera.view.setting.settingitem.TypedSettingItem;

/* JADX INFO: loaded from: classes.dex */
class ImageQualityControl$2 implements SettingExecutorInterface<UserSettingValue> {
    final /* synthetic */ ImageQualityControl this$0;

    ImageQualityControl$2(ImageQualityControl imageQualityControl) {
        this.this$0 = imageQualityControl;
    }

    @Override // com.sonyericsson.android.camera.view.setting.executor.SettingExecutorInterface
    public void onExecute(TypedSettingItem<UserSettingValue> typedSettingItem) {
        ImageQualityControl.access$400(this.this$0, typedSettingItem.getData());
        ImageQualityControl.access$300(this.this$0, ImageQualityControl.access$500(this.this$0));
    }
}
