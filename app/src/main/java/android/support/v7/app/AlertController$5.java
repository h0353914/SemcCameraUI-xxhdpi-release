package android.support.v7.app;

import android.view.View;

class AlertController$5 implements Runnable {
    final /* synthetic */ AlertController this$0;
    final /* synthetic */ View val$bottom;
    final /* synthetic */ View val$top;

    AlertController$5(AlertController alertController, View view, View view2) {
        this.this$0 = alertController;
        this.val$top = view;
        this.val$bottom = view2;
    }

    @Override // java.lang.Runnable
    public void run() {
        AlertController.manageScrollIndicators(this.this$0.mListView, this.val$top, this.val$bottom);
    }
}
