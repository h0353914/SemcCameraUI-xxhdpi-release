package android.support.v7.view;

import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class ViewPropertyAnimatorCompatSet$1 extends ViewPropertyAnimatorListenerAdapter {
    final /* synthetic */ ViewPropertyAnimatorCompatSet this$0;
    private boolean mProxyStarted = false;
    private int mProxyEndCount = 0;

    ViewPropertyAnimatorCompatSet$1(ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet) {
        this.this$0 = viewPropertyAnimatorCompatSet;
    }

    @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
    public void onAnimationStart(View view) {
        if (this.mProxyStarted) {
            return;
        }
        this.mProxyStarted = true;
        if (this.this$0.mListener != null) {
            this.this$0.mListener.onAnimationStart(null);
        }
    }

    void onEnd() {
        this.mProxyEndCount = 0;
        this.mProxyStarted = false;
        this.this$0.onAnimationsEnded();
    }

    @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
    public void onAnimationEnd(View view) {
        int i = this.mProxyEndCount + 1;
        this.mProxyEndCount = i;
        if (i == this.this$0.mAnimators.size()) {
            if (this.this$0.mListener != null) {
                this.this$0.mListener.onAnimationEnd(null);
            }
            onEnd();
        }
    }
}
