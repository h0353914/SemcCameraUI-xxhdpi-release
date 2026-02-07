package android.support.v7.view.menu;

import android.view.View;
import android.view.ViewTreeObserver$OnGlobalLayoutListener;

/* JADX INFO: loaded from: classes.dex */
class StandardMenuPopup$1 implements ViewTreeObserver$OnGlobalLayoutListener {
    final /* synthetic */ StandardMenuPopup this$0;

    StandardMenuPopup$1(StandardMenuPopup standardMenuPopup) {
        this.this$0 = standardMenuPopup;
    }

    @Override // android.view.ViewTreeObserver$OnGlobalLayoutListener
    public void onGlobalLayout() {
        if (!this.this$0.isShowing() || this.this$0.mPopup.isModal()) {
            return;
        }
        View view = this.this$0.mShownAnchorView;
        if (view == null || !view.isShown()) {
            this.this$0.dismiss();
        } else {
            this.this$0.mPopup.show();
        }
    }
}
