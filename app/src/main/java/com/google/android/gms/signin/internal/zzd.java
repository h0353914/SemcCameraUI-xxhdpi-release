package com.google.android.gms.signin.internal;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.api.Scope;
import java.util.List;

public interface zzd extends IInterface {
    void zza(String str, String str2, zzf zzfVar) throws RemoteException;

    void zza(String str, List<Scope> list, zzf zzfVar) throws RemoteException;
}
