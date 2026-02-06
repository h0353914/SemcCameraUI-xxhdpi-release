package com.google.android.aidl;

import android.os.Parcel;
import android.os.RemoteException;

interface TransactionInterceptor {
    boolean interceptTransaction(BaseStub stub, int code, Parcel data, Parcel reply, int flags) throws RemoteException;
}
