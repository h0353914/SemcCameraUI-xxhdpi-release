package android.support.v7.app;

import android.os.Build$VERSION;
import android.support.annotation.RequiresApi;
import android.support.v7.view.SupportActionModeWrapper$CallbackWrapper;
import android.support.v7.view.WindowCallbackWrapper;
import android.support.v7.view.menu.MenuBuilder;
import android.view.ActionMode;
import android.view.ActionMode$Callback;
import android.view.KeyEvent;
import android.view.KeyboardShortcutGroup;
import android.view.Menu;
import android.view.View;
import android.view.Window$Callback;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class AppCompatDelegateImpl$AppCompatWindowCallback extends WindowCallbackWrapper {
    final /* synthetic */ AppCompatDelegateImpl this$0;

    @Override // android.support.v7.view.WindowCallbackWrapper, android.view.Window$Callback
    public void onContentChanged() {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AppCompatDelegateImpl$AppCompatWindowCallback(AppCompatDelegateImpl appCompatDelegateImpl, Window$Callback window$Callback) {
        super(window$Callback);
        this.this$0 = appCompatDelegateImpl;
    }

    @Override // android.support.v7.view.WindowCallbackWrapper, android.view.Window$Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return this.this$0.dispatchKeyEvent(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.support.v7.view.WindowCallbackWrapper, android.view.Window$Callback
    public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        return super.dispatchKeyShortcutEvent(keyEvent) || this.this$0.onKeyShortcut(keyEvent.getKeyCode(), keyEvent);
    }

    @Override // android.support.v7.view.WindowCallbackWrapper, android.view.Window$Callback
    public boolean onCreatePanelMenu(int i, Menu menu) {
        if (i != 0 || (menu instanceof MenuBuilder)) {
            return super.onCreatePanelMenu(i, menu);
        }
        return false;
    }

    @Override // android.support.v7.view.WindowCallbackWrapper, android.view.Window$Callback
    public boolean onPreparePanel(int i, View view, Menu menu) {
        MenuBuilder menuBuilder = menu instanceof MenuBuilder ? (MenuBuilder) menu : null;
        if (i == 0 && menuBuilder == null) {
            return false;
        }
        if (menuBuilder != null) {
            menuBuilder.setOverrideVisibleItems(true);
        }
        boolean zOnPreparePanel = super.onPreparePanel(i, view, menu);
        if (menuBuilder != null) {
            menuBuilder.setOverrideVisibleItems(false);
        }
        return zOnPreparePanel;
    }

    @Override // android.support.v7.view.WindowCallbackWrapper, android.view.Window$Callback
    public boolean onMenuOpened(int i, Menu menu) {
        super.onMenuOpened(i, menu);
        this.this$0.onMenuOpened(i);
        return true;
    }

    @Override // android.support.v7.view.WindowCallbackWrapper, android.view.Window$Callback
    public void onPanelClosed(int i, Menu menu) {
        super.onPanelClosed(i, menu);
        this.this$0.onPanelClosed(i);
    }

    @Override // android.support.v7.view.WindowCallbackWrapper, android.view.Window$Callback
    public ActionMode onWindowStartingActionMode(ActionMode$Callback actionMode$Callback) {
        if (Build$VERSION.SDK_INT >= 23) {
            return null;
        }
        if (this.this$0.isHandleNativeActionModesEnabled()) {
            return startAsSupportActionMode(actionMode$Callback);
        }
        return super.onWindowStartingActionMode(actionMode$Callback);
    }

    final ActionMode startAsSupportActionMode(ActionMode$Callback actionMode$Callback) {
        SupportActionModeWrapper$CallbackWrapper supportActionModeWrapper$CallbackWrapper = new SupportActionModeWrapper$CallbackWrapper(this.this$0.mContext, actionMode$Callback);
        android.support.v7.view.ActionMode actionModeStartSupportActionMode = this.this$0.startSupportActionMode(supportActionModeWrapper$CallbackWrapper);
        if (actionModeStartSupportActionMode != null) {
            return supportActionModeWrapper$CallbackWrapper.getActionModeWrapper(actionModeStartSupportActionMode);
        }
        return null;
    }

    @Override // android.support.v7.view.WindowCallbackWrapper, android.view.Window$Callback
    @RequiresApi(23)
    public ActionMode onWindowStartingActionMode(ActionMode$Callback actionMode$Callback, int i) {
        if (this.this$0.isHandleNativeActionModesEnabled() && i == 0) {
            return startAsSupportActionMode(actionMode$Callback);
        }
        return super.onWindowStartingActionMode(actionMode$Callback, i);
    }

    @Override // android.support.v7.view.WindowCallbackWrapper, android.view.Window$Callback
    @RequiresApi(24)
    public void onProvideKeyboardShortcuts(List<KeyboardShortcutGroup> list, Menu menu, int i) {
        AppCompatDelegateImpl$PanelFeatureState panelState = this.this$0.getPanelState(0, true);
        if (panelState != null && panelState.menu != null) {
            super.onProvideKeyboardShortcuts(list, panelState.menu, i);
        } else {
            super.onProvideKeyboardShortcuts(list, menu, i);
        }
    }
}
