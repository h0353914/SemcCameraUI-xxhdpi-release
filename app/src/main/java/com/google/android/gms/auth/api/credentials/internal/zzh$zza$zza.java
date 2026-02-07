package com.google.android.gms.auth.api.credentials.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.credentials.CredentialRequest;

/* JADX INFO: loaded from: classes.dex */
class zzh$zza$zza implements zzh {
    private IBinder zznJ;

    zzh$zza$zza(IBinder iBinder) {
        this.zznJ = iBinder;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.zznJ;
    }

    @Override // com.google.android.gms.auth.api.credentials.internal.zzh
    public void zza(zzg zzgVar) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
            parcelObtain.writeStrongBinder(zzgVar != null ? zzgVar.asBinder() : null);
            this.zznJ.transact(4, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.google.android.gms.auth.api.credentials.internal.zzh
    public void zza(zzg zzgVar, CredentialRequest credentialRequest) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
            parcelObtain.writeStrongBinder(zzgVar != null ? zzgVar.asBinder() : null);
            if (credentialRequest != null) {
                parcelObtain.writeInt(1);
                credentialRequest.writeToParcel(parcelObtain, 0);
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

    @Override // com.google.android.gms.auth.api.credentials.internal.zzh
    public void zza(zzg zzgVar, DeleteRequest deleteRequest) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
            parcelObtain.writeStrongBinder(zzgVar != null ? zzgVar.asBinder() : null);
            if (deleteRequest != null) {
                parcelObtain.writeInt(1);
                deleteRequest.writeToParcel(parcelObtain, 0);
            } else {
                parcelObtain.writeInt(0);
            }
            this.zznJ.transact(3, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.google.android.gms.auth.api.credentials.internal.zzh
    public void zza(zzg zzgVar, SaveRequest saveRequest) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
            parcelObtain.writeStrongBinder(zzgVar != null ? zzgVar.asBinder() : null);
            if (saveRequest != null) {
                parcelObtain.writeInt(1);
                saveRequest.writeToParcel(parcelObtain, 0);
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
