package com.sonyericsson.album.fastview;

import android.net.Uri;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract class IFastViewService$Stub extends Binder implements IFastViewService {
    private static final String DESCRIPTOR = "com.sonyericsson.album.fastview.IFastViewService";
    static final int TRANSACTION_prepare = 1;

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }

    public IFastViewService$Stub() {
        attachInterface(this, "com.sonyericsson.album.fastview.IFastViewService");
    }

    public static IFastViewService asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.sonyericsson.album.fastview.IFastViewService");
        if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IFastViewService)) {
            return (IFastViewService) iInterfaceQueryLocalInterface;
        }
        return new IFastViewService$Stub$Proxy(iBinder);
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            if (i == 1598968902) {
                parcel2.writeString("com.sonyericsson.album.fastview.IFastViewService");
                return true;
            }
            return super.onTransact(i, parcel, parcel2, i2);
        }
        parcel.enforceInterface("com.sonyericsson.album.fastview.IFastViewService");
        prepare(parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null);
        parcel2.writeNoException();
        return true;
    }
}
