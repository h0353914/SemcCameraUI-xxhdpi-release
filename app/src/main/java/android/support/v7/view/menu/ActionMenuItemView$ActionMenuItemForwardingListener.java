package android.support.v7.view.menu;

import android.support.v7.widget.ForwardingListener;

class ActionMenuItemView$ActionMenuItemForwardingListener extends ForwardingListener {
    final /* synthetic */ ActionMenuItemView this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActionMenuItemView$ActionMenuItemForwardingListener(ActionMenuItemView actionMenuItemView) {
        super(actionMenuItemView);
        this.this$0 = actionMenuItemView;
    }

    @Override // android.support.v7.widget.ForwardingListener
    public ShowableListMenu getPopup() {
        if (this.this$0.mPopupCallback != null) {
            return this.this$0.mPopupCallback.getPopup();
        }
        return null;
    }

    @Override // android.support.v7.widget.ForwardingListener
    protected boolean onForwardingStarted() {
        ShowableListMenu popup;
        return this.this$0.mItemInvoker != null && this.this$0.mItemInvoker.invokeItem(this.this$0.mItemData) && (popup = getPopup()) != null && popup.isShowing();
    }
}
