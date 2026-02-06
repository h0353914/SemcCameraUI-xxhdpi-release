package android.support.v4.app;

import android.content.ComponentName;
import android.os.IBinder;

class NotificationManagerCompat$ServiceConnectedEvent {
    final ComponentName componentName;
    final IBinder iBinder;

    NotificationManagerCompat$ServiceConnectedEvent(ComponentName componentName, IBinder iBinder) {
        this.componentName = componentName;
        this.iBinder = iBinder;
    }
}
