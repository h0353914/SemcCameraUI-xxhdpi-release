package com.sonyericsson.android.camera.view;

import com.sonyericsson.android.camera.CameraApplication;
import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.controller.StateMachine$TransitterEvent;

public class ViewFinderImpl$ViewFinderAccessorForShortcut {
    final /* synthetic */ ViewFinderImpl this$0;

    public ViewFinderImpl$ViewFinderAccessorForShortcut(ViewFinderImpl viewFinderImpl) {
        this.this$0 = viewFinderImpl;
    }

    public boolean isShortcutButtonClickable() {
        return ViewFinderImpl.access$400(this.this$0) && !this.this$0.isTutorialOpened() && this.this$0.isUserOperable();
    }

    public void switchCamera() {
        ViewFinderImpl.access$9900(this.this$0, false);
        this.this$0.hideAutoReview();
        this.this$0.setIsCameraSwitching(true);
        this.this$0.hideSurface();
        CameraApplication.getUiThreadHandler().post(new ViewFinderImpl$ViewFinderAccessorForShortcut$1(this));
    }

    public void openShorcutDialog(ViewFinder$UiComponentKind viewFinder$UiComponentKind) {
        ViewFinderImpl.access$1000(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_DIALOG_OPENED, viewFinder$UiComponentKind);
    }

    public void openSettingMenuDialog() {
        ViewFinderImpl.access$1000(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_KEY_MENU, new Object[0]);
    }

    public void showRestrictMessageDialog(UserSettingKey userSettingKey) {
        this.this$0.showMessageDialog(userSettingKey.getRestrictMessageDialogId(ViewFinderImpl.access$1000(this.this$0).getUserSetting()), new Object[0]);
    }

    public void switchSemiAutoAvailability() {
        this.this$0.switchSemiAutoAvailability();
    }
}
