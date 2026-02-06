package android.support.v7.app;

import android.support.v7.widget.Toolbar$OnMenuItemClickListener;
import android.view.MenuItem;

class ToolbarActionBar$2 implements Toolbar$OnMenuItemClickListener {
    final /* synthetic */ ToolbarActionBar this$0;

    ToolbarActionBar$2(ToolbarActionBar toolbarActionBar) {
        this.this$0 = toolbarActionBar;
    }

    @Override // android.support.v7.widget.Toolbar$OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        return this.this$0.mWindowCallback.onMenuItemSelected(0, menuItem);
    }
}
