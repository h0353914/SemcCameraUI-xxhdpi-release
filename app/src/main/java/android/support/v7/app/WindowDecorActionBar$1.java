package android.support.v7.app;

import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.view.View;

class WindowDecorActionBar$1 extends ViewPropertyAnimatorListenerAdapter {
    final /* synthetic */ WindowDecorActionBar this$0;

    WindowDecorActionBar$1(WindowDecorActionBar windowDecorActionBar) {
        this.this$0 = windowDecorActionBar;
    }

    @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
    public void onAnimationEnd(View view) {
        if (this.this$0.mContentAnimations && this.this$0.mContentView != null) {
            this.this$0.mContentView.setTranslationY(0.0f);
            this.this$0.mContainerView.setTranslationY(0.0f);
        }
        this.this$0.mContainerView.setVisibility(8);
        this.this$0.mContainerView.setTransitioning(false);
        this.this$0.mCurrentShowAnim = null;
        this.this$0.completeDeferredDestroyActionMode();
        if (this.this$0.mOverlayLayout != null) {
            ViewCompat.requestApplyInsets(this.this$0.mOverlayLayout);
        }
    }
}
