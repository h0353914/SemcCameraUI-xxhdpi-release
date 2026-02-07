package android.support.v4.app;

import android.os.Handler;
import android.os.Message;

/* JADX INFO: loaded from: classes.dex */
class FragmentActivity$1 extends Handler {
    final /* synthetic */ FragmentActivity this$0;

    FragmentActivity$1(FragmentActivity fragmentActivity) {
        this.this$0 = fragmentActivity;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        if (message.what == 2) {
            this.this$0.onResumeFragments();
            this.this$0.mFragments.execPendingActions();
        } else {
            super.handleMessage(message);
        }
    }
}
