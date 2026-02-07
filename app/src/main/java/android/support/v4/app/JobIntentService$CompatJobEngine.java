package android.support.v4.app;

import android.os.IBinder;

/* JADX INFO: loaded from: classes.dex */
interface JobIntentService$CompatJobEngine {
    IBinder compatGetBinder();

    JobIntentService$GenericWorkItem dequeueWork();
}
