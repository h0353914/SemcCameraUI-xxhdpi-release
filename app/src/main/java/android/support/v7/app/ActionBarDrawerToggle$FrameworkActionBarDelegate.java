package android.support.v7.app;

import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build$VERSION;

class ActionBarDrawerToggle$FrameworkActionBarDelegate implements ActionBarDrawerToggle$Delegate {
    private final Activity mActivity;
    private ActionBarDrawerToggleHoneycomb$SetIndicatorInfo mSetIndicatorInfo;

    ActionBarDrawerToggle$FrameworkActionBarDelegate(Activity activity) {
        this.mActivity = activity;
    }

    @Override // android.support.v7.app.ActionBarDrawerToggle$Delegate
    public Drawable getThemeUpIndicator() {
        if (Build$VERSION.SDK_INT >= 18) {
            TypedArray typedArrayObtainStyledAttributes = getActionBarThemedContext().obtainStyledAttributes(null, new int[]{16843531}, 16843470, 0);
            Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(0);
            typedArrayObtainStyledAttributes.recycle();
            return drawable;
        }
        return ActionBarDrawerToggleHoneycomb.getThemeUpIndicator(this.mActivity);
    }

    @Override // android.support.v7.app.ActionBarDrawerToggle$Delegate
    public Context getActionBarThemedContext() {
        android.app.ActionBar actionBar = this.mActivity.getActionBar();
        if (actionBar != null) {
            return actionBar.getThemedContext();
        }
        return this.mActivity;
    }

    @Override // android.support.v7.app.ActionBarDrawerToggle$Delegate
    public boolean isNavigationVisible() {
        android.app.ActionBar actionBar = this.mActivity.getActionBar();
        return (actionBar == null || (actionBar.getDisplayOptions() & 4) == 0) ? false : true;
    }

    @Override // android.support.v7.app.ActionBarDrawerToggle$Delegate
    public void setActionBarUpIndicator(Drawable drawable, int i) {
        android.app.ActionBar actionBar = this.mActivity.getActionBar();
        if (actionBar != null) {
            if (Build$VERSION.SDK_INT >= 18) {
                actionBar.setHomeAsUpIndicator(drawable);
                actionBar.setHomeActionContentDescription(i);
            } else {
                actionBar.setDisplayShowHomeEnabled(true);
                this.mSetIndicatorInfo = ActionBarDrawerToggleHoneycomb.setActionBarUpIndicator(this.mSetIndicatorInfo, this.mActivity, drawable, i);
                actionBar.setDisplayShowHomeEnabled(false);
            }
        }
    }

    @Override // android.support.v7.app.ActionBarDrawerToggle$Delegate
    public void setActionBarDescription(int i) {
        if (Build$VERSION.SDK_INT >= 18) {
            android.app.ActionBar actionBar = this.mActivity.getActionBar();
            if (actionBar != null) {
                actionBar.setHomeActionContentDescription(i);
                return;
            }
            return;
        }
        this.mSetIndicatorInfo = ActionBarDrawerToggleHoneycomb.setActionBarDescription(this.mSetIndicatorInfo, this.mActivity, i);
    }
}
