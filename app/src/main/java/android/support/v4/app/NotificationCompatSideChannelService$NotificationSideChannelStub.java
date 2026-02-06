package android.support.v4.app;

import android.app.Notification;
import android.os.RemoteException;

class NotificationCompatSideChannelService$NotificationSideChannelStub extends INotificationSideChannel$Stub {
    final /* synthetic */ NotificationCompatSideChannelService this$0;

    NotificationCompatSideChannelService$NotificationSideChannelStub(NotificationCompatSideChannelService notificationCompatSideChannelService) {
        this.this$0 = notificationCompatSideChannelService;
    }

    @Override // android.support.v4.app.INotificationSideChannel
    public void notify(String str, int i, String str2, Notification notification) throws RemoteException {
        this.this$0.checkPermission(getCallingUid(), str);
        long jClearCallingIdentity = clearCallingIdentity();
        try {
            this.this$0.notify(str, i, str2, notification);
        } finally {
            restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    @Override // android.support.v4.app.INotificationSideChannel
    public void cancel(String str, int i, String str2) throws RemoteException {
        this.this$0.checkPermission(getCallingUid(), str);
        long jClearCallingIdentity = clearCallingIdentity();
        try {
            this.this$0.cancel(str, i, str2);
        } finally {
            restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    @Override // android.support.v4.app.INotificationSideChannel
    public void cancelAll(String str) {
        this.this$0.checkPermission(getCallingUid(), str);
        long jClearCallingIdentity = clearCallingIdentity();
        try {
            this.this$0.cancelAll(str);
        } finally {
            restoreCallingIdentity(jClearCallingIdentity);
        }
    }
}
