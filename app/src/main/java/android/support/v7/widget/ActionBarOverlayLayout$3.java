package android.support.v7.widget;

class ActionBarOverlayLayout$3 implements Runnable {
    final /* synthetic */ ActionBarOverlayLayout this$0;

    ActionBarOverlayLayout$3(ActionBarOverlayLayout actionBarOverlayLayout) {
        this.this$0 = actionBarOverlayLayout;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$0.haltActionBarHideOffsetAnimations();
        this.this$0.mCurrentActionBarTopAnimator = this.this$0.mActionBarTop.animate().translationY(-this.this$0.mActionBarTop.getHeight()).setListener(this.this$0.mTopAnimatorListener);
    }
}
