package com.sonyericsson.album.fastview;

import android.net.Uri;
import android.os.IInterface;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public interface IFastViewService extends IInterface {
    void prepare(Uri uri) throws RemoteException;
}
