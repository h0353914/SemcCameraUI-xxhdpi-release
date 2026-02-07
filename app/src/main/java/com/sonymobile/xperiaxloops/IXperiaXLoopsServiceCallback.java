package com.sonymobile.xperiaxloops;

import android.os.IInterface;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public interface IXperiaXLoopsServiceCallback extends IInterface {
    void hide(boolean z) throws RemoteException;

    void show() throws RemoteException;
}
