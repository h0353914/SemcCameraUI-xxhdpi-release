package android.support.v7.app;

import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuPresenter$Callback;
import android.view.Window$Callback;

/* JADX INFO: loaded from: classes.dex */
final class AppCompatDelegateImpl$ActionMenuPresenterCallback implements MenuPresenter$Callback {
    final /* synthetic */ AppCompatDelegateImpl this$0;

    AppCompatDelegateImpl$ActionMenuPresenterCallback(AppCompatDelegateImpl appCompatDelegateImpl) {
        this.this$0 = appCompatDelegateImpl;
    }

    @Override // android.support.v7.view.menu.MenuPresenter$Callback
    public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
        Window$Callback windowCallback = this.this$0.getWindowCallback();
        if (windowCallback == null) {
            return true;
        }
        windowCallback.onMenuOpened(108, menuBuilder);
        return true;
    }

    @Override // android.support.v7.view.menu.MenuPresenter$Callback
    public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        this.this$0.checkCloseActionMenu(menuBuilder);
    }
}
