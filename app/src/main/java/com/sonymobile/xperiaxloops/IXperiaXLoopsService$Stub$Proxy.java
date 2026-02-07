package com.sonymobile.xperiaxloops;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
class IXperiaXLoopsService$Stub$Proxy implements IXperiaXLoopsService {
    private IBinder mRemote;

    public String getInterfaceDescriptor() {
        return "com.sonymobile.xperiaxloops.IXperiaXLoopsService";
    }

    IXperiaXLoopsService$Stub$Proxy(IBinder iBinder) {
        this.mRemote = iBinder;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.mRemote;
    }

    @Override // com.sonymobile.xperiaxloops.IXperiaXLoopsService
    public void registerCallback(int i, IXperiaXLoopsServiceCallback iXperiaXLoopsServiceCallback) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.sonymobile.xperiaxloops.IXperiaXLoopsService");
            parcelObtain.writeInt(i);
            parcelObtain.writeStrongBinder(iXperiaXLoopsServiceCallback != null ? iXperiaXLoopsServiceCallback.asBinder() : null);
            this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.sonymobile.xperiaxloops.IXperiaXLoopsService
    public void unregisterCallback(int i, IXperiaXLoopsServiceCallback iXperiaXLoopsServiceCallback) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.sonymobile.xperiaxloops.IXperiaXLoopsService");
            parcelObtain.writeInt(i);
            parcelObtain.writeStrongBinder(iXperiaXLoopsServiceCallback != null ? iXperiaXLoopsServiceCallback.asBinder() : null);
            this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.sonymobile.xperiaxloops.IXperiaXLoopsService
    public void setLoopsColorOnLockscreen(int i) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.sonymobile.xperiaxloops.IXperiaXLoopsService");
            parcelObtain.writeInt(i);
            this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.sonymobile.xperiaxloops.IXperiaXLoopsService
    public boolean requestAssistEmphasis(Bundle bundle) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.sonymobile.xperiaxloops.IXperiaXLoopsService");
            if (bundle != null) {
                parcelObtain.writeInt(1);
                bundle.writeToParcel(parcelObtain, 0);
            } else {
                parcelObtain.writeInt(0);
            }
            this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            return parcelObtain2.readInt() != 0;
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.sonymobile.xperiaxloops.IXperiaXLoopsService
    public void sendKeyguardStatus(int i) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.sonymobile.xperiaxloops.IXperiaXLoopsService");
            parcelObtain.writeInt(i);
            this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.sonymobile.xperiaxloops.IXperiaXLoopsService
    public void sendFPAResult(int i, Bundle bundle) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.sonymobile.xperiaxloops.IXperiaXLoopsService");
            parcelObtain.writeInt(i);
            if (bundle != null) {
                parcelObtain.writeInt(1);
                bundle.writeToParcel(parcelObtain, 0);
            } else {
                parcelObtain.writeInt(0);
            }
            this.mRemote.transact(6, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.sonymobile.xperiaxloops.IXperiaXLoopsService
    public void sendScreenStatus(int i) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.sonymobile.xperiaxloops.IXperiaXLoopsService");
            parcelObtain.writeInt(i);
            this.mRemote.transact(7, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.sonymobile.xperiaxloops.IXperiaXLoopsService
    public void notifyShowLoopsByApps(boolean z, int i) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.sonymobile.xperiaxloops.IXperiaXLoopsService");
            parcelObtain.writeInt(z ? 1 : 0);
            parcelObtain.writeInt(i);
            this.mRemote.transact(8, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }
}
