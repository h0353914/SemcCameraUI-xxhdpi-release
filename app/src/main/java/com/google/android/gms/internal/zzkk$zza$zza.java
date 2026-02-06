package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.proxy.ProxyGrpcRequest;
import com.google.android.gms.auth.api.proxy.ProxyRequest;

class zzkk$zza$zza implements zzkk {
    private IBinder zznJ;

    zzkk$zza$zza(IBinder iBinder) {
        this.zznJ = iBinder;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.zznJ;
    }

    @Override // com.google.android.gms.internal.zzkk
    public void zza(zzkj zzkjVar, ProxyGrpcRequest proxyGrpcRequest) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.google.android.gms.auth.api.internal.IAuthService");
            parcelObtain.writeStrongBinder(zzkjVar != null ? zzkjVar.asBinder() : null);
            if (proxyGrpcRequest != null) {
                parcelObtain.writeInt(1);
                proxyGrpcRequest.writeToParcel(parcelObtain, 0);
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

    @Override // com.google.android.gms.internal.zzkk
    public void zza(zzkj zzkjVar, ProxyRequest proxyRequest) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.google.android.gms.auth.api.internal.IAuthService");
            parcelObtain.writeStrongBinder(zzkjVar != null ? zzkjVar.asBinder() : null);
            if (proxyRequest != null) {
                parcelObtain.writeInt(1);
                proxyRequest.writeToParcel(parcelObtain, 0);
            } else {
                parcelObtain.writeInt(0);
            }
            this.zznJ.transact(1, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }
}
