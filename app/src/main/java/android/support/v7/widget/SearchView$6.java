package android.support.v7.widget;

import android.view.KeyEvent;
import android.view.View;
import android.view.View$OnKeyListener;

/* JADX INFO: loaded from: classes.dex */
class SearchView$6 implements View$OnKeyListener {
    final /* synthetic */ SearchView this$0;

    SearchView$6(SearchView searchView) {
        this.this$0 = searchView;
    }

    @Override // android.view.View$OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (this.this$0.mSearchable == null) {
            return false;
        }
        if (this.this$0.mSearchSrcTextView.isPopupShowing() && this.this$0.mSearchSrcTextView.getListSelection() != -1) {
            return this.this$0.onSuggestionsKey(view, i, keyEvent);
        }
        if (this.this$0.mSearchSrcTextView.isEmpty() || !keyEvent.hasNoModifiers() || keyEvent.getAction() != 1 || i != 66) {
            return false;
        }
        view.cancelLongPress();
        this.this$0.launchQuerySearch(0, null, this.this$0.mSearchSrcTextView.getText().toString());
        return true;
    }
}
