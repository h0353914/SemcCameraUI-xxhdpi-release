package com.sonymobile.android.media.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* JADX INFO: loaded from: classes.dex */
protected class Track$MuxerHandler extends Handler {
    final /* synthetic */ Track this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Track$MuxerHandler(Track track, Looper looper) {
        super(looper);
        this.this$0 = track;
    }

    private void doFlushBuffers() {
        int size = this.this$0.mBufferList.size();
        for (int i = 0; i < size; i++) {
            this.this$0.doWriteOutputBuffer();
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i = message.what;
        try {
            if (i == 104) {
                this.this$0.doWriteOutputBuffer();
            } else if (i != 110) {
            } else {
                doFlushBuffers();
            }
        } catch (IllegalStateException unused) {
        }
    }
}
