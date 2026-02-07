package com.google.android.gms.dynamic;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzd$zza extends Binder implements zzd {
    public zzd$zza() {
        attachInterface(this, "com.google.android.gms.dynamic.IObjectWrapper");
    }

    public static zzd zzbk(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamic.IObjectWrapper");
        return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof zzd)) ? new zzd$zza$zza(iBinder) : (zzd) iInterfaceQueryLocalInterface;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1598968902) {
            return super.onTransact(i, parcel, parcel2, i2);
        }
        parcel2.writeString("com.google.android.gms.dynamic.IObjectWrapper");
        return true;
    }
}
