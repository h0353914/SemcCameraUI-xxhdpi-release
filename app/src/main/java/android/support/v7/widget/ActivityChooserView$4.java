package android.support.v7.widget;

import android.support.v7.view.menu.ShowableListMenu;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class ActivityChooserView$4 extends ForwardingListener {
    final /* synthetic */ ActivityChooserView this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ActivityChooserView$4(ActivityChooserView activityChooserView, View view) {
        super(view);
        this.this$0 = activityChooserView;
    }

    @Override // android.support.v7.widget.ForwardingListener
    public ShowableListMenu getPopup() {
        return this.this$0.getListPopupWindow();
    }

    @Override // android.support.v7.widget.ForwardingListener
    protected boolean onForwardingStarted() {
        this.this$0.showPopup();
        return true;
    }

    @Override // android.support.v7.widget.ForwardingListener
    protected boolean onForwardingStopped() {
        this.this$0.dismissPopup();
        return true;
    }
}
