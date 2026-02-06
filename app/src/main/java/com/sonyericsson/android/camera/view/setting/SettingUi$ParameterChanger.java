package com.sonyericsson.android.camera.view.setting;

import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.DestinationToSave;
import com.sonyericsson.android.camera.configuration.parameters.Geotag;
import com.sonyericsson.android.camera.configuration.parameters.ShutterSound;
import com.sonyericsson.android.camera.configuration.parameters.TouchCapture;
import com.sonyericsson.android.camera.configuration.parameters.UserSettingValue;
import com.sonyericsson.android.camera.configuration.parameters.VideoCodec;
import com.sonyericsson.android.camera.configuration.parameters.VideoHdr;
import com.sonyericsson.android.camera.configuration.parameters.VideoSize;
import com.sonyericsson.android.camera.research.LocalResearchUtil;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.SettingUtil;
import com.sonyericsson.android.camera.view.ViewFinder$ViewUpdateEvent;
import com.sonyericsson.android.camera.view.messagedialog.DialogId;
import com.sonyericsson.android.camera.view.setting.executor.SettingChangerInterface;
import com.sonyericsson.android.camera.view.setting.settingitem.TypedSettingItem;
import com.sonyericsson.cameracommon.storage.Storage$StorageState;
import com.sonyericsson.cameracommon.storage.Storage$StorageType;
import com.sonyericsson.cameracommon.utility.RegionConfig;
import com.sonymobile.cameracommon.research.ResearchUtil;

class SettingUi$ParameterChanger implements SettingChangerInterface<UserSettingValue> {
    final /* synthetic */ SettingUi this$0;

    private SettingUi$ParameterChanger(SettingUi settingUi) {
        this.this$0 = settingUi;
    }

    /* synthetic */ SettingUi$ParameterChanger(SettingUi settingUi, SettingUi$1 settingUi$1) {
        this(settingUi);
    }

    @Override // com.sonyericsson.android.camera.view.setting.executor.SettingChangerInterface
    public void changeValue(TypedSettingItem<UserSettingValue> typedSettingItem) {
        UserSettingValue userSettingValue = SettingUi.access$200(this.this$0).get(typedSettingItem.getData().getKey());
        UserSettingValue data = typedSettingItem.getData();
        if (userSettingValue == data) {
            return;
        }
        UserSettingKey key = data.getKey();
        if (CamLog.VERBOSE) {
            CamLog.d("ParameterChanger#changeValue() Key : " + key + " value : " + data);
        }
        if (UserSettingKey.DESTINATION_TO_SAVE.equals(key) && userSettingValue == DestinationToSave.EMMC && data == DestinationToSave.SDCARD && Storage$StorageState.UNGRANTED == SettingUi.access$300(this.this$0).getStorage().getCurrentState(Storage$StorageType.EXTERNAL_CARD)) {
            SettingUi.access$400(this.this$0).showMessageDialog(DialogId.REQUEST_SD_CARD_PERMISSION, new Object[0]);
            return;
        }
        SettingUi.access$200(this.this$0).set(data);
        CapturingMode capturingMode = (CapturingMode) SettingUi.access$200(this.this$0).get(UserSettingKey.CAPTURING_MODE);
        switch (key) {
            case VIDEO_HDR:
                if (userSettingValue == VideoHdr.HDR_ON && data == VideoHdr.HDR_OFF) {
                    SettingUi.access$500(this.this$0);
                }
                break;
            case VIDEO_SIZE:
                VideoSize videoSize = (VideoSize) userSettingValue;
                if (((VideoSize) data).is4KVideo() && !videoSize.is4KVideo()) {
                    SettingUi.access$400(this.this$0).showMessageDialog(DialogId.THERMAL_NOTE, new Object[0]);
                }
                break;
            case SIDE_SENSE:
                if (!SettingUtil.isSideSenseEnabled(true)) {
                    SettingUi.access$600(this.this$0).closeCurrentDialog();
                    SettingUi.access$400(this.this$0).showMessageDialog(DialogId.SIDE_SENSE_DISABLE_ON_CONTEXTUAL_SETTINGS, new Object[0]);
                }
                break;
            case GRID_LINE:
                SettingUi.access$400(this.this$0).sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_REQUEST_UPDATE_GRID_LINE, new Object[0]);
                break;
            case SHUTTER_SOUND:
                if (data != ShutterSound.OFF) {
                    SettingUi.access$700(this.this$0).playShutterSound(capturingMode.getType());
                }
                break;
            case GEO_TAG:
                if (data == Geotag.ON && RegionConfig.isChinaRegion(SettingUi.access$300(this.this$0))) {
                    SettingUi.access$600(this.this$0).closeAllSettingDialogs();
                }
                if (!SettingUi.access$300(this.this$0).getGeoTagManager().setGeotag((Geotag) data, SettingUi.access$300(this.this$0), SettingUi.access$400(this.this$0))) {
                    SettingUi.access$600(this.this$0).closeCurrentDialog();
                    SettingUi.access$400(this.this$0).showMessageDialog(DialogId.LOCATION_SERVICE_DISABLE_ON_CONTEXTUAL_SETTINGS, new Object[0]);
                }
                break;
            case DESTINATION_TO_SAVE:
                if (userSettingValue == DestinationToSave.EMMC) {
                    SettingUi.access$400(this.this$0).showHiSpeedSdCardRecommendDialogOnDestinationChange();
                }
                Storage$StorageType type = ((DestinationToSave) data).getType();
                SettingUi.access$400(this.this$0).notifyStorageStateChanged(type, SettingUi.access$300(this.this$0).getStorage().getCurrentState(type), false, false);
                break;
            case TOUCH_CAPTURE:
                SettingUi.access$800(this.this$0, (TouchCapture) data);
                break;
            case VIDEO_CODEC:
                VideoSize videoSize2 = (VideoSize) SettingUi.access$200(this.this$0).get(UserSettingKey.VIDEO_SIZE);
                if (data == VideoCodec.H264) {
                    if (videoSize2 == VideoSize.FOUR_K_UHD_H265) {
                        SettingUi.access$200(this.this$0).set(VideoSize.FOUR_K_UHD_H264);
                    }
                } else if (data == VideoCodec.H265 && videoSize2 == VideoSize.FOUR_K_UHD_H264) {
                    SettingUi.access$200(this.this$0).set(VideoSize.FOUR_K_UHD_H265);
                }
                break;
        }
        this.this$0.updateSettingMenu(false);
        ResearchUtil.getInstance().sendSettingsCommon(typedSettingItem.getData());
        LocalResearchUtil.getInstance().setSettingsValue(userSettingValue, typedSettingItem.getData(), capturingMode);
    }
}
