package com.google.android.gms.internal;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.auth.api.proxy.ProxyGrpcRequest;
import com.google.android.gms.auth.api.proxy.ProxyRequest;

/* JADX INFO: loaded from: classes.dex */
public interface zzkk extends IInterface {
    void zza(zzkj zzkjVar, ProxyGrpcRequest proxyGrpcRequest) throws RemoteException;

    void zza(zzkj zzkjVar, ProxyRequest proxyRequest) throws RemoteException;
}
