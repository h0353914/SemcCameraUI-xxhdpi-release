package com.sonyericsson.android.camera.view;

import com.sonyericsson.android.camera.LaunchCondition$ExtraOperation;
import com.sonyericsson.android.camera.view.messagedialog.DialogId;
import com.sonyericsson.android.camera.view.messagedialog.MessageDialogRequest;

/* JADX INFO: loaded from: classes.dex */
class ViewFinderImpl$ShowMessageDialogTask implements Runnable {
    private MessageDialogRequest mRequestParam = new MessageDialogRequest();
    final /* synthetic */ ViewFinderImpl this$0;

    public ViewFinderImpl$ShowMessageDialogTask(ViewFinderImpl viewFinderImpl, DialogId dialogId, Object... objArr) {
        this.this$0 = viewFinderImpl;
        this.mRequestParam.mDialogId = dialogId;
        this.mRequestParam.mOptions = objArr;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!ViewFinderImpl.access$8100(this.this$0)) {
            ViewFinderImpl.access$8200(this.this$0).setSensorOrientation(ViewFinderImpl.access$500(this.this$0).getOrientation());
        }
        if (ViewFinderImpl.access$8200(this.this$0).request(this.mRequestParam)) {
            return;
        }
        switch (ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId[this.mRequestParam.mDialogId.ordinal()]) {
            case 5:
                ViewFinderImpl.access$500(this.this$0).requestLaunchAdvancedCamera(LaunchCondition$ExtraOperation.OPEN_SETTINGS_MENU, (String) this.mRequestParam.mOptions[0]);
                break;
            case 6:
                ViewFinderImpl.access$8300(this.this$0);
                break;
        }
    }
}
