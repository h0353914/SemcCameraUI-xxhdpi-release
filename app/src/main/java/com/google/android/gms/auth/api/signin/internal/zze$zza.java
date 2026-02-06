package com.google.android.gms.auth.api.signin.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInConfig;

public abstract class zze$zza extends Binder implements zze {
    public static zze zzaz(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.signin.internal.ISignInService");
        return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof zze)) ? new zze$zza$zza(iBinder) : (zze) iInterfaceQueryLocalInterface;
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                parcel.enforceInterface("com.google.android.gms.auth.api.signin.internal.ISignInService");
                zza(zzd$zza.zzay(parcel.readStrongBinder()), parcel.readInt() != 0 ? SignInConfiguration.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            case 2:
                parcel.enforceInterface("com.google.android.gms.auth.api.signin.internal.ISignInService");
                zzb(zzd$zza.zzay(parcel.readStrongBinder()), parcel.readInt() != 0 ? SignInConfiguration.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            case 101:
                parcel.enforceInterface("com.google.android.gms.auth.api.signin.internal.ISignInService");
                zza(zzd$zza.zzay(parcel.readStrongBinder()), parcel.readInt() != 0 ? GoogleSignInConfig.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            case 102:
                parcel.enforceInterface("com.google.android.gms.auth.api.signin.internal.ISignInService");
                zzb(zzd$zza.zzay(parcel.readStrongBinder()), parcel.readInt() != 0 ? GoogleSignInConfig.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            case 103:
                parcel.enforceInterface("com.google.android.gms.auth.api.signin.internal.ISignInService");
                zzc(zzd$zza.zzay(parcel.readStrongBinder()), parcel.readInt() != 0 ? GoogleSignInConfig.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            case 1598968902:
                parcel2.writeString("com.google.android.gms.auth.api.signin.internal.ISignInService");
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
