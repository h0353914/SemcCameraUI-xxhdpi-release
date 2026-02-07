package android.support.v7.view.menu;

import android.content.Context;
import android.os.Parcelable;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
public interface MenuPresenter {
    boolean collapseItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl);

    boolean expandItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl);

    boolean flagActionItems();

    int getId();

    MenuView getMenuView(ViewGroup viewGroup);

    void initForMenu(Context context, MenuBuilder menuBuilder);

    void onCloseMenu(MenuBuilder menuBuilder, boolean z);

    void onRestoreInstanceState(Parcelable parcelable);

    Parcelable onSaveInstanceState();

    boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder);

    void setCallback(MenuPresenter$Callback menuPresenter$Callback);

    void updateMenuView(boolean z);
}
