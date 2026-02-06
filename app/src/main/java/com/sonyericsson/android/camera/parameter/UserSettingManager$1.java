package com.sonyericsson.android.camera.parameter;

import com.sonyericsson.android.camera.setting.UserSettingsLoader$OnLoadCompletedListener;
import com.sonyericsson.android.camera.util.CamLog;

class UserSettingManager$1 implements UserSettingsLoader$OnLoadCompletedListener {
    final /* synthetic */ UserSettingManager this$0;

    UserSettingManager$1(UserSettingManager userSettingManager) {
        this.this$0 = userSettingManager;
    }

    @Override // com.sonyericsson.android.camera.setting.UserSettingsLoader$OnLoadCompletedListener
    public void onLoadCompleted() {
        if (CamLog.VERBOSE) {
            CamLog.d("all user settings load completed");
        }
    }
}
