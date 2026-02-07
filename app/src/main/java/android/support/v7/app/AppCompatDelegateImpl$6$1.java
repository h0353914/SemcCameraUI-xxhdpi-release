package android.support.v7.app;

import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class AppCompatDelegateImpl$6$1 extends ViewPropertyAnimatorListenerAdapter {
    final /* synthetic */ AppCompatDelegateImpl$6 this$1;

    AppCompatDelegateImpl$6$1(AppCompatDelegateImpl$6 appCompatDelegateImpl$6) {
        this.this$1 = appCompatDelegateImpl$6;
    }

    @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
    public void onAnimationStart(View view) {
        this.this$1.this$0.mActionModeView.setVisibility(0);
    }

    @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
    public void onAnimationEnd(View view) {
        this.this$1.this$0.mActionModeView.setAlpha(1.0f);
        this.this$1.this$0.mFadeAnim.setListener(null);
        this.this$1.this$0.mFadeAnim = null;
    }
}
