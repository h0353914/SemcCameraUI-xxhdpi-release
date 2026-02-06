package android.support.v7.widget;

import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuBuilder$Callback;
import android.view.MenuItem;

class PopupMenu$1 implements MenuBuilder$Callback {
    final /* synthetic */ PopupMenu this$0;

    @Override // android.support.v7.view.menu.MenuBuilder$Callback
    public void onMenuModeChange(MenuBuilder menuBuilder) {
    }

    PopupMenu$1(PopupMenu popupMenu) {
        this.this$0 = popupMenu;
    }

    @Override // android.support.v7.view.menu.MenuBuilder$Callback
    public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
        if (this.this$0.mMenuItemClickListener != null) {
            return this.this$0.mMenuItemClickListener.onMenuItemClick(menuItem);
        }
        return false;
    }
}
