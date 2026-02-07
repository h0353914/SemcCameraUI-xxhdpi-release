package android.support.v7.widget;

import android.content.Intent;

/* JADX INFO: loaded from: classes.dex */
class ShareActionProvider$ShareActivityChooserModelPolicy implements ActivityChooserModel$OnChooseActivityListener {
    final /* synthetic */ ShareActionProvider this$0;

    ShareActionProvider$ShareActivityChooserModelPolicy(ShareActionProvider shareActionProvider) {
        this.this$0 = shareActionProvider;
    }

    @Override // android.support.v7.widget.ActivityChooserModel$OnChooseActivityListener
    public boolean onChooseActivity(ActivityChooserModel activityChooserModel, Intent intent) {
        if (this.this$0.mOnShareTargetSelectedListener == null) {
            return false;
        }
        this.this$0.mOnShareTargetSelectedListener.onShareTargetSelected(this.this$0, intent);
        return false;
    }
}
