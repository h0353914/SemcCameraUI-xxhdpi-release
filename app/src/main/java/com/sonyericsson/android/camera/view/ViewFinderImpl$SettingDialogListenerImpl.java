package com.sonyericsson.android.camera.view;

import com.sonyericsson.android.camera.controller.StateMachine$TransitterEvent;
import com.sonyericsson.android.camera.view.setting.dialog.SettingDialogListener;

class ViewFinderImpl$SettingDialogListenerImpl implements SettingDialogListener {
    final /* synthetic */ ViewFinderImpl this$0;

    private ViewFinderImpl$SettingDialogListenerImpl(ViewFinderImpl viewFinderImpl) {
        this.this$0 = viewFinderImpl;
    }

    /* synthetic */ ViewFinderImpl$SettingDialogListenerImpl(ViewFinderImpl viewFinderImpl, ViewFinderImpl$1 viewFinderImpl$1) {
        this(viewFinderImpl);
    }

    @Override // com.sonyericsson.android.camera.view.setting.dialog.SettingDialogListener
    public void onOpenSettingDialog(Object obj) {
        ViewFinderImpl.access$1000(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_DIALOG_OPENED, new Object[0]);
    }

    @Override // com.sonyericsson.android.camera.view.setting.dialog.SettingDialogListener
    public void onCloseSettingDialog(Object obj) {
        if (!ViewFinderImpl.access$3100(this.this$0) || this.this$0.isTutorialOpened()) {
            return;
        }
        ViewFinderImpl.access$1000(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_DIALOG_CLOSED, new Object[0]);
    }
}
