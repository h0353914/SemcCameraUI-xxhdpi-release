package com.google.android.gms.auth.api.credentials.internal;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.auth.api.credentials.CredentialRequest;

/* JADX INFO: loaded from: classes.dex */
public interface zzh extends IInterface {
    void zza(zzg zzgVar) throws RemoteException;

    void zza(zzg zzgVar, CredentialRequest credentialRequest) throws RemoteException;

    void zza(zzg zzgVar, DeleteRequest deleteRequest) throws RemoteException;

    void zza(zzg zzgVar, SaveRequest saveRequest) throws RemoteException;
}
