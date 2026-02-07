package android.support.v7.widget;

import android.view.MenuItem;

/* JADX INFO: loaded from: classes.dex */
class Toolbar$1 implements ActionMenuView$OnMenuItemClickListener {
    final /* synthetic */ Toolbar this$0;

    Toolbar$1(Toolbar toolbar) {
        this.this$0 = toolbar;
    }

    @Override // android.support.v7.widget.ActionMenuView$OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        if (this.this$0.mOnMenuItemClickListener != null) {
            return this.this$0.mOnMenuItemClickListener.onMenuItemClick(menuItem);
        }
        return false;
    }
}
