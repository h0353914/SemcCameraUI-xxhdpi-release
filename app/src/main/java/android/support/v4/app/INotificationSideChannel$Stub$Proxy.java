package android.support.v4.app;

import android.app.Notification;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
class INotificationSideChannel$Stub$Proxy implements INotificationSideChannel {
    private IBinder mRemote;

    public String getInterfaceDescriptor() {
        return "android.support.v4.app.INotificationSideChannel";
    }

    INotificationSideChannel$Stub$Proxy(IBinder iBinder) {
        this.mRemote = iBinder;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.mRemote;
    }

    @Override // android.support.v4.app.INotificationSideChannel
    public void notify(String str, int i, String str2, Notification notification) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("android.support.v4.app.INotificationSideChannel");
            parcelObtain.writeString(str);
            parcelObtain.writeInt(i);
            parcelObtain.writeString(str2);
            if (notification != null) {
                parcelObtain.writeInt(1);
                notification.writeToParcel(parcelObtain, 0);
            } else {
                parcelObtain.writeInt(0);
            }
            this.mRemote.transact(1, parcelObtain, null, 1);
        } finally {
            parcelObtain.recycle();
        }
    }

    @Override // android.support.v4.app.INotificationSideChannel
    public void cancel(String str, int i, String str2) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("android.support.v4.app.INotificationSideChannel");
            parcelObtain.writeString(str);
            parcelObtain.writeInt(i);
            parcelObtain.writeString(str2);
            this.mRemote.transact(2, parcelObtain, null, 1);
        } finally {
            parcelObtain.recycle();
        }
    }

    @Override // android.support.v4.app.INotificationSideChannel
    public void cancelAll(String str) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("android.support.v4.app.INotificationSideChannel");
            parcelObtain.writeString(str);
            this.mRemote.transact(3, parcelObtain, null, 1);
        } finally {
            parcelObtain.recycle();
        }
    }
}
