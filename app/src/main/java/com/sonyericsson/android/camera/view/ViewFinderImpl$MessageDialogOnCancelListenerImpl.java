package com.sonyericsson.android.camera.view;

import com.sonyericsson.android.camera.configuration.parameters.SideSense;
import com.sonyericsson.android.camera.view.messagedialog.MessageDialogController$MessageDialogOnCancelListener;
import com.sonyericsson.android.camera.view.messagedialog.MessageDialogRequest;

/* JADX INFO: loaded from: classes.dex */
class ViewFinderImpl$MessageDialogOnCancelListenerImpl implements MessageDialogController$MessageDialogOnCancelListener {
    final /* synthetic */ ViewFinderImpl this$0;

    private ViewFinderImpl$MessageDialogOnCancelListenerImpl(ViewFinderImpl viewFinderImpl) {
        this.this$0 = viewFinderImpl;
    }

    /* synthetic */ ViewFinderImpl$MessageDialogOnCancelListenerImpl(ViewFinderImpl viewFinderImpl, ViewFinderImpl$1 viewFinderImpl$1) {
        this(viewFinderImpl);
    }

    @Override // com.sonyericsson.android.camera.view.messagedialog.MessageDialogController$MessageDialogOnCancelListener
    public void onCancel(MessageDialogRequest messageDialogRequest) {
        int i = ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId[messageDialogRequest.mDialogId.ordinal()];
        if (i != 12) {
            switch (i) {
                case 6:
                    ViewFinderImpl.access$8300(this.this$0);
                    break;
                case 7:
                    ViewFinderImpl.access$8700(this.this$0);
                    break;
                case 8:
                    ViewFinderImpl.access$8800(this.this$0);
                    ViewFinderImpl.access$8700(this.this$0);
                    break;
            }
        }
        ViewFinderImpl.access$1000(this.this$0).getUserSetting().set(SideSense.OFF);
    }
}
