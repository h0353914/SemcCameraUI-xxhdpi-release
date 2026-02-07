package com.google.android.apps.gsa.publicsearch;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.aidl.BaseProxy;
import com.google.android.aidl.Codecs;

/* JADX INFO: loaded from: classes.dex */
public class IPublicSearchServiceSessionCallback$Stub$Proxy extends BaseProxy implements IPublicSearchServiceSessionCallback {
    IPublicSearchServiceSessionCallback$Stub$Proxy(IBinder remote) {
        super(remote, "com.google.android.apps.gsa.publicsearch.IPublicSearchServiceSessionCallback");
    }

    @Override // com.google.android.apps.gsa.publicsearch.IPublicSearchServiceSessionCallback
    public void onServiceEvent(byte[] serializedServiceEvent, SystemParcelableWrapper systemParcelableWrapper) throws RemoteException {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        parcelObtainAndWriteInterfaceToken.writeByteArray(serializedServiceEvent);
        Codecs.writeParcelable(parcelObtainAndWriteInterfaceToken, systemParcelableWrapper);
        transactOneway(1, parcelObtainAndWriteInterfaceToken);
    }
}
