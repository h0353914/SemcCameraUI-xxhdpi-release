package android.support.v7.app;

import android.support.v4.widget.NestedScrollView;
import android.support.v4.widget.NestedScrollView$OnScrollChangeListener;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class AlertController$2 implements NestedScrollView$OnScrollChangeListener {
    final /* synthetic */ AlertController this$0;
    final /* synthetic */ View val$bottom;
    final /* synthetic */ View val$top;

    AlertController$2(AlertController alertController, View view, View view2) {
        this.this$0 = alertController;
        this.val$top = view;
        this.val$bottom = view2;
    }

    @Override // android.support.v4.widget.NestedScrollView$OnScrollChangeListener
    public void onScrollChange(NestedScrollView nestedScrollView, int i, int i2, int i3, int i4) {
        AlertController.manageScrollIndicators(nestedScrollView, this.val$top, this.val$bottom);
    }
}
