package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.proxy.ProxyResponse;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzkj$zza extends Binder implements zzkj {
    public zzkj$zza() {
        attachInterface(this, "com.google.android.gms.auth.api.internal.IAuthCallbacks");
    }

    public static zzkj zzav(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.internal.IAuthCallbacks");
        return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof zzkj)) ? new zzkj$zza$zza(iBinder) : (zzkj) iInterfaceQueryLocalInterface;
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
            parcel2.writeString("com.google.android.gms.auth.api.internal.IAuthCallbacks");
            return true;
        }
        parcel.enforceInterface("com.google.android.gms.auth.api.internal.IAuthCallbacks");
        zza(parcel.readInt() != 0 ? ProxyResponse.CREATOR.createFromParcel(parcel) : null);
        parcel2.writeNoException();
        return true;
    }
}
