package android.support.v4.app;

import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
import android.support.annotation.StringRes;

@Deprecated
public interface ActionBarDrawerToggle$Delegate {
    @Nullable
    Drawable getThemeUpIndicator();

    void setActionBarDescription(@StringRes int i);

    void setActionBarUpIndicator(Drawable drawable, @StringRes int i);
}
