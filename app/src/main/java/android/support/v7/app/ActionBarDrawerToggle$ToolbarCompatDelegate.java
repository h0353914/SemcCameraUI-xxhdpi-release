package android.support.v7.app;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.annotation.StringRes;
import android.support.v7.widget.Toolbar;

class ActionBarDrawerToggle$ToolbarCompatDelegate implements ActionBarDrawerToggle$Delegate {
    final CharSequence mDefaultContentDescription;
    final Drawable mDefaultUpIndicator;
    final Toolbar mToolbar;

    @Override // android.support.v7.app.ActionBarDrawerToggle$Delegate
    public boolean isNavigationVisible() {
        return true;
    }

    ActionBarDrawerToggle$ToolbarCompatDelegate(Toolbar toolbar) {
        this.mToolbar = toolbar;
        this.mDefaultUpIndicator = toolbar.getNavigationIcon();
        this.mDefaultContentDescription = toolbar.getNavigationContentDescription();
    }

    @Override // android.support.v7.app.ActionBarDrawerToggle$Delegate
    public void setActionBarUpIndicator(Drawable drawable, @StringRes int i) {
        this.mToolbar.setNavigationIcon(drawable);
        setActionBarDescription(i);
    }

    @Override // android.support.v7.app.ActionBarDrawerToggle$Delegate
    public void setActionBarDescription(@StringRes int i) {
        if (i == 0) {
            this.mToolbar.setNavigationContentDescription(this.mDefaultContentDescription);
        } else {
            this.mToolbar.setNavigationContentDescription(i);
        }
    }

    @Override // android.support.v7.app.ActionBarDrawerToggle$Delegate
    public Drawable getThemeUpIndicator() {
        return this.mDefaultUpIndicator;
    }

    @Override // android.support.v7.app.ActionBarDrawerToggle$Delegate
    public Context getActionBarThemedContext() {
        return this.mToolbar.getContext();
    }
}
