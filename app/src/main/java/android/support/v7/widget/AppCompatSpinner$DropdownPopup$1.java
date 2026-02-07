package android.support.v7.widget;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemClickListener;

/* JADX INFO: loaded from: classes.dex */
class AppCompatSpinner$DropdownPopup$1 implements AdapterView$OnItemClickListener {
    final /* synthetic */ AppCompatSpinner$DropdownPopup this$1;
    final /* synthetic */ AppCompatSpinner val$this$0;

    AppCompatSpinner$DropdownPopup$1(AppCompatSpinner$DropdownPopup appCompatSpinner$DropdownPopup, AppCompatSpinner appCompatSpinner) {
        this.this$1 = appCompatSpinner$DropdownPopup;
        this.val$this$0 = appCompatSpinner;
    }

    @Override // android.widget.AdapterView$OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.this$1.this$0.setSelection(i);
        if (this.this$1.this$0.getOnItemClickListener() != null) {
            this.this$1.this$0.performItemClick(view, i, this.this$1.mAdapter.getItemId(i));
        }
        this.this$1.dismiss();
    }
}
