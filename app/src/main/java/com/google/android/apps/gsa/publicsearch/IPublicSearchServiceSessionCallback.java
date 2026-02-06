package com.google.android.apps.gsa.publicsearch;

import android.os.IInterface;
import android.os.RemoteException;

public interface IPublicSearchServiceSessionCallback extends IInterface {
    void onServiceEvent(byte[] serializedServiceEvent, SystemParcelableWrapper systemParcelableWrapper) throws RemoteException;
}
