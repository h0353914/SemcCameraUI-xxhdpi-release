package android.support.v7.app;

import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuPresenter$Callback;

final class ToolbarActionBar$ActionMenuPresenterCallback implements MenuPresenter$Callback {
    private boolean mClosingActionMenu;
    final /* synthetic */ ToolbarActionBar this$0;

    ToolbarActionBar$ActionMenuPresenterCallback(ToolbarActionBar toolbarActionBar) {
        this.this$0 = toolbarActionBar;
    }

    @Override // android.support.v7.view.menu.MenuPresenter$Callback
    public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
        if (this.this$0.mWindowCallback == null) {
            return false;
        }
        this.this$0.mWindowCallback.onMenuOpened(108, menuBuilder);
        return true;
    }

    @Override // android.support.v7.view.menu.MenuPresenter$Callback
    public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        if (this.mClosingActionMenu) {
            return;
        }
        this.mClosingActionMenu = true;
        this.this$0.mDecorToolbar.dismissPopupMenus();
        if (this.this$0.mWindowCallback != null) {
            this.this$0.mWindowCallback.onPanelClosed(108, menuBuilder);
        }
        this.mClosingActionMenu = false;
    }
}
