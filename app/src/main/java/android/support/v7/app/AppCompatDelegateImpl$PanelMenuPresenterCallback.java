package android.support.v7.app;

import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuPresenter$Callback;
import android.view.Window$Callback;

/* JADX INFO: loaded from: classes.dex */
final class AppCompatDelegateImpl$PanelMenuPresenterCallback implements MenuPresenter$Callback {
    final /* synthetic */ AppCompatDelegateImpl this$0;

    AppCompatDelegateImpl$PanelMenuPresenterCallback(AppCompatDelegateImpl appCompatDelegateImpl) {
        this.this$0 = appCompatDelegateImpl;
    }

    @Override // android.support.v7.view.menu.MenuPresenter$Callback
    public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        MenuBuilder rootMenu = menuBuilder.getRootMenu();
        boolean z2 = rootMenu != menuBuilder;
        AppCompatDelegateImpl appCompatDelegateImpl = this.this$0;
        if (z2) {
            menuBuilder = rootMenu;
        }
        AppCompatDelegateImpl$PanelFeatureState appCompatDelegateImpl$PanelFeatureStateFindMenuPanel = appCompatDelegateImpl.findMenuPanel(menuBuilder);
        if (appCompatDelegateImpl$PanelFeatureStateFindMenuPanel != null) {
            if (z2) {
                this.this$0.callOnPanelClosed(appCompatDelegateImpl$PanelFeatureStateFindMenuPanel.featureId, appCompatDelegateImpl$PanelFeatureStateFindMenuPanel, rootMenu);
                this.this$0.closePanel(appCompatDelegateImpl$PanelFeatureStateFindMenuPanel, true);
            } else {
                this.this$0.closePanel(appCompatDelegateImpl$PanelFeatureStateFindMenuPanel, z);
            }
        }
    }

    @Override // android.support.v7.view.menu.MenuPresenter$Callback
    public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
        Window$Callback windowCallback;
        if (menuBuilder != null || !this.this$0.mHasActionBar || (windowCallback = this.this$0.getWindowCallback()) == null || this.this$0.mIsDestroyed) {
            return true;
        }
        windowCallback.onMenuOpened(108, menuBuilder);
        return true;
    }
}
