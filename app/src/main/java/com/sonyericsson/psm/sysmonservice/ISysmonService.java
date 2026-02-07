package com.sonyericsson.psm.sysmonservice;

import android.os.IInterface;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public interface ISysmonService extends IInterface {
    int getCameraLowTempBurnTimeoutSec() throws RemoteException;

    int getThermalLevelForCamera() throws RemoteException;

    int getThermalLevelForFs1seg() throws RemoteException;
}
