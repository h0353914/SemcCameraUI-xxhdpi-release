package com.google.android.gms.signin.internal;

import android.accounts.Account;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.internal.AuthAccountRequest;
import com.google.android.gms.common.internal.ResolveAccountRequest;
import com.google.android.gms.common.internal.zzp;
import com.google.android.gms.common.internal.zzt;

/* JADX INFO: loaded from: classes.dex */
public interface zzf extends IInterface {
    void zza(int i, Account account, zze zzeVar) throws RemoteException;

    void zza(AuthAccountRequest authAccountRequest, zze zzeVar) throws RemoteException;

    void zza(ResolveAccountRequest resolveAccountRequest, zzt zztVar) throws RemoteException;

    void zza(zzp zzpVar, int i, boolean z) throws RemoteException;

    void zza(CheckServerAuthResult checkServerAuthResult) throws RemoteException;

    void zza(RecordConsentRequest recordConsentRequest, zze zzeVar) throws RemoteException;

    void zza(zze zzeVar) throws RemoteException;

    void zzaq(boolean z) throws RemoteException;

    void zzjq(int i) throws RemoteException;
}
