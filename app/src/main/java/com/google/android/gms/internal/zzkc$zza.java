package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzkc$zza extends Binder implements zzkc {
    public static zzkc zzan(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.accountstatus.internal.IAccountStatusCallbacks");
        return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof zzkc)) ? new zzkc$zza$zza(iBinder) : (zzkc) iInterfaceQueryLocalInterface;
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
            parcel2.writeString("com.google.android.gms.auth.api.accountstatus.internal.IAccountStatusCallbacks");
            return true;
        }
        parcel.enforceInterface("com.google.android.gms.auth.api.accountstatus.internal.IAccountStatusCallbacks");
        zzf(parcel.readInt() != 0 ? Status.CREATOR.createFromParcel(parcel) : null);
        parcel2.writeNoException();
        return true;
    }
}
