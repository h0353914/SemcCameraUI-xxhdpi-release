package android.support.v4.app;

import android.content.Intent;

final class JobIntentService$CompatWorkItem implements JobIntentService$GenericWorkItem {
    final Intent mIntent;
    final int mStartId;
    final /* synthetic */ JobIntentService this$0;

    JobIntentService$CompatWorkItem(JobIntentService jobIntentService, Intent intent, int i) {
        this.this$0 = jobIntentService;
        this.mIntent = intent;
        this.mStartId = i;
    }

    @Override // android.support.v4.app.JobIntentService$GenericWorkItem
    public Intent getIntent() {
        return this.mIntent;
    }

    @Override // android.support.v4.app.JobIntentService$GenericWorkItem
    public void complete() {
        this.this$0.stopSelf(this.mStartId);
    }
}
