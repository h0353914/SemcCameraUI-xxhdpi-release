package android.support.v7.widget;

import android.support.v4.view.ViewCompat;

class ListPopupWindow$ResizePopupRunnable implements Runnable {
    final /* synthetic */ ListPopupWindow this$0;

    ListPopupWindow$ResizePopupRunnable(ListPopupWindow listPopupWindow) {
        this.this$0 = listPopupWindow;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.this$0.mDropDownList == null || !ViewCompat.isAttachedToWindow(this.this$0.mDropDownList) || this.this$0.mDropDownList.getCount() <= this.this$0.mDropDownList.getChildCount() || this.this$0.mDropDownList.getChildCount() > this.this$0.mListItemExpandMaximum) {
            return;
        }
        this.this$0.mPopup.setInputMethodMode(2);
        this.this$0.show();
    }
}
