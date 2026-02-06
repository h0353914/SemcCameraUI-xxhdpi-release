package android.support.v7.app;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemClickListener;

class AlertController$AlertParams$4 implements AdapterView$OnItemClickListener {
    final /* synthetic */ AlertController$AlertParams this$0;
    final /* synthetic */ AlertController val$dialog;
    final /* synthetic */ AlertController$RecycleListView val$listView;

    AlertController$AlertParams$4(AlertController$AlertParams alertController$AlertParams, AlertController$RecycleListView alertController$RecycleListView, AlertController alertController) {
        this.this$0 = alertController$AlertParams;
        this.val$listView = alertController$RecycleListView;
        this.val$dialog = alertController;
    }

    @Override // android.widget.AdapterView$OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        if (this.this$0.mCheckedItems != null) {
            this.this$0.mCheckedItems[i] = this.val$listView.isItemChecked(i);
        }
        this.this$0.mOnCheckboxClickListener.onClick(this.val$dialog.mDialog, i, this.val$listView.isItemChecked(i));
    }
}
