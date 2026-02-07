package android.support.v7.widget;

import android.view.View;
import android.view.View$OnClickListener;

/* JADX INFO: loaded from: classes.dex */
class SearchView$5 implements View$OnClickListener {
    final /* synthetic */ SearchView this$0;

    SearchView$5(SearchView searchView) {
        this.this$0 = searchView;
    }

    @Override // android.view.View$OnClickListener
    public void onClick(View view) {
        if (view == this.this$0.mSearchButton) {
            this.this$0.onSearchClicked();
            return;
        }
        if (view == this.this$0.mCloseButton) {
            this.this$0.onCloseClicked();
            return;
        }
        if (view == this.this$0.mGoButton) {
            this.this$0.onSubmitQuery();
        } else if (view == this.this$0.mVoiceButton) {
            this.this$0.onVoiceClicked();
        } else if (view == this.this$0.mSearchSrcTextView) {
            this.this$0.forceSuggestionQuery();
        }
    }
}
