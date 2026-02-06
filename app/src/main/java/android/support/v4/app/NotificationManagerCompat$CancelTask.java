package android.support.v4.app;

import android.os.RemoteException;

class NotificationManagerCompat$CancelTask implements NotificationManagerCompat$Task {
    final boolean all;
    final int id;
    final String packageName;
    final String tag;

    NotificationManagerCompat$CancelTask(String str) {
        this.packageName = str;
        this.id = 0;
        this.tag = null;
        this.all = true;
    }

    NotificationManagerCompat$CancelTask(String str, int i, String str2) {
        this.packageName = str;
        this.id = i;
        this.tag = str2;
        this.all = false;
    }

    @Override // android.support.v4.app.NotificationManagerCompat$Task
    public void send(INotificationSideChannel iNotificationSideChannel) throws RemoteException {
        if (this.all) {
            iNotificationSideChannel.cancelAll(this.packageName);
        } else {
            iNotificationSideChannel.cancel(this.packageName, this.id, this.tag);
        }
    }

    public String toString() {
        return "CancelTask[packageName:" + this.packageName + ", id:" + this.id + ", tag:" + this.tag + ", all:" + this.all + "]";
    }
}
