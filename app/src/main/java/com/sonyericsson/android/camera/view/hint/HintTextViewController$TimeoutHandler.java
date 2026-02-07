package com.sonyericsson.android.camera.view.hint;

import android.os.Handler;
import android.os.Message;

/* JADX INFO: loaded from: classes.dex */
class HintTextViewController$TimeoutHandler extends Handler {
    private static final int MSG_START_FADE_OUT = 2;
    private static final int MSG_TIMEOUT = 1;
    public HintTextContent attachedContent;
    final /* synthetic */ HintTextViewController this$0;

    private HintTextViewController$TimeoutHandler(HintTextViewController hintTextViewController) {
        this.this$0 = hintTextViewController;
    }

    /* synthetic */ HintTextViewController$TimeoutHandler(HintTextViewController hintTextViewController, HintTextViewController$1 hintTextViewController$1) {
        this(hintTextViewController);
    }

    public void startTimeoutCount(long j, HintTextContent hintTextContent) {
        sendEmptyMessageDelayed(1, j);
        this.attachedContent = hintTextContent;
    }

    public void startFadeOut(long j, int i, HintTextContent hintTextContent) {
        cancelCount();
        Message messageObtain = Message.obtain();
        messageObtain.what = 2;
        messageObtain.arg1 = i;
        sendMessageDelayed(messageObtain, j);
        this.attachedContent = hintTextContent;
    }

    public void cancelCount() {
        removeMessages(1);
        removeMessages(2);
        HintTextViewController.access$700(this.this$0).cancel();
        HintTextViewController.access$100(this.this$0).onStateChanged();
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        switch (message.what) {
            case 1:
                if (this.attachedContent != null) {
                    HintTextViewController.access$400(this.this$0, this.attachedContent);
                }
                break;
            case 2:
                HintTextViewController.access$700(this.this$0).cancel();
                HintTextViewController.access$700(this.this$0).setDuration(message.arg1);
                HintTextViewController.access$700(this.this$0).start();
                break;
        }
    }
}
