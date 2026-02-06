package com.sonymobile.android.media.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

class HandlerHelper$WaitHandler extends Handler {
    private final Object lock;
    public boolean releaseLock;
    public Object reply;

    /* synthetic */ HandlerHelper$WaitHandler(Looper looper, Object obj, HandlerHelper$1 handlerHelper$1) {
        this(looper, obj);
    }

    static /* synthetic */ Object access$100(HandlerHelper$WaitHandler handlerHelper$WaitHandler) {
        return handlerHelper$WaitHandler.lock;
    }

    private HandlerHelper$WaitHandler(Looper looper, Object obj) {
        super(looper);
        this.lock = obj;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        this.reply = message.obj;
        synchronized (this.lock) {
            this.lock.notifyAll();
        }
    }
}
