package com.google.android.gms.common.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.zzd$zza;

public abstract class zzu$zza extends Binder implements zzu {
    public static zzu zzaM(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ISignInButtonCreator");
        return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof zzu)) ? new zzu$zza$zza(iBinder) : (zzu) iInterfaceQueryLocalInterface;
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel2.writeString("com.google.android.gms.common.internal.ISignInButtonCreator");
            return true;
        }
        parcel.enforceInterface("com.google.android.gms.common.internal.ISignInButtonCreator");
        com.google.android.gms.dynamic.zzd zzdVarZza = zza(zzd$zza.zzbk(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt());
        parcel2.writeNoException();
        parcel2.writeStrongBinder(zzdVarZza != null ? zzdVarZza.asBinder() : null);
        return true;
    }
}
