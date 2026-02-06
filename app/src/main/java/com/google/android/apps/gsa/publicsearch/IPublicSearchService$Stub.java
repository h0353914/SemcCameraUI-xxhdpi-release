package com.google.android.apps.gsa.publicsearch;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.aidl.BaseStub;
import com.google.android.aidl.Codecs;

public abstract class IPublicSearchService$Stub extends BaseStub implements IPublicSearchService {
    private static final String DESCRIPTOR = "com.google.android.apps.gsa.publicsearch.IPublicSearchService";
    static final int TRANSACTION_beginSession = 1;

    public IPublicSearchService$Stub() {
        super("com.google.android.apps.gsa.publicsearch.IPublicSearchService");
    }

    public static IPublicSearchService asInterface(IBinder obj) {
        if (obj == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface("com.google.android.apps.gsa.publicsearch.IPublicSearchService");
        if (iInterfaceQueryLocalInterface instanceof IPublicSearchService) {
            return (IPublicSearchService) iInterfaceQueryLocalInterface;
        }
        return new IPublicSearchService$Stub$Proxy(obj);
    }

    @Override // com.google.android.aidl.BaseStub
    protected boolean dispatchTransaction(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
        if (code != 1) {
            return false;
        }
        IPublicSearchServiceSession iPublicSearchServiceSessionBeginSession = beginSession(data.readString(), IPublicSearchServiceSessionCallback$Stub.asInterface(data.readStrongBinder()), data.createByteArray());
        reply.writeNoException();
        Codecs.writeStrongBinder(reply, iPublicSearchServiceSessionBeginSession);
        return true;
    }
}
