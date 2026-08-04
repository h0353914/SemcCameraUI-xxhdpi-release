










package com.sonymobile.android.media.internal;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import java.util.ArrayList;
import java.util.Iterator;

public class HandlerHelper {
    private final ArrayList<WaitHandler> mMessageList = new ArrayList<>();
    private final Object mListLock = new Object();

    private static class WaitHandler extends Handler {
        private final Object lock;
        public boolean releaseLock;
        public Object reply;

        private WaitHandler(Looper looper, Object obj) {
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

    public static class ExtendedObject {
        public final Handler handler;
        public final Object obj;

        public ExtendedObject(Object obj, Handler handler) {
            this.obj = obj;
            this.handler = handler;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Object sendMessageAndAwaitResponse(Message message) {
        HandlerThread handlerThread = new HandlerThread("sendMessageAndAwaitResponse");
        Object obj = new Object();
        handlerThread.start();
        Object reply = null;
        WaitHandler waitHandler = new WaitHandler(handlerThread.getLooper(), obj);
        synchronized (this.mListLock) {
            this.mMessageList.add(waitHandler);
        }
        if (message.obj != null) {
            message.obj = new ExtendedObject(message.obj, waitHandler);
        } else {
            message.obj = waitHandler;
        }
        message.sendToTarget();
        synchronized (obj) {
            while (reply == null) {
                if (waitHandler.releaseLock) {
                    break;
                }
                try {
                    obj.wait(10L);
                    reply = waitHandler.reply;
                } catch (InterruptedException unused) {
                }
            }
        }
        handlerThread.quit();
        synchronized (this.mListLock) {
            this.mMessageList.remove(waitHandler);
        }
        return reply;
    }

    public void releaseAllLocks() {
        synchronized (this.mListLock) {
            Iterator<WaitHandler> it = this.mMessageList.iterator();
            while (it.hasNext()) {
                WaitHandler next = it.next();
                synchronized (next.lock) {
                    next.releaseLock = true;
                    next.lock.notifyAll();
                }
            }
        }
    }
}
