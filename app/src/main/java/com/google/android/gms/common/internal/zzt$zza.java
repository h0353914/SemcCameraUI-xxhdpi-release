package com.google.android.gms.common.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzt$zza extends Binder implements zzt {
    public zzt$zza() {
        attachInterface(this, "com.google.android.gms.common.internal.IResolveAccountCallbacks");
    }

    public static zzt zzaL(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IResolveAccountCallbacks");
        return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof zzt)) ? new zzt$zza$zza(iBinder) : (zzt) iInterfaceQueryLocalInterface;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 2) {
            if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel2.writeString("com.google.android.gms.common.internal.IResolveAccountCallbacks");
            return true;
        }
        parcel.enforceInterface("com.google.android.gms.common.internal.IResolveAccountCallbacks");
        zzb(parcel.readInt() != 0 ? ResolveAccountResponse.CREATOR.createFromParcel(parcel) : null);
        parcel2.writeNoException();
        return true;
    }
}
