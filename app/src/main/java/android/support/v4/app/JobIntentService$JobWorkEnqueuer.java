package android.support.v4.app;

import android.app.job.JobInfo;
import android.app.job.JobInfo$Builder;
import android.app.job.JobScheduler;
import android.app.job.JobWorkItem;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.support.annotation.RequiresApi;

@RequiresApi(26)
final class JobIntentService$JobWorkEnqueuer extends JobIntentService$WorkEnqueuer {
    private final JobInfo mJobInfo;
    private final JobScheduler mJobScheduler;

    JobIntentService$JobWorkEnqueuer(Context context, ComponentName componentName, int i) {
        super(context, componentName);
        ensureJobId(i);
        this.mJobInfo = new JobInfo$Builder(i, this.mComponentName).setOverrideDeadline(0L).build();
        this.mJobScheduler = (JobScheduler) context.getApplicationContext().getSystemService("jobscheduler");
    }

    @Override // android.support.v4.app.JobIntentService$WorkEnqueuer
    void enqueueWork(Intent intent) {
        this.mJobScheduler.enqueue(this.mJobInfo, new JobWorkItem(intent));
    }
}
