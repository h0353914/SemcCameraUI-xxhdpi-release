package android.support.v4.app;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;

abstract class JobIntentService$WorkEnqueuer {
    final ComponentName mComponentName;
    boolean mHasJobId;
    int mJobId;

    abstract void enqueueWork(Intent intent);

    public void serviceProcessingFinished() {
    }

    public void serviceProcessingStarted() {
    }

    public void serviceStartReceived() {
    }

    JobIntentService$WorkEnqueuer(Context context, ComponentName componentName) {
        this.mComponentName = componentName;
    }

    void ensureJobId(int i) {
        if (!this.mHasJobId) {
            this.mHasJobId = true;
            this.mJobId = i;
        } else if (this.mJobId != i) {
            throw new IllegalArgumentException("Given job ID " + i + " is different than previous " + this.mJobId);
        }
    }
}
