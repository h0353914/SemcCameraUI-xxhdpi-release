package android.support.v4.media;

import android.os.BadParcelableException;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Messenger;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.MediaSessionCompat$Token;
import android.util.Log;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
class MediaBrowserCompat$CallbackHandler extends Handler {
    private final WeakReference<MediaBrowserCompat$MediaBrowserServiceCallbackImpl> mCallbackImplRef;
    private WeakReference<Messenger> mCallbacksMessengerRef;

    MediaBrowserCompat$CallbackHandler(MediaBrowserCompat$MediaBrowserServiceCallbackImpl mediaBrowserCompat$MediaBrowserServiceCallbackImpl) {
        this.mCallbackImplRef = new WeakReference<>(mediaBrowserCompat$MediaBrowserServiceCallbackImpl);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        if (this.mCallbacksMessengerRef == null || this.mCallbacksMessengerRef.get() == null || this.mCallbackImplRef.get() == null) {
            return;
        }
        Bundle data = message.getData();
        MediaSessionCompat.ensureClassLoader(data);
        MediaBrowserCompat$MediaBrowserServiceCallbackImpl mediaBrowserCompat$MediaBrowserServiceCallbackImpl = this.mCallbackImplRef.get();
        Messenger messenger = this.mCallbacksMessengerRef.get();
        try {
            switch (message.what) {
                case 1:
                    Bundle bundle = data.getBundle("data_root_hints");
                    MediaSessionCompat.ensureClassLoader(bundle);
                    mediaBrowserCompat$MediaBrowserServiceCallbackImpl.onServiceConnected(messenger, data.getString("data_media_item_id"), (MediaSessionCompat$Token) data.getParcelable("data_media_session_token"), bundle);
                    break;
                case 2:
                    mediaBrowserCompat$MediaBrowserServiceCallbackImpl.onConnectionFailed(messenger);
                    break;
                case 3:
                    Bundle bundle2 = data.getBundle("data_options");
                    MediaSessionCompat.ensureClassLoader(bundle2);
                    Bundle bundle3 = data.getBundle("data_notify_children_changed_options");
                    MediaSessionCompat.ensureClassLoader(bundle3);
                    mediaBrowserCompat$MediaBrowserServiceCallbackImpl.onLoadChildren(messenger, data.getString("data_media_item_id"), data.getParcelableArrayList("data_media_item_list"), bundle2, bundle3);
                    break;
                default:
                    Log.w("MediaBrowserCompat", "Unhandled message: " + message + "\n  Client version: 1\n  Service version: " + message.arg1);
                    break;
            }
        } catch (BadParcelableException unused) {
            Log.e("MediaBrowserCompat", "Could not unparcel the data.");
            if (message.what == 1) {
                mediaBrowserCompat$MediaBrowserServiceCallbackImpl.onConnectionFailed(messenger);
            }
        }
    }

    void setCallbacksMessenger(Messenger messenger) {
        this.mCallbacksMessengerRef = new WeakReference<>(messenger);
    }
}
