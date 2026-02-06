package android.support.v7.view;

import android.content.Context;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.support.v4.internal.view.SupportMenu;
import android.support.v4.internal.view.SupportMenuItem;
import android.support.v4.util.SimpleArrayMap;
import android.support.v7.view.menu.MenuWrapperFactory;
import android.view.Menu;
import android.view.MenuItem;
import java.util.ArrayList;

@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
public class SupportActionModeWrapper$CallbackWrapper implements ActionMode$Callback {
    final Context mContext;
    final android.view.ActionMode$Callback mWrappedCallback;
    final ArrayList<SupportActionModeWrapper> mActionModes = new ArrayList<>();
    final SimpleArrayMap<Menu, Menu> mMenus = new SimpleArrayMap<>();

    public SupportActionModeWrapper$CallbackWrapper(Context context, android.view.ActionMode$Callback actionMode$Callback) {
        this.mContext = context;
        this.mWrappedCallback = actionMode$Callback;
    }

    @Override // android.support.v7.view.ActionMode$Callback
    public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
        return this.mWrappedCallback.onCreateActionMode(getActionModeWrapper(actionMode), getMenuWrapper(menu));
    }

    @Override // android.support.v7.view.ActionMode$Callback
    public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
        return this.mWrappedCallback.onPrepareActionMode(getActionModeWrapper(actionMode), getMenuWrapper(menu));
    }

    @Override // android.support.v7.view.ActionMode$Callback
    public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
        return this.mWrappedCallback.onActionItemClicked(getActionModeWrapper(actionMode), MenuWrapperFactory.wrapSupportMenuItem(this.mContext, (SupportMenuItem) menuItem));
    }

    @Override // android.support.v7.view.ActionMode$Callback
    public void onDestroyActionMode(ActionMode actionMode) {
        this.mWrappedCallback.onDestroyActionMode(getActionModeWrapper(actionMode));
    }

    private Menu getMenuWrapper(Menu menu) {
        Menu menu2 = this.mMenus.get(menu);
        if (menu2 != null) {
            return menu2;
        }
        Menu menuWrapSupportMenu = MenuWrapperFactory.wrapSupportMenu(this.mContext, (SupportMenu) menu);
        this.mMenus.put(menu, menuWrapSupportMenu);
        return menuWrapSupportMenu;
    }

    public android.view.ActionMode getActionModeWrapper(ActionMode actionMode) {
        int size = this.mActionModes.size();
        for (int i = 0; i < size; i++) {
            SupportActionModeWrapper supportActionModeWrapper = this.mActionModes.get(i);
            if (supportActionModeWrapper != null && supportActionModeWrapper.mWrappedObject == actionMode) {
                return supportActionModeWrapper;
            }
        }
        SupportActionModeWrapper supportActionModeWrapper2 = new SupportActionModeWrapper(this.mContext, actionMode);
        this.mActionModes.add(supportActionModeWrapper2);
        return supportActionModeWrapper2;
    }
}
