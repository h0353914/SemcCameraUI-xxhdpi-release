package com.google.android.gms.internal;

import android.accounts.Account;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.AccountChangeEventsRequest;
import com.google.android.gms.auth.AccountChangeEventsResponse;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzau$zza extends Binder implements zzau {
    public static zzau zza(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.auth.IAuthManagerService");
        return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof zzau)) ? new zzau$zza$zza(iBinder) : (zzau) iInterfaceQueryLocalInterface;
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1598968902) {
            parcel2.writeString("com.google.android.auth.IAuthManagerService");
            return true;
        }
        switch (i) {
            case 1:
                parcel.enforceInterface("com.google.android.auth.IAuthManagerService");
                Bundle bundleZza = zza(parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                if (bundleZza == null) {
                    parcel2.writeInt(0);
                    return true;
                }
                parcel2.writeInt(1);
                bundleZza.writeToParcel(parcel2, 1);
                return true;
            case 2:
                parcel.enforceInterface("com.google.android.auth.IAuthManagerService");
                Bundle bundleZza2 = zza(parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                if (bundleZza2 == null) {
                    parcel2.writeInt(0);
                    return true;
                }
                parcel2.writeInt(1);
                bundleZza2.writeToParcel(parcel2, 1);
                return true;
            case 3:
                parcel.enforceInterface("com.google.android.auth.IAuthManagerService");
                AccountChangeEventsResponse accountChangeEventsResponseZza = zza(parcel.readInt() != 0 ? AccountChangeEventsRequest.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                if (accountChangeEventsResponseZza == null) {
                    parcel2.writeInt(0);
                    return true;
                }
                parcel2.writeInt(1);
                accountChangeEventsResponseZza.writeToParcel(parcel2, 1);
                return true;
            default:
                switch (i) {
                    case 5:
                        parcel.enforceInterface("com.google.android.auth.IAuthManagerService");
                        Bundle bundleZza3 = zza(parcel.readInt() != 0 ? (Account) Account.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                        parcel2.writeNoException();
                        if (bundleZza3 == null) {
                            parcel2.writeInt(0);
                            return true;
                        }
                        parcel2.writeInt(1);
                        bundleZza3.writeToParcel(parcel2, 1);
                        return true;
                    case 6:
                        parcel.enforceInterface("com.google.android.auth.IAuthManagerService");
                        Bundle bundleZza4 = zza(parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                        parcel2.writeNoException();
                        if (bundleZza4 == null) {
                            parcel2.writeInt(0);
                            return true;
                        }
                        parcel2.writeInt(1);
                        bundleZza4.writeToParcel(parcel2, 1);
                        return true;
                    case 7:
                        parcel.enforceInterface("com.google.android.auth.IAuthManagerService");
                        Bundle bundleZza5 = zza(parcel.readInt() != 0 ? (Account) Account.CREATOR.createFromParcel(parcel) : null);
                        parcel2.writeNoException();
                        if (bundleZza5 == null) {
                            parcel2.writeInt(0);
                            return true;
                        }
                        parcel2.writeInt(1);
                        bundleZza5.writeToParcel(parcel2, 1);
                        return true;
                    default:
                        return super.onTransact(i, parcel, parcel2, i2);
                }
        }
    }
}
