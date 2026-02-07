package android.support.v7.app;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;

/* JADX INFO: loaded from: classes.dex */
class AlertController$AlertParams$1 extends ArrayAdapter<CharSequence> {
    final /* synthetic */ AlertController$AlertParams this$0;
    final /* synthetic */ AlertController$RecycleListView val$listView;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AlertController$AlertParams$1(AlertController$AlertParams alertController$AlertParams, Context context, int i, int i2, CharSequence[] charSequenceArr, AlertController$RecycleListView alertController$RecycleListView) {
        super(context, i, i2, charSequenceArr);
        this.this$0 = alertController$AlertParams;
        this.val$listView = alertController$RecycleListView;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = super.getView(i, view, viewGroup);
        if (this.this$0.mCheckedItems != null && this.this$0.mCheckedItems[i]) {
            this.val$listView.setItemChecked(i, true);
        }
        return view2;
    }
}
