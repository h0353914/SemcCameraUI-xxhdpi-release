package com.sonymobile.xperiaxloops;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;

public interface IXperiaXLoopsService extends IInterface {
    void notifyShowLoopsByApps(boolean z, int i) throws RemoteException;

    void registerCallback(int i, IXperiaXLoopsServiceCallback iXperiaXLoopsServiceCallback) throws RemoteException;

    boolean requestAssistEmphasis(Bundle bundle) throws RemoteException;

    void sendFPAResult(int i, Bundle bundle) throws RemoteException;

    void sendKeyguardStatus(int i) throws RemoteException;

    void sendScreenStatus(int i) throws RemoteException;

    void setLoopsColorOnLockscreen(int i) throws RemoteException;

    void unregisterCallback(int i, IXperiaXLoopsServiceCallback iXperiaXLoopsServiceCallback) throws RemoteException;
}
