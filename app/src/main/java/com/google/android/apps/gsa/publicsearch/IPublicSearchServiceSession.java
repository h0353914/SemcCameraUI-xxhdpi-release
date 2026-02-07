package com.google.android.apps.gsa.publicsearch;

import android.os.IInterface;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public interface IPublicSearchServiceSession extends IInterface {
    void onGenericClientEvent(byte[] serializedClientEvent) throws RemoteException;

    void onGenericClientEventWithSystemParcelable(byte[] serializedClientEvent, SystemParcelableWrapper systemParcelableWrapper) throws RemoteException;
}
