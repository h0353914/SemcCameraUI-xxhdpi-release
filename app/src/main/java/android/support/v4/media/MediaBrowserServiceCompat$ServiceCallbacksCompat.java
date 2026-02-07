package android.support.v4.media;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.support.v4.media.session.MediaSessionCompat$Token;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class MediaBrowserServiceCompat$ServiceCallbacksCompat implements MediaBrowserServiceCompat$ServiceCallbacks {
    final Messenger mCallbacks;

    MediaBrowserServiceCompat$ServiceCallbacksCompat(Messenger messenger) {
        this.mCallbacks = messenger;
    }

    @Override // android.support.v4.media.MediaBrowserServiceCompat$ServiceCallbacks
    public IBinder asBinder() {
        return this.mCallbacks.getBinder();
    }

    @Override // android.support.v4.media.MediaBrowserServiceCompat$ServiceCallbacks
    public void onConnect(String str, MediaSessionCompat$Token mediaSessionCompat$Token, Bundle bundle) throws RemoteException {
        if (bundle == null) {
            bundle = new Bundle();
        }
        bundle.putInt("extra_service_version", 2);
        Bundle bundle2 = new Bundle();
        bundle2.putString("data_media_item_id", str);
        bundle2.putParcelable("data_media_session_token", mediaSessionCompat$Token);
        bundle2.putBundle("data_root_hints", bundle);
        sendRequest(1, bundle2);
    }

    @Override // android.support.v4.media.MediaBrowserServiceCompat$ServiceCallbacks
    public void onConnectFailed() throws RemoteException {
        sendRequest(2, null);
    }

    @Override // android.support.v4.media.MediaBrowserServiceCompat$ServiceCallbacks
    public void onLoadChildren(String str, List<MediaBrowserCompat$MediaItem> list, Bundle bundle, Bundle bundle2) throws RemoteException {
        Bundle bundle3 = new Bundle();
        bundle3.putString("data_media_item_id", str);
        bundle3.putBundle("data_options", bundle);
        bundle3.putBundle("data_notify_children_changed_options", bundle2);
        if (list != null) {
            bundle3.putParcelableArrayList("data_media_item_list", list instanceof ArrayList ? (ArrayList) list : new ArrayList<>(list));
        }
        sendRequest(3, bundle3);
    }

    private void sendRequest(int i, Bundle bundle) throws RemoteException {
        Message messageObtain = Message.obtain();
        messageObtain.what = i;
        messageObtain.arg1 = 2;
        messageObtain.setData(bundle);
        this.mCallbacks.send(messageObtain);
    }
}
