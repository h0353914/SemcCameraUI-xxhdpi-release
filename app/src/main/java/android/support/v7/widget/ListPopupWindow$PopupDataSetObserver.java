package android.support.v7.widget;

import android.database.DataSetObserver;

/* JADX INFO: loaded from: classes.dex */
class ListPopupWindow$PopupDataSetObserver extends DataSetObserver {
    final /* synthetic */ ListPopupWindow this$0;

    ListPopupWindow$PopupDataSetObserver(ListPopupWindow listPopupWindow) {
        this.this$0 = listPopupWindow;
    }

    @Override // android.database.DataSetObserver
    public void onChanged() {
        if (this.this$0.isShowing()) {
            this.this$0.show();
        }
    }

    @Override // android.database.DataSetObserver
    public void onInvalidated() {
        this.this$0.dismiss();
    }
}
