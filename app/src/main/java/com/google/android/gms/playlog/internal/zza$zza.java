package com.google.android.gms.playlog.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract class zza$zza extends Binder implements zza {
    public static zza zzdz(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.playlog.internal.IPlayLogService");
        return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof zza)) ? new zza$zza$zza(iBinder) : (zza) iInterfaceQueryLocalInterface;
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1598968902) {
            parcel2.writeString("com.google.android.gms.playlog.internal.IPlayLogService");
            return true;
        }
        switch (i) {
            case 2:
                parcel.enforceInterface("com.google.android.gms.playlog.internal.IPlayLogService");
                zza(parcel.readString(), parcel.readInt() != 0 ? PlayLoggerContext.CREATOR.zzgj(parcel) : null, parcel.readInt() != 0 ? LogEvent.CREATOR.zzgi(parcel) : null);
                return true;
            case 3:
                parcel.enforceInterface("com.google.android.gms.playlog.internal.IPlayLogService");
                zza(parcel.readString(), parcel.readInt() != 0 ? PlayLoggerContext.CREATOR.zzgj(parcel) : null, parcel.createTypedArrayList(LogEvent.CREATOR));
                return true;
            case 4:
                parcel.enforceInterface("com.google.android.gms.playlog.internal.IPlayLogService");
                zza(parcel.readString(), parcel.readInt() != 0 ? PlayLoggerContext.CREATOR.zzgj(parcel) : null, parcel.createByteArray());
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
