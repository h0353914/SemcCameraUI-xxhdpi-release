package android.support.v7.app;

import android.content.Context;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.support.v7.view.ActionMode;
import android.support.v7.view.ActionMode$Callback;
import android.support.v7.view.SupportMenuInflater;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuBuilder$Callback;
import android.support.v7.view.menu.MenuPopupHelper;
import android.support.v7.view.menu.SubMenuBuilder;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import java.lang.ref.WeakReference;

@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
public class WindowDecorActionBar$ActionModeImpl extends ActionMode implements MenuBuilder$Callback {
    private final Context mActionModeContext;
    private ActionMode$Callback mCallback;
    private WeakReference<View> mCustomView;
    private final MenuBuilder mMenu;
    final /* synthetic */ WindowDecorActionBar this$0;

    public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
    }

    public void onCloseSubMenu(SubMenuBuilder subMenuBuilder) {
    }

    public WindowDecorActionBar$ActionModeImpl(WindowDecorActionBar windowDecorActionBar, Context context, ActionMode$Callback actionMode$Callback) {
        this.this$0 = windowDecorActionBar;
        this.mActionModeContext = context;
        this.mCallback = actionMode$Callback;
        this.mMenu = new MenuBuilder(context).setDefaultShowAsAction(1);
        this.mMenu.setCallback(this);
    }

    @Override // android.support.v7.view.ActionMode
    public MenuInflater getMenuInflater() {
        return new SupportMenuInflater(this.mActionModeContext);
    }

    @Override // android.support.v7.view.ActionMode
    public Menu getMenu() {
        return this.mMenu;
    }

    @Override // android.support.v7.view.ActionMode
    public void finish() {
        if (this.this$0.mActionMode != this) {
            return;
        }
        if (!WindowDecorActionBar.checkShowingFlags(this.this$0.mHiddenByApp, this.this$0.mHiddenBySystem, false)) {
            this.this$0.mDeferredDestroyActionMode = this;
            this.this$0.mDeferredModeDestroyCallback = this.mCallback;
        } else {
            this.mCallback.onDestroyActionMode(this);
        }
        this.mCallback = null;
        this.this$0.animateToMode(false);
        this.this$0.mContextView.closeMode();
        this.this$0.mDecorToolbar.getViewGroup().sendAccessibilityEvent(32);
        this.this$0.mOverlayLayout.setHideOnContentScrollEnabled(this.this$0.mHideOnContentScroll);
        this.this$0.mActionMode = null;
    }

    @Override // android.support.v7.view.ActionMode
    public void invalidate() {
        if (this.this$0.mActionMode != this) {
            return;
        }
        this.mMenu.stopDispatchingItemsChanged();
        try {
            this.mCallback.onPrepareActionMode(this, this.mMenu);
        } finally {
            this.mMenu.startDispatchingItemsChanged();
        }
    }

    public boolean dispatchOnCreate() {
        this.mMenu.stopDispatchingItemsChanged();
        try {
            return this.mCallback.onCreateActionMode(this, this.mMenu);
        } finally {
            this.mMenu.startDispatchingItemsChanged();
        }
    }

    @Override // android.support.v7.view.ActionMode
    public void setCustomView(View view) {
        this.this$0.mContextView.setCustomView(view);
        this.mCustomView = new WeakReference<>(view);
    }

    @Override // android.support.v7.view.ActionMode
    public void setSubtitle(CharSequence charSequence) {
        this.this$0.mContextView.setSubtitle(charSequence);
    }

    @Override // android.support.v7.view.ActionMode
    public void setTitle(CharSequence charSequence) {
        this.this$0.mContextView.setTitle(charSequence);
    }

    @Override // android.support.v7.view.ActionMode
    public void setTitle(int i) {
        setTitle(this.this$0.mContext.getResources().getString(i));
    }

    @Override // android.support.v7.view.ActionMode
    public void setSubtitle(int i) {
        setSubtitle(this.this$0.mContext.getResources().getString(i));
    }

    @Override // android.support.v7.view.ActionMode
    public CharSequence getTitle() {
        return this.this$0.mContextView.getTitle();
    }

    @Override // android.support.v7.view.ActionMode
    public CharSequence getSubtitle() {
        return this.this$0.mContextView.getSubtitle();
    }

    @Override // android.support.v7.view.ActionMode
    public void setTitleOptionalHint(boolean z) {
        super.setTitleOptionalHint(z);
        this.this$0.mContextView.setTitleOptional(z);
    }

    @Override // android.support.v7.view.ActionMode
    public boolean isTitleOptional() {
        return this.this$0.mContextView.isTitleOptional();
    }

    @Override // android.support.v7.view.ActionMode
    public View getCustomView() {
        if (this.mCustomView != null) {
            return this.mCustomView.get();
        }
        return null;
    }

    @Override // android.support.v7.view.menu.MenuBuilder$Callback
    public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
        if (this.mCallback != null) {
            return this.mCallback.onActionItemClicked(this, menuItem);
        }
        return false;
    }

    public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
        if (this.mCallback == null) {
            return false;
        }
        if (!subMenuBuilder.hasVisibleItems()) {
            return true;
        }
        new MenuPopupHelper(this.this$0.getThemedContext(), subMenuBuilder).show();
        return true;
    }

    @Override // android.support.v7.view.menu.MenuBuilder$Callback
    public void onMenuModeChange(MenuBuilder menuBuilder) {
        if (this.mCallback == null) {
            return;
        }
        invalidate();
        this.this$0.mContextView.showOverflowMenu();
    }
}
