package com.sonymobile.android.media.internal;

import android.os.HandlerThread;
import android.os.Message;
import java.util.ArrayList;

public class HandlerHelper {
    private final ArrayList<HandlerHelper$WaitHandler> mMessageList = new ArrayList<>();
    private final Object mListLock = new Object();

    public Object sendMessageAndAwaitResponse(Message message) {
        HandlerThread handlerThread = new HandlerThread("sendMessageAndAwaitResponse");
        Object obj = new Object();
        handlerThread.start();
        Object obj2 = null;
        HandlerHelper$WaitHandler handlerHelper$WaitHandler = new HandlerHelper$WaitHandler(handlerThread.getLooper(), obj, null);
        synchronized (this.mListLock) {
            this.mMessageList.add(handlerHelper$WaitHandler);
        }
        if (message.obj != null) {
            message.obj = new HandlerHelper$ExtendedObject(message.obj, handlerHelper$WaitHandler);
        } else {
            message.obj = handlerHelper$WaitHandler;
        }
        message.sendToTarget();
        synchronized (obj) {
            while (obj2 == null) {
                if (handlerHelper$WaitHandler.releaseLock) {
                    break;
                }
                try {
                    obj.wait(10L);
                    obj2 = handlerHelper$WaitHandler.reply;
                } catch (InterruptedException unused) {
                }
            }
        }
        handlerThread.quit();
        synchronized (this.mListLock) {
            this.mMessageList.remove(handlerHelper$WaitHandler);
        }
        return obj2;
    }

    public void releaseAllLocks() {
        synchronized (this.mListLock) {
            for (HandlerHelper$WaitHandler handlerHelper$WaitHandler : this.mMessageList) {
                synchronized (HandlerHelper$WaitHandler.access$100(handlerHelper$WaitHandler)) {
                    handlerHelper$WaitHandler.releaseLock = true;
                    HandlerHelper$WaitHandler.access$100(handlerHelper$WaitHandler).notifyAll();
                }
            }
        }
    }
}
