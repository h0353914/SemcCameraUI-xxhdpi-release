package android.support.v4.app;

class FragmentManagerImpl$2$1 implements Runnable {
    final /* synthetic */ FragmentManagerImpl$2 this$1;

    FragmentManagerImpl$2$1(FragmentManagerImpl$2 fragmentManagerImpl$2) {
        this.this$1 = fragmentManagerImpl$2;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.this$1.val$fragment.getAnimatingAway() != null) {
            this.this$1.val$fragment.setAnimatingAway(null);
            this.this$1.this$0.moveToState(this.this$1.val$fragment, this.this$1.val$fragment.getStateAfterAnimating(), 0, 0, false);
        }
    }
}
