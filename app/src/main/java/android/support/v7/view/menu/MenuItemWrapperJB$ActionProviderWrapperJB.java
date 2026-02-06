package android.support.v7.view.menu;

import android.content.Context;
import android.view.ActionProvider;
import android.view.ActionProvider$VisibilityListener;
import android.view.MenuItem;
import android.view.View;

class MenuItemWrapperJB$ActionProviderWrapperJB extends MenuItemWrapperICS$ActionProviderWrapper implements ActionProvider$VisibilityListener {
    android.support.v4.view.ActionProvider$VisibilityListener mListener;
    final /* synthetic */ MenuItemWrapperJB this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MenuItemWrapperJB$ActionProviderWrapperJB(MenuItemWrapperJB menuItemWrapperJB, Context context, ActionProvider actionProvider) {
        super(menuItemWrapperJB, context, actionProvider);
        this.this$0 = menuItemWrapperJB;
    }

    @Override // android.support.v4.view.ActionProvider
    public View onCreateActionView(MenuItem menuItem) {
        return this.mInner.onCreateActionView(menuItem);
    }

    @Override // android.support.v4.view.ActionProvider
    public boolean overridesItemVisibility() {
        return this.mInner.overridesItemVisibility();
    }

    @Override // android.support.v4.view.ActionProvider
    public boolean isVisible() {
        return this.mInner.isVisible();
    }

    @Override // android.support.v4.view.ActionProvider
    public void refreshVisibility() {
        this.mInner.refreshVisibility();
    }

    @Override // android.support.v4.view.ActionProvider
    public void setVisibilityListener(android.support.v4.view.ActionProvider$VisibilityListener actionProvider$VisibilityListener) {
        this.mListener = actionProvider$VisibilityListener;
        ActionProvider actionProvider = this.mInner;
        if (actionProvider$VisibilityListener == null) {
            this = null;
        }
        actionProvider.setVisibilityListener(this);
    }

    @Override // android.view.ActionProvider$VisibilityListener
    public void onActionProviderVisibilityChanged(boolean z) {
        if (this.mListener != null) {
            this.mListener.onActionProviderVisibilityChanged(z);
        }
    }
}
