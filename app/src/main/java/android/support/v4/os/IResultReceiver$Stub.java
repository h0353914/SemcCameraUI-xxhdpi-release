package android.support.v4.os;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract class IResultReceiver$Stub extends Binder implements IResultReceiver {
    private static final String DESCRIPTOR = "android.support.v4.os.IResultReceiver";
    static final int TRANSACTION_send = 1;

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }

    public IResultReceiver$Stub() {
        attachInterface(this, "android.support.v4.os.IResultReceiver");
    }

    public static IResultReceiver asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("android.support.v4.os.IResultReceiver");
        if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IResultReceiver)) {
            return (IResultReceiver) iInterfaceQueryLocalInterface;
        }
        return new IResultReceiver$Stub$Proxy(iBinder);
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            parcel.enforceInterface("android.support.v4.os.IResultReceiver");
            send(parcel.readInt(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
            return true;
        }
        if (i == 1598968902) {
            parcel2.writeString("android.support.v4.os.IResultReceiver");
            return true;
        }
        return super.onTransact(i, parcel, parcel2, i2);
    }
}
