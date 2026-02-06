package com.sonyericsson.android.camera.view.sidetouch;

import android.os.Handler;
import android.os.Message;

class SideTouchUiIcon$AutoReviewIcon$PreviewTimerHandler extends Handler {
    final /* synthetic */ SideTouchUiIcon$AutoReviewIcon this$0;

    private SideTouchUiIcon$AutoReviewIcon$PreviewTimerHandler(SideTouchUiIcon$AutoReviewIcon sideTouchUiIcon$AutoReviewIcon) {
        this.this$0 = sideTouchUiIcon$AutoReviewIcon;
    }

    /* synthetic */ SideTouchUiIcon$AutoReviewIcon$PreviewTimerHandler(SideTouchUiIcon$AutoReviewIcon sideTouchUiIcon$AutoReviewIcon, SideTouchUiIcon$1 sideTouchUiIcon$1) {
        this(sideTouchUiIcon$AutoReviewIcon);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        switch (message.what) {
            case 1:
                SideTouchUiIcon$AutoReviewIcon.access$500(this.this$0);
                break;
        }
    }
}
