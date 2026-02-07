package android.support.v7.app;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.annotation.StringRes;

/* JADX INFO: loaded from: classes.dex */
public interface ActionBarDrawerToggle$Delegate {
    Context getActionBarThemedContext();

    Drawable getThemeUpIndicator();

    boolean isNavigationVisible();

    void setActionBarDescription(@StringRes int i);

    void setActionBarUpIndicator(Drawable drawable, @StringRes int i);
}
