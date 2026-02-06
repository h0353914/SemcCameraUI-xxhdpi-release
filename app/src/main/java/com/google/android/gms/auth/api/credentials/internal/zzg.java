package com.google.android.gms.auth.api.credentials.internal;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.common.api.Status;

public interface zzg extends IInterface {
    void zza(Status status, Credential credential) throws RemoteException;

    void zzg(Status status) throws RemoteException;
}
