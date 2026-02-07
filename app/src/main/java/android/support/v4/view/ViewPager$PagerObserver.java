package android.support.v4.view;

import android.database.DataSetObserver;

/* JADX INFO: loaded from: classes.dex */
class ViewPager$PagerObserver extends DataSetObserver {
    final /* synthetic */ ViewPager this$0;

    ViewPager$PagerObserver(ViewPager viewPager) {
        this.this$0 = viewPager;
    }

    @Override // android.database.DataSetObserver
    public void onChanged() {
        this.this$0.dataSetChanged();
    }

    @Override // android.database.DataSetObserver
    public void onInvalidated() {
        this.this$0.dataSetChanged();
    }
}
