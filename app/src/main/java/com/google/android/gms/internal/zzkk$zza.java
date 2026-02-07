package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.proxy.ProxyGrpcRequest;
import com.google.android.gms.auth.api.proxy.ProxyRequest;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzkk$zza extends Binder implements zzkk {
    public static zzkk zzaw(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.internal.IAuthService");
        return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof zzkk)) ? new zzkk$zza$zza(iBinder) : (zzkk) iInterfaceQueryLocalInterface;
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1598968902) {
            parcel2.writeString("com.google.android.gms.auth.api.internal.IAuthService");
            return true;
        }
        switch (i) {
            case 1:
                parcel.enforceInterface("com.google.android.gms.auth.api.internal.IAuthService");
                zza(zzkj$zza.zzav(parcel.readStrongBinder()), parcel.readInt() != 0 ? ProxyRequest.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            case 2:
                parcel.enforceInterface("com.google.android.gms.auth.api.internal.IAuthService");
                zza(zzkj$zza.zzav(parcel.readStrongBinder()), parcel.readInt() != 0 ? ProxyGrpcRequest.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
