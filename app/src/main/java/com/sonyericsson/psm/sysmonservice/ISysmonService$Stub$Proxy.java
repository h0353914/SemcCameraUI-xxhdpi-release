package com.sonyericsson.psm.sysmonservice;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

class ISysmonService$Stub$Proxy implements ISysmonService {
    private IBinder mRemote;

    public String getInterfaceDescriptor() {
        return "com.sonyericsson.psm.sysmonservice.ISysmonService";
    }

    ISysmonService$Stub$Proxy(IBinder iBinder) {
        this.mRemote = iBinder;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.mRemote;
    }

    @Override // com.sonyericsson.psm.sysmonservice.ISysmonService
    public int getThermalLevelForCamera() throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.sonyericsson.psm.sysmonservice.ISysmonService");
            this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            return parcelObtain2.readInt();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.sonyericsson.psm.sysmonservice.ISysmonService
    public int getThermalLevelForFs1seg() throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.sonyericsson.psm.sysmonservice.ISysmonService");
            this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            return parcelObtain2.readInt();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // com.sonyericsson.psm.sysmonservice.ISysmonService
    public int getCameraLowTempBurnTimeoutSec() throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.sonyericsson.psm.sysmonservice.ISysmonService");
            this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            return parcelObtain2.readInt();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }
}
