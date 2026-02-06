package com.sonyericsson.android.camera.view;

import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.util.HelpGuide;
import com.sonyericsson.android.camera.view.messagedialog.DialogId;

class ViewFinderImpl$ActionRunnable implements Runnable {
    private UserSettingKey mUserSettingKey;
    final /* synthetic */ ViewFinderImpl this$0;

    public ViewFinderImpl$ActionRunnable(ViewFinderImpl viewFinderImpl, UserSettingKey userSettingKey) {
        this.this$0 = viewFinderImpl;
        this.mUserSettingKey = userSettingKey;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (ViewFinderImpl.access$1000(this.this$0).isMenuAvailable()) {
            if (this.mUserSettingKey != null) {
                switch (this.mUserSettingKey) {
                    case SIDE_SENSE:
                    case GEO_TAG:
                    case DESTINATION_TO_SAVE:
                        ViewFinderImpl.access$3400(this.this$0, this.mUserSettingKey);
                        break;
                    case HELP_GUIDE:
                        if (HelpGuide.isHelpAppAvailable(ViewFinderImpl.access$500(this.this$0))) {
                            HelpGuide.startHelpApp(ViewFinderImpl.access$500(this.this$0));
                        } else {
                            HelpGuide.startOnlineHelp(ViewFinderImpl.access$500(this.this$0));
                        }
                        ViewFinderImpl.access$500(this.this$0).getLaunchCondition().clearExtraOperation();
                        break;
                    case RESET_SETTINGS:
                        this.this$0.showMessageDialog(DialogId.RESET_CONFIRMATION, new Object[0]);
                        break;
                    default:
                        ViewFinderImpl.access$3400(this.this$0, null);
                        break;
                }
            }
            ViewFinderImpl.access$3400(this.this$0, null);
        }
    }
}
