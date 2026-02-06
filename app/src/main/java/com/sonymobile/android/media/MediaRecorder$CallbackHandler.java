package com.sonymobile.android.media;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import java.lang.ref.WeakReference;

class MediaRecorder$CallbackHandler extends Handler {
    private final WeakReference<MediaRecorder> mRecorder;
    final /* synthetic */ MediaRecorder this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaRecorder$CallbackHandler(MediaRecorder mediaRecorder, WeakReference<MediaRecorder> weakReference, Looper looper) {
        super(looper);
        this.this$0 = mediaRecorder;
        this.mRecorder = weakReference;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i = message.arg1 & 268435455;
        switch (message.what) {
            case 1:
                if (i == 4) {
                    if (MediaRecorder.access$000(this.this$0) != null) {
                        if (MediaRecorder.access$100(this.this$0)) {
                            MediaRecorder.access$000(this.this$0).onError(null, 1, 0);
                        } else {
                            Log.w("MediaRecorder", "Message is rejected because recorder is already stopped. what:" + message.what + " message:" + i);
                        }
                    }
                    break;
                } else {
                    switch (i) {
                        case 1000:
                            if (MediaRecorder.access$200(this.this$0) != null) {
                                MediaRecorder.access$200(this.this$0).onInfo(null, message.arg1, message.arg2);
                            }
                            break;
                        case 1001:
                            if (MediaRecorder.access$200(this.this$0) != null) {
                                MediaRecorder.access$200(this.this$0).onInfo(null, message.arg1, message.arg2);
                            }
                            break;
                    }
                }
                break;
            case 2:
                if (MediaRecorder.access$200(this.this$0) != null) {
                    MediaRecorder.access$200(this.this$0).onInfo(null, 800, 0);
                }
                break;
            case 3:
                if (MediaRecorder.access$200(this.this$0) != null) {
                    MediaRecorder.access$200(this.this$0).onInfo(null, 801, 0);
                }
                break;
            case 4:
                if (MediaRecorder.access$000(this.this$0) != null) {
                    if (MediaRecorder.access$100(this.this$0)) {
                        MediaRecorder.access$000(this.this$0).onError(null, 1, 0);
                    } else {
                        Log.w("MediaRecorder", "Message is rejected because recorder is already stopped. what:" + message.what + " message:" + i);
                    }
                }
                break;
        }
    }
}
