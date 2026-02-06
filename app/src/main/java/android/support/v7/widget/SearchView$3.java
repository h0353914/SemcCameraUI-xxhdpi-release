package android.support.v7.widget;

import android.view.View;
import android.view.View$OnFocusChangeListener;

class SearchView$3 implements View$OnFocusChangeListener {
    final /* synthetic */ SearchView this$0;

    SearchView$3(SearchView searchView) {
        this.this$0 = searchView;
    }

    @Override // android.view.View$OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        if (this.this$0.mOnQueryTextFocusChangeListener != null) {
            this.this$0.mOnQueryTextFocusChangeListener.onFocusChange(this.this$0, z);
        }
    }
}
