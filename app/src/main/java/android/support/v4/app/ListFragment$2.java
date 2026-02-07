package android.support.v4.app;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemClickListener;
import android.widget.ListView;

/* JADX INFO: loaded from: classes.dex */
class ListFragment$2 implements AdapterView$OnItemClickListener {
    final /* synthetic */ ListFragment this$0;

    ListFragment$2(ListFragment listFragment) {
        this.this$0 = listFragment;
    }

    @Override // android.widget.AdapterView$OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.this$0.onListItemClick((ListView) adapterView, view, i, j);
    }
}
