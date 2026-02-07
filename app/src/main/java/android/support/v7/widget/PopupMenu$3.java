package android.support.v7.widget;

import android.support.v7.view.menu.ShowableListMenu;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class PopupMenu$3 extends ForwardingListener {
    final /* synthetic */ PopupMenu this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PopupMenu$3(PopupMenu popupMenu, View view) {
        super(view);
        this.this$0 = popupMenu;
    }

    @Override // android.support.v7.widget.ForwardingListener
    protected boolean onForwardingStarted() {
        this.this$0.show();
        return true;
    }

    @Override // android.support.v7.widget.ForwardingListener
    protected boolean onForwardingStopped() {
        this.this$0.dismiss();
        return true;
    }

    @Override // android.support.v7.widget.ForwardingListener
    public ShowableListMenu getPopup() {
        return this.this$0.mPopup.getPopup();
    }
}
