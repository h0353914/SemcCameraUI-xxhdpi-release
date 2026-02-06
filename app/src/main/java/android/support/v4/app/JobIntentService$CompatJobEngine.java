package android.support.v4.app;

import android.os.IBinder;

interface JobIntentService$CompatJobEngine {
    IBinder compatGetBinder();

    JobIntentService$GenericWorkItem dequeueWork();
}
