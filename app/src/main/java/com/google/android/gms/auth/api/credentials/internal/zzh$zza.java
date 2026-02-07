package com.google.android.gms.auth.api.credentials.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.credentials.CredentialRequest;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzh$zza extends Binder implements zzh {
    public static zzh zzat(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
        return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof zzh)) ? new zzh$zza$zza(iBinder) : (zzh) iInterfaceQueryLocalInterface;
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1598968902) {
            parcel2.writeString("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
            return true;
        }
        switch (i) {
            case 1:
                parcel.enforceInterface("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
                zza(zzg$zza.zzas(parcel.readStrongBinder()), parcel.readInt() != 0 ? CredentialRequest.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            case 2:
                parcel.enforceInterface("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
                zza(zzg$zza.zzas(parcel.readStrongBinder()), parcel.readInt() != 0 ? SaveRequest.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            case 3:
                parcel.enforceInterface("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
                zza(zzg$zza.zzas(parcel.readStrongBinder()), parcel.readInt() != 0 ? DeleteRequest.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            case 4:
                parcel.enforceInterface("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
                zza(zzg$zza.zzas(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
