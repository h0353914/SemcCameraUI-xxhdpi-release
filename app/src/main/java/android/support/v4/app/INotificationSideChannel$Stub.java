package android.support.v4.app;

import android.app.Notification;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract class INotificationSideChannel$Stub extends Binder implements INotificationSideChannel {
    private static final String DESCRIPTOR = "android.support.v4.app.INotificationSideChannel";
    static final int TRANSACTION_cancel = 2;
    static final int TRANSACTION_cancelAll = 3;
    static final int TRANSACTION_notify = 1;

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }

    public INotificationSideChannel$Stub() {
        attachInterface(this, "android.support.v4.app.INotificationSideChannel");
    }

    public static INotificationSideChannel asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("android.support.v4.app.INotificationSideChannel");
        if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof INotificationSideChannel)) {
            return (INotificationSideChannel) iInterfaceQueryLocalInterface;
        }
        return new INotificationSideChannel$Stub$Proxy(iBinder);
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1598968902) {
            parcel2.writeString("android.support.v4.app.INotificationSideChannel");
            return true;
        }
        switch (i) {
            case 1:
                parcel.enforceInterface("android.support.v4.app.INotificationSideChannel");
                notify(parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? (Notification) Notification.CREATOR.createFromParcel(parcel) : null);
                return true;
            case 2:
                parcel.enforceInterface("android.support.v4.app.INotificationSideChannel");
                cancel(parcel.readString(), parcel.readInt(), parcel.readString());
                return true;
            case 3:
                parcel.enforceInterface("android.support.v4.app.INotificationSideChannel");
                cancelAll(parcel.readString());
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
