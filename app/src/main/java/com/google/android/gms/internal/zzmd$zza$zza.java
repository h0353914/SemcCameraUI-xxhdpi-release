package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

class zzmd$zza$zza implements zzmd {
    private IBinder zznJ;

    zzmd$zza$zza(IBinder iBinder) {
        this.zznJ = iBinder;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.zznJ;
    }

    @Override // com.google.android.gms.internal.zzmd
    public void zza(zzmc zzmcVar) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.google.android.gms.common.internal.service.ICommonService");
            parcelObtain.writeStrongBinder(zzmcVar != null ? zzmcVar.asBinder() : null);
            this.zznJ.transact(1, parcelObtain, null, 1);
        } finally {
            parcelObtain.recycle();
        }
    }
}
