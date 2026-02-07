package com.google.android.gms.auth.api.signin.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInConfig;

/* JADX INFO: loaded from: classes.dex */
class zze$zza$zza implements zze {
    private IBinder zznJ;

    zze$zza$zza(IBinder iBinder) {
        this.zznJ = iBinder;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.zznJ;
    }

    @Override // com.google.android.gms.auth.api.signin.internal.zze
    public void zza(zzd zzdVar, GoogleSignInConfig googleSignInConfig) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.google.android.gms.auth.api.signin.internal.ISignInService");
            parcelObtain.writeStrongBinder(zzdVar != null ? zzdVar.asBinder() : null);
            if (googleSignInConfig != null) {
                parcelObtain.writeInt(1);
                googleSignInConfig.writeToParcel(parcelObtain, 0);
            } else {
                parcelObtain.writeInt(0);
            }
            this.zznJ.transact(101, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.google.android.gms.auth.api.signin.internal.zze
    public void zza(zzd zzdVar, SignInConfiguration signInConfiguration) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.google.android.gms.auth.api.signin.internal.ISignInService");
            parcelObtain.writeStrongBinder(zzdVar != null ? zzdVar.asBinder() : null);
            if (signInConfiguration != null) {
                parcelObtain.writeInt(1);
                signInConfiguration.writeToParcel(parcelObtain, 0);
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

    @Override // com.google.android.gms.auth.api.signin.internal.zze
    public void zzb(zzd zzdVar, GoogleSignInConfig googleSignInConfig) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.google.android.gms.auth.api.signin.internal.ISignInService");
            parcelObtain.writeStrongBinder(zzdVar != null ? zzdVar.asBinder() : null);
            if (googleSignInConfig != null) {
                parcelObtain.writeInt(1);
                googleSignInConfig.writeToParcel(parcelObtain, 0);
            } else {
                parcelObtain.writeInt(0);
            }
            this.zznJ.transact(102, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.google.android.gms.auth.api.signin.internal.zze
    public void zzb(zzd zzdVar, SignInConfiguration signInConfiguration) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.google.android.gms.auth.api.signin.internal.ISignInService");
            parcelObtain.writeStrongBinder(zzdVar != null ? zzdVar.asBinder() : null);
            if (signInConfiguration != null) {
                parcelObtain.writeInt(1);
                signInConfiguration.writeToParcel(parcelObtain, 0);
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

    @Override // com.google.android.gms.auth.api.signin.internal.zze
    public void zzc(zzd zzdVar, GoogleSignInConfig googleSignInConfig) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.google.android.gms.auth.api.signin.internal.ISignInService");
            parcelObtain.writeStrongBinder(zzdVar != null ? zzdVar.asBinder() : null);
            if (googleSignInConfig != null) {
                parcelObtain.writeInt(1);
                googleSignInConfig.writeToParcel(parcelObtain, 0);
            } else {
                parcelObtain.writeInt(0);
            }
            this.zznJ.transact(103, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }
}
