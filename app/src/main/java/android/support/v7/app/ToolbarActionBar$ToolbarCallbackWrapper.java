package android.support.v7.app;

import android.support.v7.view.WindowCallbackWrapper;
import android.view.Menu;
import android.view.View;
import android.view.Window$Callback;

class ToolbarActionBar$ToolbarCallbackWrapper extends WindowCallbackWrapper {
    final /* synthetic */ ToolbarActionBar this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ToolbarActionBar$ToolbarCallbackWrapper(ToolbarActionBar toolbarActionBar, Window$Callback window$Callback) {
        super(window$Callback);
        this.this$0 = toolbarActionBar;
    }

    @Override // android.support.v7.view.WindowCallbackWrapper, android.view.Window$Callback
    public boolean onPreparePanel(int i, View view, Menu menu) {
        boolean zOnPreparePanel = super.onPreparePanel(i, view, menu);
        if (zOnPreparePanel && !this.this$0.mToolbarMenuPrepared) {
            this.this$0.mDecorToolbar.setMenuPrepared();
            this.this$0.mToolbarMenuPrepared = true;
        }
        return zOnPreparePanel;
    }

    @Override // android.support.v7.view.WindowCallbackWrapper, android.view.Window$Callback
    public View onCreatePanelView(int i) {
        if (i == 0) {
            return new View(this.this$0.mDecorToolbar.getContext());
        }
        return super.onCreatePanelView(i);
    }
}
