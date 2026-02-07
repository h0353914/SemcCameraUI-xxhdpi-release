package android.support.v7.view.menu;

import android.view.View;
import android.view.View$OnAttachStateChangeListener;

/* JADX INFO: loaded from: classes.dex */
class StandardMenuPopup$2 implements View$OnAttachStateChangeListener {
    final /* synthetic */ StandardMenuPopup this$0;

    @Override // android.view.View$OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    StandardMenuPopup$2(StandardMenuPopup standardMenuPopup) {
        this.this$0 = standardMenuPopup;
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
