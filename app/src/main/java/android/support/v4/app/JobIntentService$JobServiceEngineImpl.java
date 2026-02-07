package android.support.v4.app;

import android.app.job.JobParameters;
import android.app.job.JobServiceEngine;
import android.app.job.JobWorkItem;
import android.os.IBinder;
import android.support.annotation.RequiresApi;

/* JADX INFO: loaded from: classes.dex */
@RequiresApi(26)
final class JobIntentService$JobServiceEngineImpl extends JobServiceEngine implements JobIntentService$CompatJobEngine {
    static final boolean DEBUG = false;
    static final String TAG = "JobServiceEngineImpl";
    final Object mLock;
    JobParameters mParams;
    final JobIntentService mService;

    JobIntentService$JobServiceEngineImpl(JobIntentService jobIntentService) {
        super(jobIntentService);
        this.mLock = new Object();
        this.mService = jobIntentService;
    }

    @Override // android.support.v4.app.JobIntentService$CompatJobEngine
    public IBinder compatGetBinder() {
        return getBinder();
    }

    @Override // android.app.job.JobServiceEngine
    public boolean onStartJob(JobParameters jobParameters) {
        this.mParams = jobParameters;
        this.mService.ensureProcessorRunningLocked(false);
        return true;
    }

    @Override // android.app.job.JobServiceEngine
    public boolean onStopJob(JobParameters jobParameters) {
        boolean zDoStopCurrentWork = this.mService.doStopCurrentWork();
        synchronized (this.mLock) {
            this.mParams = null;
        }
        return zDoStopCurrentWork;
    }

    @Override // android.support.v4.app.JobIntentService$CompatJobEngine
    public JobIntentService$GenericWorkItem dequeueWork() {
        synchronized (this.mLock) {
            if (this.mParams == null) {
                return null;
            }
            JobWorkItem jobWorkItemDequeueWork = this.mParams.dequeueWork();
            if (jobWorkItemDequeueWork == null) {
                return null;
            }
            jobWorkItemDequeueWork.getIntent().setExtrasClassLoader(this.mService.getClassLoader());
            return new JobIntentService$JobServiceEngineImpl$WrapperWorkItem(this, jobWorkItemDequeueWork);
        }
    }
}
