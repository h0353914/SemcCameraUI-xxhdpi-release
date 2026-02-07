package android.support.v4.media;

import android.content.ComponentName;
import android.content.Context;
import android.media.browse.MediaBrowser;
import android.media.browse.MediaBrowser$ConnectionCallback;
import android.media.browse.MediaBrowser$SubscriptionCallback;
import android.os.Bundle;
import android.support.annotation.RequiresApi;

/* JADX INFO: loaded from: classes.dex */
@RequiresApi(21)
class MediaBrowserCompatApi21 {
    static final String NULL_MEDIA_ITEM_ID = "android.support.v4.media.MediaBrowserCompat.NULL_MEDIA_ITEM";

    public static Object createConnectionCallback(MediaBrowserCompatApi21$ConnectionCallback mediaBrowserCompatApi21$ConnectionCallback) {
        return new MediaBrowserCompatApi21$ConnectionCallbackProxy(mediaBrowserCompatApi21$ConnectionCallback);
    }

    public static Object createBrowser(Context context, ComponentName componentName, Object obj, Bundle bundle) {
        return new MediaBrowser(context, componentName, (MediaBrowser$ConnectionCallback) obj, bundle);
    }

    public static void connect(Object obj) {
        ((MediaBrowser) obj).connect();
    }

    public static void disconnect(Object obj) {
        ((MediaBrowser) obj).disconnect();
    }

    public static boolean isConnected(Object obj) {
        return ((MediaBrowser) obj).isConnected();
    }

    public static ComponentName getServiceComponent(Object obj) {
        return ((MediaBrowser) obj).getServiceComponent();
    }

    public static String getRoot(Object obj) {
        return ((MediaBrowser) obj).getRoot();
    }

    public static Bundle getExtras(Object obj) {
        return ((MediaBrowser) obj).getExtras();
    }

    public static Object getSessionToken(Object obj) {
        return ((MediaBrowser) obj).getSessionToken();
    }

    public static Object createSubscriptionCallback(MediaBrowserCompatApi21$SubscriptionCallback mediaBrowserCompatApi21$SubscriptionCallback) {
        return new MediaBrowserCompatApi21$SubscriptionCallbackProxy(mediaBrowserCompatApi21$SubscriptionCallback);
    }

    public static void subscribe(Object obj, String str, Object obj2) {
        ((MediaBrowser) obj).subscribe(str, (MediaBrowser$SubscriptionCallback) obj2);
    }

    public static void unsubscribe(Object obj, String str) {
        ((MediaBrowser) obj).unsubscribe(str);
    }

    private MediaBrowserCompatApi21() {
    }
}
