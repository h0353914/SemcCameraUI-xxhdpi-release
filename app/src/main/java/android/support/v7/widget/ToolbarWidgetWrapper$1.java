package android.support.v7.widget;

import android.support.v7.view.menu.ActionMenuItem;
import android.view.View;
import android.view.View$OnClickListener;

class ToolbarWidgetWrapper$1 implements View$OnClickListener {
    final ActionMenuItem mNavItem;
    final /* synthetic */ ToolbarWidgetWrapper this$0;

    ToolbarWidgetWrapper$1(ToolbarWidgetWrapper toolbarWidgetWrapper) {
        this.this$0 = toolbarWidgetWrapper;
        this.mNavItem = new ActionMenuItem(this.this$0.mToolbar.getContext(), 0, 16908332, 0, 0, this.this$0.mTitle);
    }

    @Override // android.view.View$OnClickListener
    public void onClick(View view) {
        if (this.this$0.mWindowCallback == null || !this.this$0.mMenuPrepared) {
            return;
        }
        this.this$0.mWindowCallback.onMenuItemSelected(0, this.mNavItem);
    }
}
