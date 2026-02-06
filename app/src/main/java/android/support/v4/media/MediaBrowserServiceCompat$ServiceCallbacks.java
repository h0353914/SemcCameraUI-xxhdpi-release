package android.support.v4.media;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.v4.media.session.MediaSessionCompat$Token;
import java.util.List;

interface MediaBrowserServiceCompat$ServiceCallbacks {
    IBinder asBinder();

    void onConnect(String str, MediaSessionCompat$Token mediaSessionCompat$Token, Bundle bundle) throws RemoteException;

    void onConnectFailed() throws RemoteException;

    void onLoadChildren(String str, List<MediaBrowserCompat$MediaItem> list, Bundle bundle, Bundle bundle2) throws RemoteException;
}
