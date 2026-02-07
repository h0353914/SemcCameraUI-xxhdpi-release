package android.support.v7.app;

import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class AppCompatDelegateImpl$7 extends ViewPropertyAnimatorListenerAdapter {
    final /* synthetic */ AppCompatDelegateImpl this$0;

    AppCompatDelegateImpl$7(AppCompatDelegateImpl appCompatDelegateImpl) {
        this.this$0 = appCompatDelegateImpl;
    }

    @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
    public void onAnimationStart(View view) {
        this.this$0.mActionModeView.setVisibility(0);
        this.this$0.mActionModeView.sendAccessibilityEvent(32);
        if (this.this$0.mActionModeView.getParent() instanceof View) {
            ViewCompat.requestApplyInsets((View) this.this$0.mActionModeView.getParent());
        }
    }

    @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
    public void onAnimationEnd(View view) {
        this.this$0.mActionModeView.setAlpha(1.0f);
        this.this$0.mFadeAnim.setListener(null);
        this.this$0.mFadeAnim = null;
    }
}
