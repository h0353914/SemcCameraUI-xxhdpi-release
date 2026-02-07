package com.google.android.apps.gsa.publicsearch;

import android.os.IInterface;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public interface IPublicSearchServiceSessionCallback extends IInterface {
    void onServiceEvent(byte[] serializedServiceEvent, SystemParcelableWrapper systemParcelableWrapper) throws RemoteException;
}
