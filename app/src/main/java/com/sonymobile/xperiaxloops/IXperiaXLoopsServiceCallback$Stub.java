package com.sonymobile.xperiaxloops;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract class IXperiaXLoopsServiceCallback$Stub extends Binder implements IXperiaXLoopsServiceCallback {
    private static final String DESCRIPTOR = "com.sonymobile.xperiaxloops.IXperiaXLoopsServiceCallback";
    static final int TRANSACTION_hide = 2;
    static final int TRANSACTION_show = 1;

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }

    public IXperiaXLoopsServiceCallback$Stub() {
        attachInterface(this, "com.sonymobile.xperiaxloops.IXperiaXLoopsServiceCallback");
    }

    public static IXperiaXLoopsServiceCallback asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.sonymobile.xperiaxloops.IXperiaXLoopsServiceCallback");
        if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IXperiaXLoopsServiceCallback)) {
            return (IXperiaXLoopsServiceCallback) iInterfaceQueryLocalInterface;
        }
        return new IXperiaXLoopsServiceCallback$Stub$Proxy(iBinder);
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1598968902) {
            parcel2.writeString("com.sonymobile.xperiaxloops.IXperiaXLoopsServiceCallback");
            return true;
        }
        switch (i) {
            case 1:
                parcel.enforceInterface("com.sonymobile.xperiaxloops.IXperiaXLoopsServiceCallback");
                show();
                parcel2.writeNoException();
                return true;
            case 2:
                parcel.enforceInterface("com.sonymobile.xperiaxloops.IXperiaXLoopsServiceCallback");
                hide(parcel.readInt() != 0);
                parcel2.writeNoException();
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
