package android.support.v7.app;

import android.support.v4.view.ViewCompat;

/* JADX INFO: loaded from: classes.dex */
class AppCompatDelegateImpl$6 implements Runnable {
    final /* synthetic */ AppCompatDelegateImpl this$0;

    AppCompatDelegateImpl$6(AppCompatDelegateImpl appCompatDelegateImpl) {
        this.this$0 = appCompatDelegateImpl;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$0.mActionModePopup.showAtLocation(this.this$0.mActionModeView, 55, 0, 0);
        this.this$0.endOnGoingFadeAnimation();
        if (this.this$0.shouldAnimateActionModeView()) {
            this.this$0.mActionModeView.setAlpha(0.0f);
            this.this$0.mFadeAnim = ViewCompat.animate(this.this$0.mActionModeView).alpha(1.0f);
            this.this$0.mFadeAnim.setListener(new AppCompatDelegateImpl$6$1(this));
            return;
        }
        this.this$0.mActionModeView.setAlpha(1.0f);
        this.this$0.mActionModeView.setVisibility(0);
    }
}
