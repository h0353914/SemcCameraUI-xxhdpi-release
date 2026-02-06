package android.support.v4.app;

class FragmentManagerImpl$AnimateOnHWLayerIfNeededListener$1 implements Runnable {
    final /* synthetic */ FragmentManagerImpl$AnimateOnHWLayerIfNeededListener this$0;

    FragmentManagerImpl$AnimateOnHWLayerIfNeededListener$1(FragmentManagerImpl$AnimateOnHWLayerIfNeededListener fragmentManagerImpl$AnimateOnHWLayerIfNeededListener) {
        this.this$0 = fragmentManagerImpl$AnimateOnHWLayerIfNeededListener;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$0.mView.setLayerType(0, null);
    }
}
