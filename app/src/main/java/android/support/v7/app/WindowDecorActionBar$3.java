package android.support.v7.app;

import android.support.v4.view.ViewPropertyAnimatorUpdateListener;
import android.view.View;

class WindowDecorActionBar$3 implements ViewPropertyAnimatorUpdateListener {
    final /* synthetic */ WindowDecorActionBar this$0;

    WindowDecorActionBar$3(WindowDecorActionBar windowDecorActionBar) {
        this.this$0 = windowDecorActionBar;
    }

    @Override // android.support.v4.view.ViewPropertyAnimatorUpdateListener
    public void onAnimationUpdate(View view) {
        ((View) this.this$0.mContainerView.getParent()).invalidate();
    }
}
