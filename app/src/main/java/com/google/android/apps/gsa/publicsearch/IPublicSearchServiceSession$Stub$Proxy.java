package com.google.android.apps.gsa.publicsearch;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.aidl.BaseProxy;
import com.google.android.aidl.Codecs;

public class IPublicSearchServiceSession$Stub$Proxy extends BaseProxy implements IPublicSearchServiceSession {
    IPublicSearchServiceSession$Stub$Proxy(IBinder remote) {
        super(remote, "com.google.android.apps.gsa.publicsearch.IPublicSearchServiceSession");
    }

    @Override // com.google.android.apps.gsa.publicsearch.IPublicSearchServiceSession
    public void onGenericClientEvent(byte[] serializedClientEvent) throws RemoteException {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        parcelObtainAndWriteInterfaceToken.writeByteArray(serializedClientEvent);
        transactOneway(1, parcelObtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.apps.gsa.publicsearch.IPublicSearchServiceSession
    public void onGenericClientEventWithSystemParcelable(byte[] serializedClientEvent, SystemParcelableWrapper systemParcelableWrapper) throws RemoteException {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        parcelObtainAndWriteInterfaceToken.writeByteArray(serializedClientEvent);
        Codecs.writeParcelable(parcelObtainAndWriteInterfaceToken, systemParcelableWrapper);
        transactOneway(2, parcelObtainAndWriteInterfaceToken);
    }
}
