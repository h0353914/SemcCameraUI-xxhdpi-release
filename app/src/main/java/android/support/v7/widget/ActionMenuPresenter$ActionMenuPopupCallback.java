package android.support.v7.widget;

import android.support.v7.view.menu.ActionMenuItemView$PopupCallback;
import android.support.v7.view.menu.ShowableListMenu;

/* JADX INFO: loaded from: classes.dex */
class ActionMenuPresenter$ActionMenuPopupCallback extends ActionMenuItemView$PopupCallback {
    final /* synthetic */ ActionMenuPresenter this$0;

    ActionMenuPresenter$ActionMenuPopupCallback(ActionMenuPresenter actionMenuPresenter) {
        this.this$0 = actionMenuPresenter;
    }

    @Override // android.support.v7.view.menu.ActionMenuItemView$PopupCallback
    public ShowableListMenu getPopup() {
        if (this.this$0.mActionButtonPopup != null) {
            return this.this$0.mActionButtonPopup.getPopup();
        }
        return null;
    }
}
