package com.sonyericsson.android.camera.view;

import com.sonyericsson.android.camera.controller.StateMachine$TransitterEvent;

/* JADX INFO: loaded from: classes.dex */
class ViewFinderImpl$ReTrySetupHeadUpDisplayTask implements Runnable {
    final /* synthetic */ ViewFinderImpl this$0;

    private ViewFinderImpl$ReTrySetupHeadUpDisplayTask(ViewFinderImpl viewFinderImpl) {
        this.this$0 = viewFinderImpl;
    }

    /* synthetic */ ViewFinderImpl$ReTrySetupHeadUpDisplayTask(ViewFinderImpl viewFinderImpl, ViewFinderImpl$1 viewFinderImpl$1) {
        this(viewFinderImpl);
    }

    @Override // java.lang.Runnable
    public void run() {
        if (ViewFinderImpl.access$1000(this.this$0) == null) {
            return;
        }
        ViewFinderImpl.access$1000(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY, false);
    }
}
