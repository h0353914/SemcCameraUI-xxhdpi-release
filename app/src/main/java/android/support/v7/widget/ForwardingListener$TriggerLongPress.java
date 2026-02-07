package android.support.v7.widget;

/* JADX INFO: loaded from: classes.dex */
class ForwardingListener$TriggerLongPress implements Runnable {
    final /* synthetic */ ForwardingListener this$0;

    ForwardingListener$TriggerLongPress(ForwardingListener forwardingListener) {
        this.this$0 = forwardingListener;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$0.onLongPress();
    }
}
