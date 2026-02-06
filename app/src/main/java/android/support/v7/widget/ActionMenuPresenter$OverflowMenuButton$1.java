package android.support.v7.widget;

import android.support.v7.view.menu.ShowableListMenu;
import android.view.View;

class ActionMenuPresenter$OverflowMenuButton$1 extends ForwardingListener {
    final /* synthetic */ ActionMenuPresenter$OverflowMenuButton this$1;
    final /* synthetic */ ActionMenuPresenter val$this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ActionMenuPresenter$OverflowMenuButton$1(ActionMenuPresenter$OverflowMenuButton actionMenuPresenter$OverflowMenuButton, View view, ActionMenuPresenter actionMenuPresenter) {
        super(view);
        this.this$1 = actionMenuPresenter$OverflowMenuButton;
        this.val$this$0 = actionMenuPresenter;
    }

    @Override // android.support.v7.widget.ForwardingListener
    public ShowableListMenu getPopup() {
        if (this.this$1.this$0.mOverflowPopup == null) {
            return null;
        }
        return this.this$1.this$0.mOverflowPopup.getPopup();
    }

    @Override // android.support.v7.widget.ForwardingListener
    public boolean onForwardingStarted() {
        this.this$1.this$0.showOverflowMenu();
        return true;
    }

    @Override // android.support.v7.widget.ForwardingListener
    public boolean onForwardingStopped() {
        if (this.this$1.this$0.mPostedOpenRunnable != null) {
            return false;
        }
        this.this$1.this$0.hideOverflowMenu();
        return true;
    }
}
