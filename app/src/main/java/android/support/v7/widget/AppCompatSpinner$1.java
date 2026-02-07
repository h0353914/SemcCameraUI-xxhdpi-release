package android.support.v7.widget;

import android.support.v7.view.menu.ShowableListMenu;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class AppCompatSpinner$1 extends ForwardingListener {
    final /* synthetic */ AppCompatSpinner this$0;
    final /* synthetic */ AppCompatSpinner$DropdownPopup val$popup;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AppCompatSpinner$1(AppCompatSpinner appCompatSpinner, View view, AppCompatSpinner$DropdownPopup appCompatSpinner$DropdownPopup) {
        super(view);
        this.this$0 = appCompatSpinner;
        this.val$popup = appCompatSpinner$DropdownPopup;
    }

    @Override // android.support.v7.widget.ForwardingListener
    public ShowableListMenu getPopup() {
        return this.val$popup;
    }

    @Override // android.support.v7.widget.ForwardingListener
    public boolean onForwardingStarted() {
        if (this.this$0.mPopup.isShowing()) {
            return true;
        }
        this.this$0.mPopup.show();
        return true;
    }
}
