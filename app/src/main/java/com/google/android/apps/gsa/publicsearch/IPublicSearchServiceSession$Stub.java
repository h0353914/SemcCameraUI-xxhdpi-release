package com.google.android.apps.gsa.publicsearch;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.aidl.BaseStub;
import com.google.android.aidl.Codecs;

public abstract class IPublicSearchServiceSession$Stub extends BaseStub implements IPublicSearchServiceSession {
    private static final String DESCRIPTOR = "com.google.android.apps.gsa.publicsearch.IPublicSearchServiceSession";
    static final int TRANSACTION_onGenericClientEvent = 1;
    static final int TRANSACTION_onGenericClientEventWithSystemParcelable = 2;

    public IPublicSearchServiceSession$Stub() {
        super("com.google.android.apps.gsa.publicsearch.IPublicSearchServiceSession");
    }

    public static IPublicSearchServiceSession asInterface(IBinder obj) {
        if (obj == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface("com.google.android.apps.gsa.publicsearch.IPublicSearchServiceSession");
        if (iInterfaceQueryLocalInterface instanceof IPublicSearchServiceSession) {
            return (IPublicSearchServiceSession) iInterfaceQueryLocalInterface;
        }
        return new IPublicSearchServiceSession$Stub$Proxy(obj);
    }

    @Override // com.google.android.aidl.BaseStub
    protected boolean dispatchTransaction(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
        switch (code) {
            case 1:
                onGenericClientEvent(data.createByteArray());
                return true;
            case 2:
                onGenericClientEventWithSystemParcelable(data.createByteArray(), (SystemParcelableWrapper) Codecs.createParcelable(data, SystemParcelableWrapper.CREATOR));
                return true;
            default:
                return false;
        }
    }
}
