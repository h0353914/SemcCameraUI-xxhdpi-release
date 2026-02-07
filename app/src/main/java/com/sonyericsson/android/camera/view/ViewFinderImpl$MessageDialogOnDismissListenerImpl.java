package com.sonyericsson.android.camera.view;

import com.sonyericsson.android.camera.controller.StateMachine$TransitterEvent;
import com.sonyericsson.android.camera.util.capability.PlatformCapability;
import com.sonyericsson.android.camera.view.messagedialog.DialogId;
import com.sonyericsson.android.camera.view.messagedialog.MessageDialogController$MessageDialogOnDismissListener;
import com.sonyericsson.android.camera.view.messagedialog.MessageDialogRequest;

/* JADX INFO: loaded from: classes.dex */
class ViewFinderImpl$MessageDialogOnDismissListenerImpl implements MessageDialogController$MessageDialogOnDismissListener {
    final /* synthetic */ ViewFinderImpl this$0;

    private ViewFinderImpl$MessageDialogOnDismissListenerImpl(ViewFinderImpl viewFinderImpl) {
        this.this$0 = viewFinderImpl;
    }

    /* synthetic */ ViewFinderImpl$MessageDialogOnDismissListenerImpl(ViewFinderImpl viewFinderImpl, ViewFinderImpl$1 viewFinderImpl$1) {
        this(viewFinderImpl);
    }

    @Override // com.sonyericsson.android.camera.view.messagedialog.MessageDialogController$MessageDialogOnDismissListener
    public void onDismiss(MessageDialogRequest messageDialogRequest) {
        if (messageDialogRequest.mDialogId != DialogId.PREDICTIVE_LAUNCH_DESCRIPTION) {
            this.this$0.hidePredictiveLaunchCover(ViewFinderImpl$PredictiveLaunchHideTrigger.OTHER);
        }
        int i = ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId[messageDialogRequest.mDialogId.ordinal()];
        if (i == 8) {
            ViewFinderImpl.access$8800(this.this$0);
            return;
        }
        if (i != 13) {
            switch (i) {
                default:
                    switch (i) {
                        case 16:
                        case 17:
                            PlatformCapability.setDeviceError(true);
                            ViewFinderImpl.access$8900(this.this$0);
                            break;
                        case 18:
                        case 19:
                        case 20:
                        case 21:
                            ViewFinderImpl.access$8900(this.this$0);
                            break;
                        case 22:
                        case 23:
                        case 24:
                        case 25:
                            ViewFinderImpl.access$1000(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_DIALOG_CLOSED, ViewFinder$UiComponentKind.FATAL_ALERT_DIALOG);
                            break;
                        case 31:
                            ViewFinderImpl.access$500(this.this$0).setupAutoPowerOffTimeOutDuration(this.this$0.predictiveLaunchCoverExists());
                            ViewFinderImpl.access$500(this.this$0).restartAutoPowerOffTimer();
                            break;
                    }
                case 1:
                case 2:
                case 3:
                case 4:
                    ViewFinderImpl.access$9000(this.this$0);
                    break;
            }
            return;
        }
        ViewFinderImpl.access$1000(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_DIALOG_CLOSED, ViewFinder$UiComponentKind.NOTICE_DIALOG);
    }
}
