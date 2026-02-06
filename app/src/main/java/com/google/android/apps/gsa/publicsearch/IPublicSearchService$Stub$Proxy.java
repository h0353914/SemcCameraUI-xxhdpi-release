package com.google.android.apps.gsa.publicsearch;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.aidl.BaseProxy;
import com.google.android.aidl.Codecs;

public class IPublicSearchService$Stub$Proxy extends BaseProxy implements IPublicSearchService {
    IPublicSearchService$Stub$Proxy(IBinder remote) {
        super(remote, "com.google.android.apps.gsa.publicsearch.IPublicSearchService");
    }

    @Override // com.google.android.apps.gsa.publicsearch.IPublicSearchService
    public IPublicSearchServiceSession beginSession(String sessionType, IPublicSearchServiceSessionCallback callback, byte[] serializedSessionContext) throws RemoteException {
        Parcel parcelObtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        parcelObtainAndWriteInterfaceToken.writeString(sessionType);
        Codecs.writeStrongBinder(parcelObtainAndWriteInterfaceToken, callback);
        parcelObtainAndWriteInterfaceToken.writeByteArray(serializedSessionContext);
        Parcel parcelTransactAndReadException = transactAndReadException(1, parcelObtainAndWriteInterfaceToken);
        IPublicSearchServiceSession iPublicSearchServiceSessionAsInterface = IPublicSearchServiceSession$Stub.asInterface(parcelTransactAndReadException.readStrongBinder());
        parcelTransactAndReadException.recycle();
        return iPublicSearchServiceSessionAsInterface;
    }
}
