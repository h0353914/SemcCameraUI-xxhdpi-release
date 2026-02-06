package android.support.v4.app;

import android.app.Notification;
import android.os.RemoteException;

class NotificationManagerCompat$NotifyTask implements NotificationManagerCompat$Task {
    final int id;
    final Notification notif;
    final String packageName;
    final String tag;

    NotificationManagerCompat$NotifyTask(String str, int i, String str2, Notification notification) {
        this.packageName = str;
        this.id = i;
        this.tag = str2;
        this.notif = notification;
    }

    @Override // android.support.v4.app.NotificationManagerCompat$Task
    public void send(INotificationSideChannel iNotificationSideChannel) throws RemoteException {
        iNotificationSideChannel.notify(this.packageName, this.id, this.tag, this.notif);
    }

    public String toString() {
        return "NotifyTask[packageName:" + this.packageName + ", id:" + this.id + ", tag:" + this.tag + "]";
    }
}
