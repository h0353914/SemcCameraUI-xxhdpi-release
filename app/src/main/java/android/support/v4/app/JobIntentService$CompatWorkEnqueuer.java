package android.support.v4.app;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import android.os.PowerManager$WakeLock;

/* JADX INFO: loaded from: classes.dex */
final class JobIntentService$CompatWorkEnqueuer extends JobIntentService$WorkEnqueuer {
    private final Context mContext;
    private final PowerManager$WakeLock mLaunchWakeLock;
    boolean mLaunchingService;
    private final PowerManager$WakeLock mRunWakeLock;
    boolean mServiceProcessing;

    JobIntentService$CompatWorkEnqueuer(Context context, ComponentName componentName) {
        super(context, componentName);
        this.mContext = context.getApplicationContext();
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        this.mLaunchWakeLock = powerManager.newWakeLock(1, componentName.getClassName() + ":launch");
        this.mLaunchWakeLock.setReferenceCounted(false);
        this.mRunWakeLock = powerManager.newWakeLock(1, componentName.getClassName() + ":run");
        this.mRunWakeLock.setReferenceCounted(false);
    }

    @Override // android.support.v4.app.JobIntentService$WorkEnqueuer
    void enqueueWork(Intent intent) {
        Intent intent2 = new Intent(intent);
        intent2.setComponent(this.mComponentName);
        if (this.mContext.startService(intent2) != null) {
            synchronized (this) {
                if (!this.mLaunchingService) {
                    this.mLaunchingService = true;
                    if (!this.mServiceProcessing) {
                        this.mLaunchWakeLock.acquire(60000L);
                    }
                }
            }
        }
    }

    @Override // android.support.v4.app.JobIntentService$WorkEnqueuer
    public void serviceStartReceived() {
        synchronized (this) {
            this.mLaunchingService = false;
        }
    }

    @Override // android.support.v4.app.JobIntentService$WorkEnqueuer
    public void serviceProcessingStarted() {
        synchronized (this) {
            if (!this.mServiceProcessing) {
                this.mServiceProcessing = true;
                this.mRunWakeLock.acquire(600000L);
                this.mLaunchWakeLock.release();
            }
        }
    }

    @Override // android.support.v4.app.JobIntentService$WorkEnqueuer
    public void serviceProcessingFinished() {
        synchronized (this) {
            if (this.mServiceProcessing) {
                if (this.mLaunchingService) {
                    this.mLaunchWakeLock.acquire(60000L);
                }
                this.mServiceProcessing = false;
                this.mRunWakeLock.release();
            }
        }
    }
}
