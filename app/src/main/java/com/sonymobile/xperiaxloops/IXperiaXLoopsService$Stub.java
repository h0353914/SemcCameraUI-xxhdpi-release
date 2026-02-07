package com.sonymobile.xperiaxloops;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public abstract class IXperiaXLoopsService$Stub extends Binder implements IXperiaXLoopsService {
    private static final String DESCRIPTOR = "com.sonymobile.xperiaxloops.IXperiaXLoopsService";
    static final int TRANSACTION_notifyShowLoopsByApps = 8;
    static final int TRANSACTION_registerCallback = 1;
    static final int TRANSACTION_requestAssistEmphasis = 4;
    static final int TRANSACTION_sendFPAResult = 6;
    static final int TRANSACTION_sendKeyguardStatus = 5;
    static final int TRANSACTION_sendScreenStatus = 7;
    static final int TRANSACTION_setLoopsColorOnLockscreen = 3;
    static final int TRANSACTION_unregisterCallback = 2;

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }

    public IXperiaXLoopsService$Stub() {
        attachInterface(this, "com.sonymobile.xperiaxloops.IXperiaXLoopsService");
    }

    public static IXperiaXLoopsService asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.sonymobile.xperiaxloops.IXperiaXLoopsService");
        if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IXperiaXLoopsService)) {
            return (IXperiaXLoopsService) iInterfaceQueryLocalInterface;
        }
        return new IXperiaXLoopsService$Stub$Proxy(iBinder);
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1598968902) {
            parcel2.writeString("com.sonymobile.xperiaxloops.IXperiaXLoopsService");
            return true;
        }
        switch (i) {
            case 1:
                parcel.enforceInterface("com.sonymobile.xperiaxloops.IXperiaXLoopsService");
                registerCallback(parcel.readInt(), IXperiaXLoopsServiceCallback$Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 2:
                parcel.enforceInterface("com.sonymobile.xperiaxloops.IXperiaXLoopsService");
                unregisterCallback(parcel.readInt(), IXperiaXLoopsServiceCallback$Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 3:
                parcel.enforceInterface("com.sonymobile.xperiaxloops.IXperiaXLoopsService");
                setLoopsColorOnLockscreen(parcel.readInt());
                parcel2.writeNoException();
                return true;
            case 4:
                parcel.enforceInterface("com.sonymobile.xperiaxloops.IXperiaXLoopsService");
                boolean zRequestAssistEmphasis = requestAssistEmphasis(parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                parcel2.writeInt(zRequestAssistEmphasis ? 1 : 0);
                return true;
            case 5:
                parcel.enforceInterface("com.sonymobile.xperiaxloops.IXperiaXLoopsService");
                sendKeyguardStatus(parcel.readInt());
                parcel2.writeNoException();
                return true;
            case 6:
                parcel.enforceInterface("com.sonymobile.xperiaxloops.IXperiaXLoopsService");
                sendFPAResult(parcel.readInt(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            case 7:
                parcel.enforceInterface("com.sonymobile.xperiaxloops.IXperiaXLoopsService");
                sendScreenStatus(parcel.readInt());
                parcel2.writeNoException();
                return true;
            case 8:
                parcel.enforceInterface("com.sonymobile.xperiaxloops.IXperiaXLoopsService");
                notifyShowLoopsByApps(parcel.readInt() != 0, parcel.readInt());
                parcel2.writeNoException();
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
