package com.sonyericsson.album.fastview;

import android.net.Uri;
import android.os.IInterface;
import android.os.RemoteException;

public interface IFastViewService extends IInterface {
    void prepare(Uri uri) throws RemoteException;
}
