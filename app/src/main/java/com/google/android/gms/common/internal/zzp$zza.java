package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract class zzp$zza extends Binder implements zzp {
    public static zzp zzaH(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
        return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof zzp)) ? new zzp$zza$zza(iBinder) : (zzp) iInterfaceQueryLocalInterface;
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
            parcel2.writeString("com.google.android.gms.common.internal.IAccountAccessor");
            return true;
        }
        parcel.enforceInterface("com.google.android.gms.common.internal.IAccountAccessor");
        Account account = getAccount();
        parcel2.writeNoException();
        if (account == null) {
            parcel2.writeInt(0);
            return true;
        }
        parcel2.writeInt(1);
        account.writeToParcel(parcel2, 1);
        return true;
    }
}
