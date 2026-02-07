package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzmc$zza extends Binder implements zzmc {
    public zzmc$zza() {
        attachInterface(this, "com.google.android.gms.common.internal.service.ICommonCallbacks");
    }

    public static zzmc zzaP(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.service.ICommonCallbacks");
        return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof zzmc)) ? new zzmc$zza$zza(iBinder) : (zzmc) iInterfaceQueryLocalInterface;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel2.writeString("com.google.android.gms.common.internal.service.ICommonCallbacks");
            return true;
        }
        parcel.enforceInterface("com.google.android.gms.common.internal.service.ICommonCallbacks");
        zzbN(parcel.readInt());
        parcel2.writeNoException();
        return true;
    }
}
