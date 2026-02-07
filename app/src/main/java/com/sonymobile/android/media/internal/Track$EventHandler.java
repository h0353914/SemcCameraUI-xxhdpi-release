package com.sonymobile.android.media.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes.dex */
protected class Track$EventHandler extends Handler {
    final /* synthetic */ Track this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Track$EventHandler(Track track, Looper looper) {
        super(looper);
        this.this$0 = track;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        switch (message.what) {
            case 1:
                this.this$0.doStart();
                Message messageObtainMessage = ((Handler) message.obj).obtainMessage();
                messageObtainMessage.obj = new Object();
                messageObtainMessage.sendToTarget();
                break;
            case 2:
                this.this$0.doStop();
                Message messageObtainMessage2 = ((Handler) message.obj).obtainMessage();
                messageObtainMessage2.obj = new Object();
                messageObtainMessage2.sendToTarget();
                break;
            case 3:
                this.this$0.doPrepare();
                Message messageObtainMessage3 = ((Handler) message.obj).obtainMessage();
                messageObtainMessage3.obj = new Object();
                messageObtainMessage3.sendToTarget();
                break;
            case 4:
                this.this$0.doRelease();
                Message messageObtainMessage4 = ((Handler) message.obj).obtainMessage();
                messageObtainMessage4.obj = new Object();
                messageObtainMessage4.sendToTarget();
                break;
            case 5:
                this.this$0.doPause();
                break;
            case 6:
                this.this$0.doResume((CountDownLatch) message.obj);
                break;
            case 7:
                this.this$0.doReset();
                Message messageObtainMessage5 = ((Handler) message.obj).obtainMessage();
                messageObtainMessage5.obj = new Object();
                messageObtainMessage5.sendToTarget();
                break;
        }
    }
}
