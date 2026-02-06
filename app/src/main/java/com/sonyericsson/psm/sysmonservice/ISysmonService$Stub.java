package com.sonyericsson.psm.sysmonservice;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract class ISysmonService$Stub extends Binder implements ISysmonService {
    private static final String DESCRIPTOR = "com.sonyericsson.psm.sysmonservice.ISysmonService";
    static final int TRANSACTION_getCameraLowTempBurnTimeoutSec = 3;
    static final int TRANSACTION_getThermalLevelForCamera = 1;
    static final int TRANSACTION_getThermalLevelForFs1seg = 2;

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }

    public ISysmonService$Stub() {
        attachInterface(this, "com.sonyericsson.psm.sysmonservice.ISysmonService");
    }

    public static ISysmonService asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.sonyericsson.psm.sysmonservice.ISysmonService");
        if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof ISysmonService)) {
            return (ISysmonService) iInterfaceQueryLocalInterface;
        }
        return new ISysmonService$Stub$Proxy(iBinder);
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1598968902) {
            parcel2.writeString("com.sonyericsson.psm.sysmonservice.ISysmonService");
            return true;
        }
        switch (i) {
            case 1:
                parcel.enforceInterface("com.sonyericsson.psm.sysmonservice.ISysmonService");
                int thermalLevelForCamera = getThermalLevelForCamera();
                parcel2.writeNoException();
                parcel2.writeInt(thermalLevelForCamera);
                return true;
            case 2:
                parcel.enforceInterface("com.sonyericsson.psm.sysmonservice.ISysmonService");
                int thermalLevelForFs1seg = getThermalLevelForFs1seg();
                parcel2.writeNoException();
                parcel2.writeInt(thermalLevelForFs1seg);
                return true;
            case 3:
                parcel.enforceInterface("com.sonyericsson.psm.sysmonservice.ISysmonService");
                int cameraLowTempBurnTimeoutSec = getCameraLowTempBurnTimeoutSec();
                parcel2.writeNoException();
                parcel2.writeInt(cameraLowTempBurnTimeoutSec);
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
