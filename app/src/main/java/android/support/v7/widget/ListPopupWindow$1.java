package android.support.v7.widget;

import android.support.v7.view.menu.ShowableListMenu;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class ListPopupWindow$1 extends ForwardingListener {
    final /* synthetic */ ListPopupWindow this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ListPopupWindow$1(ListPopupWindow listPopupWindow, View view) {
        super(view);
        this.this$0 = listPopupWindow;
    }

    @Override // android.support.v7.widget.ForwardingListener
    public /* bridge */ /* synthetic */ ShowableListMenu getPopup() {
        return getPopup();
    }

    @Override // android.support.v7.widget.ForwardingListener
    public ListPopupWindow getPopup() {
        return this.this$0;
    }
}
