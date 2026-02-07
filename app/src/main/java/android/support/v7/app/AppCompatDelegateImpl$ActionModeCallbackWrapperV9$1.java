package android.support.v7.app;

import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class AppCompatDelegateImpl$ActionModeCallbackWrapperV9$1 extends ViewPropertyAnimatorListenerAdapter {
    final /* synthetic */ AppCompatDelegateImpl$ActionModeCallbackWrapperV9 this$1;

    AppCompatDelegateImpl$ActionModeCallbackWrapperV9$1(AppCompatDelegateImpl$ActionModeCallbackWrapperV9 appCompatDelegateImpl$ActionModeCallbackWrapperV9) {
        this.this$1 = appCompatDelegateImpl$ActionModeCallbackWrapperV9;
    }

    @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
    public void onAnimationEnd(View view) {
        this.this$1.this$0.mActionModeView.setVisibility(8);
        if (this.this$1.this$0.mActionModePopup != null) {
            this.this$1.this$0.mActionModePopup.dismiss();
        } else if (this.this$1.this$0.mActionModeView.getParent() instanceof View) {
            ViewCompat.requestApplyInsets((View) this.this$1.this$0.mActionModeView.getParent());
        }
        this.this$1.this$0.mActionModeView.removeAllViews();
        this.this$1.this$0.mFadeAnim.setListener(null);
        this.this$1.this$0.mFadeAnim = null;
    }
}
