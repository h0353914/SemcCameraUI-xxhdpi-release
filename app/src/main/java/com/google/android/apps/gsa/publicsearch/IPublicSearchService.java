package com.google.android.apps.gsa.publicsearch;

import android.os.IInterface;
import android.os.RemoteException;

public interface IPublicSearchService extends IInterface {
    IPublicSearchServiceSession beginSession(String sessionType, IPublicSearchServiceSessionCallback callback, byte[] serializedSessionContext) throws RemoteException;
}
