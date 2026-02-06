package android.support.v7.widget;

import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.view.ViewPropertyAnimatorListener;
import android.view.View;

protected class AbsActionBarView$VisibilityAnimListener implements ViewPropertyAnimatorListener {
    private boolean mCanceled = false;
    int mFinalVisibility;
    final /* synthetic */ AbsActionBarView this$0;

    protected AbsActionBarView$VisibilityAnimListener(AbsActionBarView absActionBarView) {
        this.this$0 = absActionBarView;
    }

    public AbsActionBarView$VisibilityAnimListener withFinalVisibility(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, int i) {
        this.this$0.mVisibilityAnim = viewPropertyAnimatorCompat;
        this.mFinalVisibility = i;
        return this;
    }

    @Override // android.support.v4.view.ViewPropertyAnimatorListener
    public void onAnimationStart(View view) {
        AbsActionBarView.access$001(this.this$0, 0);
        this.mCanceled = false;
    }

    @Override // android.support.v4.view.ViewPropertyAnimatorListener
    public void onAnimationEnd(View view) {
        if (this.mCanceled) {
            return;
        }
        this.this$0.mVisibilityAnim = null;
        AbsActionBarView.access$101(this.this$0, this.mFinalVisibility);
    }

    @Override // android.support.v4.view.ViewPropertyAnimatorListener
    public void onAnimationCancel(View view) {
        this.mCanceled = true;
    }
}
