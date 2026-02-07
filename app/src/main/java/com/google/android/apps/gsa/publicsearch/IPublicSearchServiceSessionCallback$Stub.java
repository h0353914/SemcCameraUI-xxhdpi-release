package com.google.android.apps.gsa.publicsearch;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.aidl.BaseStub;
import com.google.android.aidl.Codecs;

/* JADX INFO: loaded from: classes.dex */
public abstract class IPublicSearchServiceSessionCallback$Stub extends BaseStub implements IPublicSearchServiceSessionCallback {
    private static final String DESCRIPTOR = "com.google.android.apps.gsa.publicsearch.IPublicSearchServiceSessionCallback";
    static final int TRANSACTION_onServiceEvent = 1;

    public IPublicSearchServiceSessionCallback$Stub() {
        super("com.google.android.apps.gsa.publicsearch.IPublicSearchServiceSessionCallback");
    }

    public static IPublicSearchServiceSessionCallback asInterface(IBinder obj) {
        if (obj == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface("com.google.android.apps.gsa.publicsearch.IPublicSearchServiceSessionCallback");
        if (iInterfaceQueryLocalInterface instanceof IPublicSearchServiceSessionCallback) {
            return (IPublicSearchServiceSessionCallback) iInterfaceQueryLocalInterface;
        }
        return new IPublicSearchServiceSessionCallback$Stub$Proxy(obj);
    }

    @Override // com.google.android.aidl.BaseStub
    protected boolean dispatchTransaction(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
        if (code != 1) {
            return false;
        }
        onServiceEvent(data.createByteArray(), (SystemParcelableWrapper) Codecs.createParcelable(data, SystemParcelableWrapper.CREATOR));
        return true;
    }
}
