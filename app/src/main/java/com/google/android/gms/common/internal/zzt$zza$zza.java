package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
class zzt$zza$zza implements zzt {
    private IBinder zznJ;

    zzt$zza$zza(IBinder iBinder) {
        this.zznJ = iBinder;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.zznJ;
    }

    @Override // com.google.android.gms.common.internal.zzt
    public void zzb(ResolveAccountResponse resolveAccountResponse) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.google.android.gms.common.internal.IResolveAccountCallbacks");
            if (resolveAccountResponse != null) {
                parcelObtain.writeInt(1);
                resolveAccountResponse.writeToParcel(parcelObtain, 0);
            } else {
                parcelObtain.writeInt(0);
            }
            this.zznJ.transact(2, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }
}
