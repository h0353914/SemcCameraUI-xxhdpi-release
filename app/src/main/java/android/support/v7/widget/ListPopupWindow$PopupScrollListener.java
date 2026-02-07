package android.support.v7.widget;

import android.widget.AbsListView;
import android.widget.AbsListView$OnScrollListener;

/* JADX INFO: loaded from: classes.dex */
class ListPopupWindow$PopupScrollListener implements AbsListView$OnScrollListener {
    final /* synthetic */ ListPopupWindow this$0;

    @Override // android.widget.AbsListView$OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
    }

    ListPopupWindow$PopupScrollListener(ListPopupWindow listPopupWindow) {
        this.this$0 = listPopupWindow;
    }

    @Override // android.widget.AbsListView$OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i) {
        if (i != 1 || this.this$0.isInputMethodNotNeeded() || this.this$0.mPopup.getContentView() == null) {
            return;
        }
        this.this$0.mHandler.removeCallbacks(this.this$0.mResizePopupRunnable);
        this.this$0.mResizePopupRunnable.run();
    }
}
