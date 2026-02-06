package android.support.v4.provider;

import android.os.Handler;
import java.util.concurrent.Callable;

class SelfDestructiveThread$2 implements Runnable {
    final /* synthetic */ SelfDestructiveThread this$0;
    final /* synthetic */ Callable val$callable;
    final /* synthetic */ Handler val$callingHandler;
    final /* synthetic */ SelfDestructiveThread$ReplyCallback val$reply;

    SelfDestructiveThread$2(SelfDestructiveThread selfDestructiveThread, Callable callable, Handler handler, SelfDestructiveThread$ReplyCallback selfDestructiveThread$ReplyCallback) {
        this.this$0 = selfDestructiveThread;
        this.val$callable = callable;
        this.val$callingHandler = handler;
        this.val$reply = selfDestructiveThread$ReplyCallback;
    }

    @Override // java.lang.Runnable
    public void run() {
        Object objCall;
        try {
            objCall = this.val$callable.call();
        } catch (Exception unused) {
            objCall = null;
        }
        this.val$callingHandler.post(new SelfDestructiveThread$2$1(this, objCall));
    }
}
