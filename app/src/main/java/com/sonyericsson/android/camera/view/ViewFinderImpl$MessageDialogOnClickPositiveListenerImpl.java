package com.sonyericsson.android.camera.view;

import android.content.Intent;
import android.os.Bundle;
import com.sonyericsson.android.camera.LaunchCondition$ExtraOperation;
import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.parameters.Geotag;
import com.sonyericsson.android.camera.view.messagedialog.MessageDialogController$MessageDialogOnClickListener;
import com.sonyericsson.android.camera.view.messagedialog.MessageDialogRequest;
import com.sonyericsson.android.camera.view.modeselector.Mode;
import com.sonyericsson.cameracommon.storage.Storage$StorageType;
import com.sonyericsson.cameracommon.storage.StorageUtil;
import com.sonyericsson.cameracommon.utility.PermissionsUtil;

public class ViewFinderImpl$MessageDialogOnClickPositiveListenerImpl implements MessageDialogController$MessageDialogOnClickListener {
    final /* synthetic */ ViewFinderImpl this$0;

    public ViewFinderImpl$MessageDialogOnClickPositiveListenerImpl(ViewFinderImpl viewFinderImpl) {
        this.this$0 = viewFinderImpl;
    }

    @Override // com.sonyericsson.android.camera.view.messagedialog.MessageDialogController$MessageDialogOnClickListener
    public void onClick(MessageDialogRequest messageDialogRequest) {
        switch (ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId[messageDialogRequest.mDialogId.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 9:
                ViewFinderImpl.access$3400(this.this$0, UserSettingKey.DESTINATION_TO_SAVE);
                break;
            case 5:
                Object[] objArr = messageDialogRequest.mOptions;
                if (objArr != null) {
                    ViewFinderImpl.access$500(this.this$0).requestLaunchAdvancedCamera(LaunchCondition$ExtraOperation.OPEN_SETTINGS_MENU, (String) objArr[0]);
                } else {
                    ViewFinderImpl.access$500(this.this$0).requestLaunchAdvancedCamera(LaunchCondition$ExtraOperation.OPEN_SETTINGS_MENU, null);
                }
                break;
            case 6:
                ViewFinderImpl.access$8300(this.this$0);
                break;
            case 7:
            case 8:
                ViewFinderImpl.access$1000(this.this$0).getUserSetting().set(Geotag.ON);
                ViewFinderImpl.access$8400(this.this$0);
                break;
            case 10:
                Intent intent = (Intent) messageDialogRequest.mOptions[0];
                Bundle bundle = (Bundle) messageDialogRequest.mOptions[1];
                this.this$0.sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_REQUEST_UPDATE_MRU_SHORTCUT, (Mode) messageDialogRequest.mOptions[2]);
                ViewFinderImpl.access$8500(this.this$0, intent, bundle);
                break;
            case 11:
                ViewFinderImpl.access$3400(this.this$0, UserSettingKey.DESTINATION_TO_SAVE);
                ViewFinderImpl.access$800(this.this$0).updateSettingMenu(false);
                break;
            case 12:
                ViewFinderImpl.access$8600(this.this$0);
                break;
            case 13:
                ViewFinderImpl.access$500(this.this$0).requestRestartCameraActivityAfterResetSettings();
                break;
            case 14:
            case 15:
                PermissionsUtil.requestSdCardGranted(ViewFinderImpl.access$500(this.this$0), 20, StorageUtil.getVolumeUuid(Storage$StorageType.EXTERNAL_CARD, ViewFinderImpl.access$500(this.this$0).getApplicationContext()));
                break;
        }
    }
}
