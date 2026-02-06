package android.support.v7.app;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v7.appcompat.R$attr;
import android.support.v7.widget.TintTypedArray;
import android.util.AttributeSet;

class AppCompatDelegateImpl$ActionBarDrawableToggleImpl implements ActionBarDrawerToggle$Delegate {
    final /* synthetic */ AppCompatDelegateImpl this$0;

    AppCompatDelegateImpl$ActionBarDrawableToggleImpl(AppCompatDelegateImpl appCompatDelegateImpl) {
        this.this$0 = appCompatDelegateImpl;
    }

    @Override // android.support.v7.app.ActionBarDrawerToggle$Delegate
    public Drawable getThemeUpIndicator() {
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(getActionBarThemedContext(), (AttributeSet) null, new int[]{R$attr.homeAsUpIndicator});
        Drawable drawable = tintTypedArrayObtainStyledAttributes.getDrawable(0);
        tintTypedArrayObtainStyledAttributes.recycle();
        return drawable;
    }

    @Override // android.support.v7.app.ActionBarDrawerToggle$Delegate
    public Context getActionBarThemedContext() {
        return this.this$0.getActionBarThemedContext();
    }

    @Override // android.support.v7.app.ActionBarDrawerToggle$Delegate
    public boolean isNavigationVisible() {
        ActionBar supportActionBar = this.this$0.getSupportActionBar();
        return (supportActionBar == null || (supportActionBar.getDisplayOptions() & 4) == 0) ? false : true;
    }

    @Override // android.support.v7.app.ActionBarDrawerToggle$Delegate
    public void setActionBarUpIndicator(Drawable drawable, int i) {
        ActionBar supportActionBar = this.this$0.getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setHomeAsUpIndicator(drawable);
            supportActionBar.setHomeActionContentDescription(i);
        }
    }

    @Override // android.support.v7.app.ActionBarDrawerToggle$Delegate
    public void setActionBarDescription(int i) {
        ActionBar supportActionBar = this.this$0.getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setHomeActionContentDescription(i);
        }
    }
}
