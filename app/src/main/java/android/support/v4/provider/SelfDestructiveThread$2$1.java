package android.support.v4.provider;

class SelfDestructiveThread$2$1 implements Runnable {
    final /* synthetic */ SelfDestructiveThread$2 this$1;
    final /* synthetic */ Object val$result;

    SelfDestructiveThread$2$1(SelfDestructiveThread$2 selfDestructiveThread$2, Object obj) {
        this.this$1 = selfDestructiveThread$2;
        this.val$result = obj;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$1.val$reply.onReply(this.val$result);
    }
}
