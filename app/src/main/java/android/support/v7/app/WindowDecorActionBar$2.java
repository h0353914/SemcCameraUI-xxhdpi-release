package android.support.v7.app;

import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class WindowDecorActionBar$2 extends ViewPropertyAnimatorListenerAdapter {
    final /* synthetic */ WindowDecorActionBar this$0;

    WindowDecorActionBar$2(WindowDecorActionBar windowDecorActionBar) {
        this.this$0 = windowDecorActionBar;
    }

    @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
    public void onAnimationEnd(View view) {
        this.this$0.mCurrentShowAnim = null;
        this.this$0.mContainerView.requestLayout();
    }
}
