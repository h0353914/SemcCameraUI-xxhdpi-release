package android.support.v7.widget;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemClickListener;

class SearchView$8 implements AdapterView$OnItemClickListener {
    final /* synthetic */ SearchView this$0;

    SearchView$8(SearchView searchView) {
        this.this$0 = searchView;
    }

    @Override // android.widget.AdapterView$OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.this$0.onItemClicked(i, 0, null);
    }
}
