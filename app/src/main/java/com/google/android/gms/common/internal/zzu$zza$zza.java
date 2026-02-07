package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.zzd$zza;

/* JADX INFO: loaded from: classes.dex */
class zzu$zza$zza implements zzu {
    private IBinder zznJ;

    zzu$zza$zza(IBinder iBinder) {
        this.zznJ = iBinder;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.zznJ;
    }

    @Override // com.google.android.gms.common.internal.zzu
    public com.google.android.gms.dynamic.zzd zza(com.google.android.gms.dynamic.zzd zzdVar, int i, int i2) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.google.android.gms.common.internal.ISignInButtonCreator");
            parcelObtain.writeStrongBinder(zzdVar != null ? zzdVar.asBinder() : null);
            parcelObtain.writeInt(i);
            parcelObtain.writeInt(i2);
            this.zznJ.transact(1, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            return zzd$zza.zzbk(parcelObtain2.readStrongBinder());
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }
}
