package android.support.v7.app;

import android.view.View;
import android.widget.AbsListView;
import android.widget.AbsListView$OnScrollListener;

class AlertController$4 implements AbsListView$OnScrollListener {
    final /* synthetic */ AlertController this$0;
    final /* synthetic */ View val$bottom;
    final /* synthetic */ View val$top;

    @Override // android.widget.AbsListView$OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i) {
    }

    AlertController$4(AlertController alertController, View view, View view2) {
        this.this$0 = alertController;
        this.val$top = view;
        this.val$bottom = view2;
    }

    @Override // android.widget.AbsListView$OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        AlertController.manageScrollIndicators(absListView, this.val$top, this.val$bottom);
    }
}
