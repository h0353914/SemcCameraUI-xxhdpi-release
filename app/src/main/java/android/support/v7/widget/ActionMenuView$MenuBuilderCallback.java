package android.support.v7.widget;

import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuBuilder$Callback;
import android.view.MenuItem;

class ActionMenuView$MenuBuilderCallback implements MenuBuilder$Callback {
    final /* synthetic */ ActionMenuView this$0;

    ActionMenuView$MenuBuilderCallback(ActionMenuView actionMenuView) {
        this.this$0 = actionMenuView;
    }

    @Override // android.support.v7.view.menu.MenuBuilder$Callback
    public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
        return this.this$0.mOnMenuItemClickListener != null && this.this$0.mOnMenuItemClickListener.onMenuItemClick(menuItem);
    }

    @Override // android.support.v7.view.menu.MenuBuilder$Callback
    public void onMenuModeChange(MenuBuilder menuBuilder) {
        if (this.this$0.mMenuBuilderCallback != null) {
            this.this$0.mMenuBuilderCallback.onMenuModeChange(menuBuilder);
        }
    }
}
