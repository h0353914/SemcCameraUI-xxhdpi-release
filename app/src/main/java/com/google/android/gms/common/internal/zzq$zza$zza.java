package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
class zzq$zza$zza implements zzq {
    private IBinder zznJ;

    zzq$zza$zza(IBinder iBinder) {
        this.zznJ = iBinder;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.zznJ;
    }

    @Override // com.google.android.gms.common.internal.zzq
    public void cancel() throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.google.android.gms.common.internal.ICancelToken");
            this.zznJ.transact(2, parcelObtain, null, 1);
        } finally {
            parcelObtain.recycle();
        }
    }
}
