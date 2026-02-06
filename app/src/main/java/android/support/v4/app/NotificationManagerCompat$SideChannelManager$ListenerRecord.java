package android.support.v4.app;

import android.content.ComponentName;
import java.util.ArrayDeque;

class NotificationManagerCompat$SideChannelManager$ListenerRecord {
    final ComponentName componentName;
    INotificationSideChannel service;
    boolean bound = false;
    ArrayDeque<NotificationManagerCompat$Task> taskQueue = new ArrayDeque<>();
    int retryCount = 0;

    NotificationManagerCompat$SideChannelManager$ListenerRecord(ComponentName componentName) {
        this.componentName = componentName;
    }
}
