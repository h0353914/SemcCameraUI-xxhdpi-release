package com.sonymobile.xperiaxloops;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

class IXperiaXLoopsServiceCallback$Stub$Proxy implements IXperiaXLoopsServiceCallback {
    private IBinder mRemote;

    public String getInterfaceDescriptor() {
        return "com.sonymobile.xperiaxloops.IXperiaXLoopsServiceCallback";
    }

    IXperiaXLoopsServiceCallback$Stub$Proxy(IBinder iBinder) {
        this.mRemote = iBinder;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.mRemote;
    }

    @Override // com.sonymobile.xperiaxloops.IXperiaXLoopsServiceCallback
    public void show() throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.sonymobile.xperiaxloops.IXperiaXLoopsServiceCallback");
            this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.sonymobile.xperiaxloops.IXperiaXLoopsServiceCallback
    public void hide(boolean z) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.sonymobile.xperiaxloops.IXperiaXLoopsServiceCallback");
            parcelObtain.writeInt(z ? 1 : 0);
            this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }
}
