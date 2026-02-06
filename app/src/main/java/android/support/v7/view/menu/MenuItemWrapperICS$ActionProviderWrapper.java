package android.support.v7.view.menu;

import android.content.Context;
import android.support.v4.view.ActionProvider;
import android.view.SubMenu;
import android.view.View;

class MenuItemWrapperICS$ActionProviderWrapper extends ActionProvider {
    final android.view.ActionProvider mInner;
    final /* synthetic */ MenuItemWrapperICS this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MenuItemWrapperICS$ActionProviderWrapper(MenuItemWrapperICS menuItemWrapperICS, Context context, android.view.ActionProvider actionProvider) {
        super(context);
        this.this$0 = menuItemWrapperICS;
        this.mInner = actionProvider;
    }

    @Override // android.support.v4.view.ActionProvider
    public View onCreateActionView() {
        return this.mInner.onCreateActionView();
    }

    @Override // android.support.v4.view.ActionProvider
    public boolean onPerformDefaultAction() {
        return this.mInner.onPerformDefaultAction();
    }

    @Override // android.support.v4.view.ActionProvider
    public boolean hasSubMenu() {
        return this.mInner.hasSubMenu();
    }

    @Override // android.support.v4.view.ActionProvider
    public void onPrepareSubMenu(SubMenu subMenu) {
        this.mInner.onPrepareSubMenu(this.this$0.getSubMenuWrapper(subMenu));
    }
}
