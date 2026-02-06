package com.sonymobile.xperiaxloops;

import android.os.IInterface;
import android.os.RemoteException;

public interface IXperiaXLoopsServiceCallback extends IInterface {
    void hide(boolean z) throws RemoteException;

    void show() throws RemoteException;
}
