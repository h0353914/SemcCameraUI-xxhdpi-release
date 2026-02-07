package android.support.v7.widget;

import android.view.ViewTreeObserver$OnGlobalLayoutListener;

/* JADX INFO: loaded from: classes.dex */
class ActivityChooserView$2 implements ViewTreeObserver$OnGlobalLayoutListener {
    final /* synthetic */ ActivityChooserView this$0;

    ActivityChooserView$2(ActivityChooserView activityChooserView) {
        this.this$0 = activityChooserView;
    }

    @Override // android.view.ViewTreeObserver$OnGlobalLayoutListener
    public void onGlobalLayout() {
        if (this.this$0.isShowingPopup()) {
            if (!this.this$0.isShown()) {
                this.this$0.getListPopupWindow().dismiss();
                return;
            }
            this.this$0.getListPopupWindow().show();
            if (this.this$0.mProvider != null) {
                this.this$0.mProvider.subUiVisibilityChanged(true);
            }
        }
    }
}
