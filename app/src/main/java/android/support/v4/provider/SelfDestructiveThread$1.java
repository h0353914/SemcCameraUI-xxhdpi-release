package android.support.v4.provider;

import android.os.Handler$Callback;
import android.os.Message;

class SelfDestructiveThread$1 implements Handler$Callback {
    final /* synthetic */ SelfDestructiveThread this$0;

    SelfDestructiveThread$1(SelfDestructiveThread selfDestructiveThread) {
        this.this$0 = selfDestructiveThread;
    }

    @Override // android.os.Handler$Callback
    public boolean handleMessage(Message message) {
        switch (message.what) {
            case 0:
                this.this$0.onDestruction();
                break;
            case 1:
                this.this$0.onInvokeRunnable((Runnable) message.obj);
                break;
        }
        return true;
    }
}
