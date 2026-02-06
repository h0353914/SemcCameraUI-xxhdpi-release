package android.support.v7.app;

import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuBuilder$Callback;
import android.view.MenuItem;

final class ToolbarActionBar$MenuBuilderCallback implements MenuBuilder$Callback {
    final /* synthetic */ ToolbarActionBar this$0;

    @Override // android.support.v7.view.menu.MenuBuilder$Callback
    public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
        return false;
    }

    ToolbarActionBar$MenuBuilderCallback(ToolbarActionBar toolbarActionBar) {
        this.this$0 = toolbarActionBar;
    }

    @Override // android.support.v7.view.menu.MenuBuilder$Callback
    public void onMenuModeChange(MenuBuilder menuBuilder) {
        if (this.this$0.mWindowCallback != null) {
            if (this.this$0.mDecorToolbar.isOverflowMenuShowing()) {
                this.this$0.mWindowCallback.onPanelClosed(108, menuBuilder);
            } else if (this.this$0.mWindowCallback.onPreparePanel(0, null, menuBuilder)) {
                this.this$0.mWindowCallback.onMenuOpened(108, menuBuilder);
            }
        }
    }
}
