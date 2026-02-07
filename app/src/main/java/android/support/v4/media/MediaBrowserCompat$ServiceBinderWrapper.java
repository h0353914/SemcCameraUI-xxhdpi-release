package android.support.v4.media;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.support.v4.app.BundleCompat;
import android.support.v4.os.ResultReceiver;

/* JADX INFO: loaded from: classes.dex */
class MediaBrowserCompat$ServiceBinderWrapper {
    private Messenger mMessenger;
    private Bundle mRootHints;

    public MediaBrowserCompat$ServiceBinderWrapper(IBinder iBinder, Bundle bundle) {
        this.mMessenger = new Messenger(iBinder);
        this.mRootHints = bundle;
    }

    void connect(Context context, Messenger messenger) throws RemoteException {
        Bundle bundle = new Bundle();
        bundle.putString("data_package_name", context.getPackageName());
        bundle.putBundle("data_root_hints", this.mRootHints);
        sendRequest(1, bundle, messenger);
    }

    void disconnect(Messenger messenger) throws RemoteException {
        sendRequest(2, null, messenger);
    }

    void addSubscription(String str, IBinder iBinder, Bundle bundle, Messenger messenger) throws RemoteException {
        Bundle bundle2 = new Bundle();
        bundle2.putString("data_media_item_id", str);
        BundleCompat.putBinder(bundle2, "data_callback_token", iBinder);
        bundle2.putBundle("data_options", bundle);
        sendRequest(3, bundle2, messenger);
    }

    void removeSubscription(String str, IBinder iBinder, Messenger messenger) throws RemoteException {
        Bundle bundle = new Bundle();
        bundle.putString("data_media_item_id", str);
        BundleCompat.putBinder(bundle, "data_callback_token", iBinder);
        sendRequest(4, bundle, messenger);
    }

    void getMediaItem(String str, ResultReceiver resultReceiver, Messenger messenger) throws RemoteException {
        Bundle bundle = new Bundle();
        bundle.putString("data_media_item_id", str);
        bundle.putParcelable("data_result_receiver", resultReceiver);
        sendRequest(5, bundle, messenger);
    }

    void registerCallbackMessenger(Context context, Messenger messenger) throws RemoteException {
        Bundle bundle = new Bundle();
        bundle.putString("data_package_name", context.getPackageName());
        bundle.putBundle("data_root_hints", this.mRootHints);
        sendRequest(6, bundle, messenger);
    }

    void unregisterCallbackMessenger(Messenger messenger) throws RemoteException {
        sendRequest(7, null, messenger);
    }

    void search(String str, Bundle bundle, ResultReceiver resultReceiver, Messenger messenger) throws RemoteException {
        Bundle bundle2 = new Bundle();
        bundle2.putString("data_search_query", str);
        bundle2.putBundle("data_search_extras", bundle);
        bundle2.putParcelable("data_result_receiver", resultReceiver);
        sendRequest(8, bundle2, messenger);
    }

    void sendCustomAction(String str, Bundle bundle, ResultReceiver resultReceiver, Messenger messenger) throws RemoteException {
        Bundle bundle2 = new Bundle();
        bundle2.putString("data_custom_action", str);
        bundle2.putBundle("data_custom_action_extras", bundle);
        bundle2.putParcelable("data_result_receiver", resultReceiver);
        sendRequest(9, bundle2, messenger);
    }

    private void sendRequest(int i, Bundle bundle, Messenger messenger) throws RemoteException {
        Message messageObtain = Message.obtain();
        messageObtain.what = i;
        messageObtain.arg1 = 1;
        messageObtain.setData(bundle);
        messageObtain.replyTo = messenger;
        this.mMessenger.send(messageObtain);
    }
}
