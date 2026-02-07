package android.support.v7.app;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemClickListener;

/* JADX INFO: loaded from: classes.dex */
class AlertController$AlertParams$3 implements AdapterView$OnItemClickListener {
    final /* synthetic */ AlertController$AlertParams this$0;
    final /* synthetic */ AlertController val$dialog;

    AlertController$AlertParams$3(AlertController$AlertParams alertController$AlertParams, AlertController alertController) {
        this.this$0 = alertController$AlertParams;
        this.val$dialog = alertController;
    }

    @Override // android.widget.AdapterView$OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.this$0.mOnClickListener.onClick(this.val$dialog.mDialog, i);
        if (this.this$0.mIsSingleChoice) {
            return;
        }
        this.val$dialog.mDialog.dismiss();
    }
}
