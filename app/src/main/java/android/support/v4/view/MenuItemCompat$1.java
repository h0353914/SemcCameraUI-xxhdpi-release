package android.support.v4.view;

import android.view.MenuItem;
import android.view.MenuItem$OnActionExpandListener;

/* JADX INFO: loaded from: classes.dex */
class MenuItemCompat$1 implements MenuItem$OnActionExpandListener {
    final /* synthetic */ MenuItemCompat$OnActionExpandListener val$listener;

    MenuItemCompat$1(MenuItemCompat$OnActionExpandListener menuItemCompat$OnActionExpandListener) {
        this.val$listener = menuItemCompat$OnActionExpandListener;
    }

    @Override // android.view.MenuItem$OnActionExpandListener
    public boolean onMenuItemActionExpand(MenuItem menuItem) {
        return this.val$listener.onMenuItemActionExpand(menuItem);
    }

    @Override // android.view.MenuItem$OnActionExpandListener
    public boolean onMenuItemActionCollapse(MenuItem menuItem) {
        return this.val$listener.onMenuItemActionCollapse(menuItem);
    }
}
