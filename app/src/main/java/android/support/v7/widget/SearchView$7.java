package android.support.v7.widget;

import android.view.KeyEvent;
import android.widget.TextView;
import android.widget.TextView$OnEditorActionListener;

class SearchView$7 implements TextView$OnEditorActionListener {
    final /* synthetic */ SearchView this$0;

    SearchView$7(SearchView searchView) {
        this.this$0 = searchView;
    }

    @Override // android.widget.TextView$OnEditorActionListener
    public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        this.this$0.onSubmitQuery();
        return true;
    }
}
