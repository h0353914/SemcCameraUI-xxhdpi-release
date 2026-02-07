package android.support.v7.widget;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class ListPopupWindow$2 implements Runnable {
    final /* synthetic */ ListPopupWindow this$0;

    ListPopupWindow$2(ListPopupWindow listPopupWindow) {
        this.this$0 = listPopupWindow;
    }

    @Override // java.lang.Runnable
    public void run() {
        View anchorView = this.this$0.getAnchorView();
        if (anchorView == null || anchorView.getWindowToken() == null) {
            return;
        }
        this.this$0.show();
    }
}
