package android.support.v7.widget;

import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.view.View;

class ToolbarWidgetWrapper$2 extends ViewPropertyAnimatorListenerAdapter {
    private boolean mCanceled = false;
    final /* synthetic */ ToolbarWidgetWrapper this$0;
    final /* synthetic */ int val$visibility;

    ToolbarWidgetWrapper$2(ToolbarWidgetWrapper toolbarWidgetWrapper, int i) {
        this.this$0 = toolbarWidgetWrapper;
        this.val$visibility = i;
    }

    @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
    public void onAnimationStart(View view) {
        this.this$0.mToolbar.setVisibility(0);
    }

    @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
    public void onAnimationEnd(View view) {
        if (this.mCanceled) {
            return;
        }
        this.this$0.mToolbar.setVisibility(this.val$visibility);
    }

    @Override // android.support.v4.view.ViewPropertyAnimatorListenerAdapter, android.support.v4.view.ViewPropertyAnimatorListener
    public void onAnimationCancel(View view) {
        this.mCanceled = true;
    }
}
