package com.sonyericsson.android.camera.view.setting;

import android.content.Context;
import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.util.HelpGuide;
import com.sonyericsson.android.camera.util.SettingUtil;
import com.sonyericsson.android.camera.view.messagedialog.DialogId;
import com.sonyericsson.android.camera.view.setting.executor.SettingExecutorInterface;
import com.sonyericsson.android.camera.view.setting.settingitem.TypedSettingItem;
import com.sonyericsson.cameracommon.storage.Storage;
import com.sonymobile.cameracommon.research.ResearchUtil;

class SettingUi$1 implements SettingExecutorInterface<UserSettingKey> {
    final /* synthetic */ SettingUi this$0;
    final /* synthetic */ Context val$context;
    final /* synthetic */ UserSettingKey val$key;
    final /* synthetic */ Storage val$storage;

    SettingUi$1(SettingUi settingUi, UserSettingKey userSettingKey, Context context, Storage storage) {
        this.this$0 = settingUi;
        this.val$key = userSettingKey;
        this.val$context = context;
        this.val$storage = storage;
    }

    @Override // com.sonyericsson.android.camera.view.setting.executor.SettingExecutorInterface
    public void onExecute(TypedSettingItem<UserSettingKey> typedSettingItem) {
        if (this.val$key == UserSettingKey.HELP_GUIDE) {
            if (SettingUi.access$1100(this.this$0)) {
                SettingUi.access$400(this.this$0).showMessageDialog(DialogId.UNLOCK_REQUEST_FOR_OPENING_OPTION_MENU, this.val$key.name());
                return;
            }
            if (HelpGuide.isHelpAppAvailable(this.val$context)) {
                HelpGuide.startHelpApp(this.val$context);
            } else {
                HelpGuide.startOnlineHelp(this.val$context);
            }
            ResearchUtil.getInstance().sendSettingsCommon(typedSettingItem.getData().toString());
            return;
        }
        if (this.val$key == UserSettingKey.RESET_SETTINGS) {
            if (SettingUi.access$1100(this.this$0)) {
                SettingUi.access$400(this.this$0).showMessageDialog(DialogId.UNLOCK_REQUEST_FOR_OPENING_OPTION_MENU, this.val$key.name());
                return;
            } else {
                SettingUi.access$600(this.this$0).closeCurrentDialog();
                SettingUi.access$400(this.this$0).showMessageDialog(DialogId.RESET_CONFIRMATION, new Object[0]);
                return;
            }
        }
        if (SettingUi.access$1100(this.this$0) && (this.val$key == UserSettingKey.DESTINATION_TO_SAVE || this.val$key == UserSettingKey.GEO_TAG || (!SettingUtil.isSideSenseEnabled(true) && this.val$key == UserSettingKey.SIDE_SENSE))) {
            SettingUi.access$400(this.this$0).showMessageDialog(DialogId.UNLOCK_REQUEST_FOR_OPENING_OPTION_MENU, this.val$key.name());
        } else {
            SettingUi.access$1300(this.this$0, SettingUi.access$1200(this.this$0, typedSettingItem.getData(), this.val$storage), this.val$key);
        }
    }
}
