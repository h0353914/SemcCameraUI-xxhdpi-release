package android.support.v7.view.menu;

import android.view.View;
import android.view.View$OnAttachStateChangeListener;

class CascadingMenuPopup$2 implements View$OnAttachStateChangeListener {
    final /* synthetic */ CascadingMenuPopup this$0;

    @Override // android.view.View$OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    CascadingMenuPopup$2(CascadingMenuPopup cascadingMenuPopup) {
        this.this$0 = cascadingMenuPopup;
    }

    @Override // android.view.View$OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        if (this.this$0.mTreeObserver != null) {
            if (!this.this$0.mTreeObserver.isAlive()) {
                this.this$0.mTreeObserver = view.getViewTreeObserver();
            }
            this.this$0.mTreeObserver.removeGlobalOnLayoutListener(this.this$0.mGlobalLayoutListener);
        }
        view.removeOnAttachStateChangeListener(this);
    }
}
