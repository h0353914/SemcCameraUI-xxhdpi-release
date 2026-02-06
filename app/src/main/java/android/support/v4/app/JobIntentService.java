package android.support.v4.app;

import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Build$VERSION;
import android.os.IBinder;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.util.ArrayList;
import java.util.HashMap;

public abstract class JobIntentService extends Service {
    static final boolean DEBUG = false;
    static final String TAG = "JobIntentService";
    final ArrayList<JobIntentService$CompatWorkItem> mCompatQueue;
    JobIntentService$WorkEnqueuer mCompatWorkEnqueuer;
    JobIntentService$CommandProcessor mCurProcessor;
    JobIntentService$CompatJobEngine mJobImpl;
    static final Object sLock = new Object();
    static final HashMap<ComponentName, JobIntentService$WorkEnqueuer> sClassWorkEnqueuer = new HashMap<>();
    boolean mInterruptIfStopped = false;
    boolean mStopped = false;
    boolean mDestroyed = false;

    protected abstract void onHandleWork(@NonNull Intent intent);

    public boolean onStopCurrentWork() {
        return true;
    }

    public JobIntentService() {
        if (Build$VERSION.SDK_INT >= 26) {
            this.mCompatQueue = null;
        } else {
            this.mCompatQueue = new ArrayList<>();
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        if (Build$VERSION.SDK_INT >= 26) {
            this.mJobImpl = new JobIntentService$JobServiceEngineImpl(this);
            this.mCompatWorkEnqueuer = null;
        } else {
            this.mJobImpl = null;
            this.mCompatWorkEnqueuer = getWorkEnqueuer(this, new ComponentName(this, getClass()), false, 0);
        }
    }

    @Override // android.app.Service
    public int onStartCommand(@Nullable Intent intent, int i, int i2) {
        if (this.mCompatQueue == null) {
            return 2;
        }
        this.mCompatWorkEnqueuer.serviceStartReceived();
        synchronized (this.mCompatQueue) {
            ArrayList<JobIntentService$CompatWorkItem> arrayList = this.mCompatQueue;
            if (intent == null) {
                intent = new Intent();
            }
            arrayList.add(new JobIntentService$CompatWorkItem(this, intent, i2));
            ensureProcessorRunningLocked(true);
        }
        return 3;
    }

    @Override // android.app.Service
    public IBinder onBind(@NonNull Intent intent) {
        if (this.mJobImpl != null) {
            return this.mJobImpl.compatGetBinder();
        }
        return null;
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        if (this.mCompatQueue != null) {
            synchronized (this.mCompatQueue) {
                this.mDestroyed = true;
                this.mCompatWorkEnqueuer.serviceProcessingFinished();
            }
        }
    }

    public static void enqueueWork(@NonNull Context context, @NonNull Class cls, int i, @NonNull Intent intent) {
        enqueueWork(context, new ComponentName(context, (Class<?>) cls), i, intent);
    }

    public static void enqueueWork(@NonNull Context context, @NonNull ComponentName componentName, int i, @NonNull Intent intent) {
        if (intent == null) {
            throw new IllegalArgumentException("work must not be null");
        }
        synchronized (sLock) {
            JobIntentService$WorkEnqueuer workEnqueuer = getWorkEnqueuer(context, componentName, true, i);
            workEnqueuer.ensureJobId(i);
            workEnqueuer.enqueueWork(intent);
        }
    }

    static JobIntentService$WorkEnqueuer getWorkEnqueuer(Context context, ComponentName componentName, boolean z, int i) {
        JobIntentService$WorkEnqueuer jobIntentService$CompatWorkEnqueuer;
        JobIntentService$WorkEnqueuer jobIntentService$WorkEnqueuer = sClassWorkEnqueuer.get(componentName);
        if (jobIntentService$WorkEnqueuer != null) {
            return jobIntentService$WorkEnqueuer;
        }
        if (Build$VERSION.SDK_INT < 26) {
            jobIntentService$CompatWorkEnqueuer = new JobIntentService$CompatWorkEnqueuer(context, componentName);
        } else {
            if (!z) {
                throw new IllegalArgumentException("Can't be here without a job id");
            }
            jobIntentService$CompatWorkEnqueuer = new JobIntentService$JobWorkEnqueuer(context, componentName, i);
        }
        JobIntentService$WorkEnqueuer jobIntentService$WorkEnqueuer2 = jobIntentService$CompatWorkEnqueuer;
        sClassWorkEnqueuer.put(componentName, jobIntentService$WorkEnqueuer2);
        return jobIntentService$WorkEnqueuer2;
    }

    public void setInterruptIfStopped(boolean z) {
        this.mInterruptIfStopped = z;
    }

    public boolean isStopped() {
        return this.mStopped;
    }

    boolean doStopCurrentWork() {
        if (this.mCurProcessor != null) {
            this.mCurProcessor.cancel(this.mInterruptIfStopped);
        }
        this.mStopped = true;
        return onStopCurrentWork();
    }

    void ensureProcessorRunningLocked(boolean z) {
        if (this.mCurProcessor == null) {
            this.mCurProcessor = new JobIntentService$CommandProcessor(this);
            if (this.mCompatWorkEnqueuer != null && z) {
                this.mCompatWorkEnqueuer.serviceProcessingStarted();
            }
            this.mCurProcessor.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    void processorFinished() {
        if (this.mCompatQueue != null) {
            synchronized (this.mCompatQueue) {
                this.mCurProcessor = null;
                if (this.mCompatQueue != null && this.mCompatQueue.size() > 0) {
                    ensureProcessorRunningLocked(false);
                } else if (!this.mDestroyed) {
                    this.mCompatWorkEnqueuer.serviceProcessingFinished();
                }
            }
        }
    }

    JobIntentService$GenericWorkItem dequeueWork() {
        if (this.mJobImpl != null) {
            return this.mJobImpl.dequeueWork();
        }
        synchronized (this.mCompatQueue) {
            if (this.mCompatQueue.size() <= 0) {
                return null;
            }
            return this.mCompatQueue.remove(0);
        }
    }
}
