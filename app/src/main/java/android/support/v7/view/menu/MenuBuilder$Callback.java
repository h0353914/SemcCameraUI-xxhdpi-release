package android.support.v7.view.menu;

import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.view.MenuItem;

@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
public interface MenuBuilder$Callback {
    boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem);

    void onMenuModeChange(MenuBuilder menuBuilder);
}
