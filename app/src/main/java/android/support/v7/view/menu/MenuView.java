package android.support.v7.view.menu;

import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;

@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
public interface MenuView {
    int getWindowAnimations();

    void initialize(MenuBuilder menuBuilder);
}
