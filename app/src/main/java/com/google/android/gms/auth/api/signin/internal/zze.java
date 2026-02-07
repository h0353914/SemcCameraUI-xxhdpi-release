package com.google.android.gms.auth.api.signin.internal;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInConfig;

/* JADX INFO: loaded from: classes.dex */
public interface zze extends IInterface {
    void zza(zzd zzdVar, GoogleSignInConfig googleSignInConfig) throws RemoteException;

    void zza(zzd zzdVar, SignInConfiguration signInConfiguration) throws RemoteException;

    void zzb(zzd zzdVar, GoogleSignInConfig googleSignInConfig) throws RemoteException;

    void zzb(zzd zzdVar, SignInConfiguration signInConfiguration) throws RemoteException;

    void zzc(zzd zzdVar, GoogleSignInConfig googleSignInConfig) throws RemoteException;
}
