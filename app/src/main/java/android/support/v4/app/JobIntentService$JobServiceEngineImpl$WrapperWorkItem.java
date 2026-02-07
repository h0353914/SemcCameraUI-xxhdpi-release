package android.support.v4.app;

import android.app.job.JobWorkItem;
import android.content.Intent;

/* JADX INFO: loaded from: classes.dex */
final class JobIntentService$JobServiceEngineImpl$WrapperWorkItem implements JobIntentService$GenericWorkItem {
    final JobWorkItem mJobWork;
    final /* synthetic */ JobIntentService$JobServiceEngineImpl this$0;

    JobIntentService$JobServiceEngineImpl$WrapperWorkItem(JobIntentService$JobServiceEngineImpl jobIntentService$JobServiceEngineImpl, JobWorkItem jobWorkItem) {
        this.this$0 = jobIntentService$JobServiceEngineImpl;
        this.mJobWork = jobWorkItem;
    }

    @Override // android.support.v4.app.JobIntentService$GenericWorkItem
    public Intent getIntent() {
        return this.mJobWork.getIntent();
    }

    @Override // android.support.v4.app.JobIntentService$GenericWorkItem
    public void complete() {
        synchronized (this.this$0.mLock) {
            if (this.this$0.mParams != null) {
                this.this$0.mParams.completeWork(this.mJobWork);
            }
        }
    }
}
