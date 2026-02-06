package android.support.v4.app;

import android.os.AsyncTask;

final class JobIntentService$CommandProcessor extends AsyncTask<Void, Void, Void> {
    final /* synthetic */ JobIntentService this$0;

    JobIntentService$CommandProcessor(JobIntentService jobIntentService) {
        this.this$0 = jobIntentService;
    }

    @Override // android.os.AsyncTask
    protected /* bridge */ /* synthetic */ Void doInBackground(Void[] voidArr) {
        return doInBackground2(voidArr);
    }

    @Override // android.os.AsyncTask
    protected /* bridge */ /* synthetic */ void onCancelled(Void r1) {
        onCancelled2(r1);
    }

    @Override // android.os.AsyncTask
    protected /* bridge */ /* synthetic */ void onPostExecute(Void r1) {
        onPostExecute2(r1);
    }

    /* JADX INFO: renamed from: doInBackground, reason: avoid collision after fix types in other method */
    protected Void doInBackground2(Void... voidArr) {
        while (true) {
            JobIntentService$GenericWorkItem jobIntentService$GenericWorkItemDequeueWork = this.this$0.dequeueWork();
            if (jobIntentService$GenericWorkItemDequeueWork == null) {
                return null;
            }
            this.this$0.onHandleWork(jobIntentService$GenericWorkItemDequeueWork.getIntent());
            jobIntentService$GenericWorkItemDequeueWork.complete();
        }
    }

    /* JADX INFO: renamed from: onCancelled, reason: avoid collision after fix types in other method */
    protected void onCancelled2(Void r1) {
        this.this$0.processorFinished();
    }

    /* JADX INFO: renamed from: onPostExecute, reason: avoid collision after fix types in other method */
    protected void onPostExecute2(Void r1) {
        this.this$0.processorFinished();
    }
}
