package android.support.v7.widget;

import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuPresenter$Callback;
import android.support.v7.view.menu.SubMenuBuilder;

/* JADX INFO: loaded from: classes.dex */
class ActionMenuPresenter$PopupPresenterCallback implements MenuPresenter$Callback {
    final /* synthetic */ ActionMenuPresenter this$0;

    ActionMenuPresenter$PopupPresenterCallback(ActionMenuPresenter actionMenuPresenter) {
        this.this$0 = actionMenuPresenter;
    }

    @Override // android.support.v7.view.menu.MenuPresenter$Callback
    public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
        if (menuBuilder == null) {
            return false;
        }
        this.this$0.mOpenSubMenuId = ((SubMenuBuilder) menuBuilder).getItem().getItemId();
        MenuPresenter$Callback callback = this.this$0.getCallback();
        if (callback != null) {
            return callback.onOpenSubMenu(menuBuilder);
        }
        return false;
    }

    @Override // android.support.v7.view.menu.MenuPresenter$Callback
    public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        if (menuBuilder instanceof SubMenuBuilder) {
            menuBuilder.getRootMenu().close(false);
        }
        MenuPresenter$Callback callback = this.this$0.getCallback();
        if (callback != null) {
            callback.onCloseMenu(menuBuilder, z);
        }
    }
}
