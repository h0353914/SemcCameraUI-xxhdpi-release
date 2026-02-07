package android.support.v4.media;

import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v4.app.BundleCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.os.ResultReceiver;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
final class MediaBrowserServiceCompat$ServiceHandler extends Handler {
    private final MediaBrowserServiceCompat$ServiceBinderImpl mServiceBinderImpl;
    final /* synthetic */ MediaBrowserServiceCompat this$0;

    MediaBrowserServiceCompat$ServiceHandler(MediaBrowserServiceCompat mediaBrowserServiceCompat) {
        this.this$0 = mediaBrowserServiceCompat;
        this.mServiceBinderImpl = new MediaBrowserServiceCompat$ServiceBinderImpl(this.this$0);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        Bundle data = message.getData();
        switch (message.what) {
            case 1:
                Bundle bundle = data.getBundle("data_root_hints");
                MediaSessionCompat.ensureClassLoader(bundle);
                this.mServiceBinderImpl.connect(data.getString("data_package_name"), data.getInt("data_calling_pid"), data.getInt("data_calling_uid"), bundle, new MediaBrowserServiceCompat$ServiceCallbacksCompat(message.replyTo));
                break;
            case 2:
                this.mServiceBinderImpl.disconnect(new MediaBrowserServiceCompat$ServiceCallbacksCompat(message.replyTo));
                break;
            case 3:
                Bundle bundle2 = data.getBundle("data_options");
                MediaSessionCompat.ensureClassLoader(bundle2);
                this.mServiceBinderImpl.addSubscription(data.getString("data_media_item_id"), BundleCompat.getBinder(data, "data_callback_token"), bundle2, new MediaBrowserServiceCompat$ServiceCallbacksCompat(message.replyTo));
                break;
            case 4:
                this.mServiceBinderImpl.removeSubscription(data.getString("data_media_item_id"), BundleCompat.getBinder(data, "data_callback_token"), new MediaBrowserServiceCompat$ServiceCallbacksCompat(message.replyTo));
                break;
            case 5:
                this.mServiceBinderImpl.getMediaItem(data.getString("data_media_item_id"), (ResultReceiver) data.getParcelable("data_result_receiver"), new MediaBrowserServiceCompat$ServiceCallbacksCompat(message.replyTo));
                break;
            case 6:
                Bundle bundle3 = data.getBundle("data_root_hints");
                MediaSessionCompat.ensureClassLoader(bundle3);
                this.mServiceBinderImpl.registerCallbacks(new MediaBrowserServiceCompat$ServiceCallbacksCompat(message.replyTo), data.getString("data_package_name"), data.getInt("data_calling_pid"), data.getInt("data_calling_uid"), bundle3);
                break;
            case 7:
                this.mServiceBinderImpl.unregisterCallbacks(new MediaBrowserServiceCompat$ServiceCallbacksCompat(message.replyTo));
                break;
            case 8:
                Bundle bundle4 = data.getBundle("data_search_extras");
                MediaSessionCompat.ensureClassLoader(bundle4);
                this.mServiceBinderImpl.search(data.getString("data_search_query"), bundle4, (ResultReceiver) data.getParcelable("data_result_receiver"), new MediaBrowserServiceCompat$ServiceCallbacksCompat(message.replyTo));
                break;
            case 9:
                Bundle bundle5 = data.getBundle("data_custom_action_extras");
                MediaSessionCompat.ensureClassLoader(bundle5);
                this.mServiceBinderImpl.sendCustomAction(data.getString("data_custom_action"), bundle5, (ResultReceiver) data.getParcelable("data_result_receiver"), new MediaBrowserServiceCompat$ServiceCallbacksCompat(message.replyTo));
                break;
            default:
                Log.w("MBServiceCompat", "Unhandled message: " + message + "\n  Service version: 2\n  Client version: " + message.arg1);
                break;
        }
    }

    @Override // android.os.Handler
    public boolean sendMessageAtTime(Message message, long j) {
        Bundle data = message.getData();
        data.setClassLoader(MediaBrowserCompat.class.getClassLoader());
        data.putInt("data_calling_uid", Binder.getCallingUid());
        data.putInt("data_calling_pid", Binder.getCallingPid());
        return super.sendMessageAtTime(message, j);
    }

    public void postOrRun(Runnable runnable) {
        if (Thread.currentThread() == getLooper().getThread()) {
            runnable.run();
        } else {
            post(runnable);
        }
    }
}
