package com.sonyericsson.android.camera.view;

import android.os.Handler;
import android.os.Message;

/* JADX INFO: loaded from: classes.dex */
class AutoReviewController$PreviewTimerHandler extends Handler {
    final /* synthetic */ AutoReviewController this$0;

    private AutoReviewController$PreviewTimerHandler(AutoReviewController autoReviewController) {
        this.this$0 = autoReviewController;
    }

    /* synthetic */ AutoReviewController$PreviewTimerHandler(AutoReviewController autoReviewController, AutoReviewController$1 autoReviewController$1) {
        this(autoReviewController);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        switch (message.what) {
            case 1:
                this.this$0.hide();
                if (AutoReviewController.access$100(this.this$0) != null) {
                    AutoReviewController.access$100(this.this$0).onAutoReviewClosed();
                }
                break;
        }
    }
}
