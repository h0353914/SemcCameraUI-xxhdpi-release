package android.support.v7.view.menu;

import android.view.MenuItem;
import android.view.MenuItem$OnMenuItemClickListener;

class MenuItemWrapperICS$OnMenuItemClickListenerWrapper extends BaseWrapper<MenuItem$OnMenuItemClickListener> implements MenuItem$OnMenuItemClickListener {
    final /* synthetic */ MenuItemWrapperICS this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MenuItemWrapperICS$OnMenuItemClickListenerWrapper(MenuItemWrapperICS menuItemWrapperICS, MenuItem$OnMenuItemClickListener menuItem$OnMenuItemClickListener) {
        super(menuItem$OnMenuItemClickListener);
        this.this$0 = menuItemWrapperICS;
    }

    @Override // android.view.MenuItem$OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        return ((MenuItem$OnMenuItemClickListener) this.mWrappedObject).onMenuItemClick(this.this$0.getMenuItemWrapper(menuItem));
    }
}
