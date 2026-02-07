package android.support.v7.widget;

import android.text.Editable;
import android.text.TextWatcher;

/* JADX INFO: loaded from: classes.dex */
class SearchView$10 implements TextWatcher {
    final /* synthetic */ SearchView this$0;

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    SearchView$10(SearchView searchView) {
        this.this$0 = searchView;
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        this.this$0.onTextChanged(charSequence);
    }
}
