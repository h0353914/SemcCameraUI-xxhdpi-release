package android.support.v7.widget;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemSelectedListener;

/* JADX INFO: loaded from: classes.dex */
class SearchView$9 implements AdapterView$OnItemSelectedListener {
    final /* synthetic */ SearchView this$0;

    @Override // android.widget.AdapterView$OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    SearchView$9(SearchView searchView) {
        this.this$0 = searchView;
    }

    @Override // android.widget.AdapterView$OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        this.this$0.onItemSelected(i);
    }
}
