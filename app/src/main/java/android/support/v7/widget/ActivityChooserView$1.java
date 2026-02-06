package android.support.v7.widget;

import android.database.DataSetObserver;

class ActivityChooserView$1 extends DataSetObserver {
    final /* synthetic */ ActivityChooserView this$0;

    ActivityChooserView$1(ActivityChooserView activityChooserView) {
        this.this$0 = activityChooserView;
    }

    @Override // android.database.DataSetObserver
    public void onChanged() {
        super.onChanged();
        this.this$0.mAdapter.notifyDataSetChanged();
    }

    @Override // android.database.DataSetObserver
    public void onInvalidated() {
        super.onInvalidated();
        this.this$0.mAdapter.notifyDataSetInvalidated();
    }
}
