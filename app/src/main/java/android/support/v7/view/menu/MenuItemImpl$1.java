package android.support.v7.view.menu;

import android.support.v4.view.ActionProvider$VisibilityListener;

/* JADX INFO: loaded from: classes.dex */
class MenuItemImpl$1 implements ActionProvider$VisibilityListener {
    final /* synthetic */ MenuItemImpl this$0;

    MenuItemImpl$1(MenuItemImpl menuItemImpl) {
        this.this$0 = menuItemImpl;
    }

    @Override // android.support.v4.view.ActionProvider$VisibilityListener
    public void onActionProviderVisibilityChanged(boolean z) {
        this.this$0.mMenu.onItemVisibleChanged(this.this$0);
    }
}
