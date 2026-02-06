package android.support.v7.widget;

import android.view.View;
import android.view.View$OnLayoutChangeListener;

class SearchView$4 implements View$OnLayoutChangeListener {
    final /* synthetic */ SearchView this$0;

    SearchView$4(SearchView searchView) {
        this.this$0 = searchView;
    }

    @Override // android.view.View$OnLayoutChangeListener
    public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        this.this$0.adjustDropDownSizeAndPosition();
    }
}
