package com.google.android.gms.signin.internal;

import android.accounts.Account;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.internal.AuthAccountRequest;
import com.google.android.gms.common.internal.ResolveAccountRequest;
import com.google.android.gms.common.internal.zzp$zza;
import com.google.android.gms.common.internal.zzt$zza;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzf$zza extends Binder implements zzf {
    public static zzf zzdN(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.signin.internal.ISignInService");
        return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof zzf)) ? new zzf$zza$zza(iBinder) : (zzf) iInterfaceQueryLocalInterface;
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1598968902) {
            parcel2.writeString("com.google.android.gms.signin.internal.ISignInService");
            return true;
        }
        switch (i) {
            case 2:
                parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                zza(parcel.readInt() != 0 ? AuthAccountRequest.CREATOR.createFromParcel(parcel) : null, zze$zza.zzdM(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 3:
                parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                zza(parcel.readInt() != 0 ? CheckServerAuthResult.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            case 4:
                parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                zzaq(parcel.readInt() != 0);
                parcel2.writeNoException();
                return true;
            case 5:
                parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                zza(parcel.readInt() != 0 ? ResolveAccountRequest.CREATOR.createFromParcel(parcel) : null, zzt$zza.zzaL(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            default:
                switch (i) {
                    case 7:
                        parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                        zzjq(parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 8:
                        parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                        zza(parcel.readInt(), parcel.readInt() != 0 ? (Account) Account.CREATOR.createFromParcel(parcel) : null, zze$zza.zzdM(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    case 9:
                        parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                        zza(zzp$zza.zzaH(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt() != 0);
                        parcel2.writeNoException();
                        return true;
                    case 10:
                        parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                        zza(parcel.readInt() != 0 ? RecordConsentRequest.CREATOR.createFromParcel(parcel) : null, zze$zza.zzdM(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    case 11:
                        parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                        zza(zze$zza.zzdM(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    default:
                        return super.onTransact(i, parcel, parcel2, i2);
                }
        }
    }
}
