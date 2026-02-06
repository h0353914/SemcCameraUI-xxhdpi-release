package android.support.v4.app;

class FragmentManagerImpl$1 implements Runnable {
    final /* synthetic */ FragmentManagerImpl this$0;

    FragmentManagerImpl$1(FragmentManagerImpl fragmentManagerImpl) {
        this.this$0 = fragmentManagerImpl;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$0.execPendingActions();
    }
}
