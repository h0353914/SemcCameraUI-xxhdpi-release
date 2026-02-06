package android.support.v7.view.menu;

import android.support.annotation.NonNull;
import android.support.v7.widget.MenuPopupWindow;
import android.widget.ListView;

class CascadingMenuPopup$CascadingMenuInfo {
    public final MenuBuilder menu;
    public final int position;
    public final MenuPopupWindow window;

    public CascadingMenuPopup$CascadingMenuInfo(@NonNull MenuPopupWindow menuPopupWindow, @NonNull MenuBuilder menuBuilder, int i) {
        this.window = menuPopupWindow;
        this.menu = menuBuilder;
        this.position = i;
    }

    public ListView getListView() {
        return this.window.getListView();
    }
}
