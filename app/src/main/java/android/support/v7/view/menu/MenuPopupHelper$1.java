package android.support.v7.view.menu;

import android.widget.PopupWindow$OnDismissListener;

class MenuPopupHelper$1 implements PopupWindow$OnDismissListener {
    final /* synthetic */ MenuPopupHelper this$0;

    MenuPopupHelper$1(MenuPopupHelper menuPopupHelper) {
        this.this$0 = menuPopupHelper;
    }

    @Override // android.widget.PopupWindow$OnDismissListener
    public void onDismiss() {
        this.this$0.onDismiss();
    }
}
