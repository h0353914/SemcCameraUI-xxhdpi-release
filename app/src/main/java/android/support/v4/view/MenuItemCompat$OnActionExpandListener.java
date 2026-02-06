package android.support.v4.view;

import android.view.MenuItem;

@Deprecated
public interface MenuItemCompat$OnActionExpandListener {
    boolean onMenuItemActionCollapse(MenuItem menuItem);

    boolean onMenuItemActionExpand(MenuItem menuItem);
}
