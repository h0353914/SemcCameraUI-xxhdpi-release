package android.support.v7.view.menu;

import android.view.MenuItem;

/* JADX INFO: loaded from: classes.dex */
class CascadingMenuPopup$3$1 implements Runnable {
    final /* synthetic */ CascadingMenuPopup$3 this$1;
    final /* synthetic */ MenuItem val$item;
    final /* synthetic */ MenuBuilder val$menu;
    final /* synthetic */ CascadingMenuPopup$CascadingMenuInfo val$nextInfo;

    CascadingMenuPopup$3$1(CascadingMenuPopup$3 cascadingMenuPopup$3, CascadingMenuPopup$CascadingMenuInfo cascadingMenuPopup$CascadingMenuInfo, MenuItem menuItem, MenuBuilder menuBuilder) {
        this.this$1 = cascadingMenuPopup$3;
        this.val$nextInfo = cascadingMenuPopup$CascadingMenuInfo;
        this.val$item = menuItem;
        this.val$menu = menuBuilder;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.val$nextInfo != null) {
            this.this$1.this$0.mShouldCloseImmediately = true;
            this.val$nextInfo.menu.close(false);
            this.this$1.this$0.mShouldCloseImmediately = false;
        }
        if (this.val$item.isEnabled() && this.val$item.hasSubMenu()) {
            this.val$menu.performItemAction(this.val$item, 4);
        }
    }
}
