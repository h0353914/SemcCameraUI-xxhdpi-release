package com.google.android.gms.internal;

import android.accounts.Account;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
class zzkd$zza$zza implements zzkd {
    private IBinder zznJ;

    zzkd$zza$zza(IBinder iBinder) {
        this.zznJ = iBinder;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.zznJ;
    }

    @Override // com.google.android.gms.internal.zzkd
    public void zza(Account account, int i, zzkc zzkcVar) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.google.android.gms.auth.api.accountstatus.internal.IAccountStatusService");
            if (account != null) {
                parcelObtain.writeInt(1);
                account.writeToParcel(parcelObtain, 0);
            } else {
                parcelObtain.writeInt(0);
            }
            parcelObtain.writeInt(i);
            parcelObtain.writeStrongBinder(zzkcVar != null ? zzkcVar.asBinder() : null);
            this.zznJ.transact(1, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }
}
