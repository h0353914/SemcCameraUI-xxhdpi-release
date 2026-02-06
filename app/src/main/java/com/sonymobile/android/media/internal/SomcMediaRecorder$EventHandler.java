package com.sonymobile.android.media.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

class SomcMediaRecorder$EventHandler extends Handler {
    private final WeakReference<SomcMediaRecorder> mRecorder;

    SomcMediaRecorder$EventHandler(WeakReference<SomcMediaRecorder> weakReference, Looper looper) {
        super(looper);
        this.mRecorder = weakReference;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        SomcMediaRecorder somcMediaRecorder = this.mRecorder.get();
        int i = message.arg1 & 268435455;
        int i2 = message.what;
        if (i2 != 1) {
            if (i2 == 101) {
                SomcMediaRecorder.access$200(somcMediaRecorder, true);
                return;
            } else {
                if (i2 != 103) {
                    return;
                }
                SomcMediaRecorder.access$200(somcMediaRecorder, false);
                return;
            }
        }
        if (i == 4) {
            SomcMediaRecorder.access$000(somcMediaRecorder, message.arg2);
        }
        switch (i) {
            case 10:
                SomcMediaRecorder.access$100(somcMediaRecorder, true);
                break;
            case 11:
                SomcMediaRecorder.access$100(somcMediaRecorder, false);
                break;
        }
    }
}
