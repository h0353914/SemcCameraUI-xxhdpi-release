package android.support.v7.view.menu;

import android.view.MenuItem;
import android.view.MenuItem$OnActionExpandListener;

class MenuItemWrapperICS$OnActionExpandListenerWrapper extends BaseWrapper<MenuItem$OnActionExpandListener> implements MenuItem$OnActionExpandListener {
    final /* synthetic */ MenuItemWrapperICS this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MenuItemWrapperICS$OnActionExpandListenerWrapper(MenuItemWrapperICS menuItemWrapperICS, MenuItem$OnActionExpandListener menuItem$OnActionExpandListener) {
        super(menuItem$OnActionExpandListener);
        this.this$0 = menuItemWrapperICS;
    }

    @Override // android.view.MenuItem$OnActionExpandListener
    public boolean onMenuItemActionExpand(MenuItem menuItem) {
        return ((MenuItem$OnActionExpandListener) this.mWrappedObject).onMenuItemActionExpand(this.this$0.getMenuItemWrapper(menuItem));
    }

    @Override // android.view.MenuItem$OnActionExpandListener
    public boolean onMenuItemActionCollapse(MenuItem menuItem) {
        return ((MenuItem$OnActionExpandListener) this.mWrappedObject).onMenuItemActionCollapse(this.this$0.getMenuItemWrapper(menuItem));
    }
}
