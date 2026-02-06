package android.support.v7.widget;

import android.database.DataSetObserver;

class ActivityChooserView$5 extends DataSetObserver {
    final /* synthetic */ ActivityChooserView this$0;

    ActivityChooserView$5(ActivityChooserView activityChooserView) {
        this.this$0 = activityChooserView;
    }

    @Override // android.database.DataSetObserver
    public void onChanged() {
        super.onChanged();
        this.this$0.updateAppearance();
    }
}
