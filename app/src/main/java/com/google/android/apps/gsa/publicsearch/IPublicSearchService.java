package com.google.android.apps.gsa.publicsearch;

import android.os.IInterface;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public interface IPublicSearchService extends IInterface {
    IPublicSearchServiceSession beginSession(String sessionType, IPublicSearchServiceSessionCallback callback, byte[] serializedSessionContext) throws RemoteException;
}
