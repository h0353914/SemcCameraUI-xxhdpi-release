package android.support.v7.widget;

class ActionBarOverlayLayout$2 implements Runnable {
    final /* synthetic */ ActionBarOverlayLayout this$0;

    ActionBarOverlayLayout$2(ActionBarOverlayLayout actionBarOverlayLayout) {
        this.this$0 = actionBarOverlayLayout;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$0.haltActionBarHideOffsetAnimations();
        this.this$0.mCurrentActionBarTopAnimator = this.this$0.mActionBarTop.animate().translationY(0.0f).setListener(this.this$0.mTopAnimatorListener);
    }
}
