package android.support.v7.view.menu;

import android.os.SystemClock;
import android.support.annotation.NonNull;
import android.support.v7.widget.MenuItemHoverListener;
import android.view.MenuItem;

class CascadingMenuPopup$3 implements MenuItemHoverListener {
    final /* synthetic */ CascadingMenuPopup this$0;

    CascadingMenuPopup$3(CascadingMenuPopup cascadingMenuPopup) {
        this.this$0 = cascadingMenuPopup;
    }

    @Override // android.support.v7.widget.MenuItemHoverListener
    public void onItemHoverExit(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
        this.this$0.mSubMenuHoverHandler.removeCallbacksAndMessages(menuBuilder);
    }

    @Override // android.support.v7.widget.MenuItemHoverListener
    public void onItemHoverEnter(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
        this.this$0.mSubMenuHoverHandler.removeCallbacksAndMessages(null);
        int size = this.this$0.mShowingMenus.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                i = -1;
                break;
            } else if (menuBuilder == this.this$0.mShowingMenus.get(i).menu) {
                break;
            } else {
                i++;
            }
        }
        if (i == -1) {
            return;
        }
        int i2 = i + 1;
        this.this$0.mSubMenuHoverHandler.postAtTime(new CascadingMenuPopup$3$1(this, i2 < this.this$0.mShowingMenus.size() ? this.this$0.mShowingMenus.get(i2) : null, menuItem, menuBuilder), menuBuilder, SystemClock.uptimeMillis() + 200);
    }
}
