package android.support.v4.media;

import android.media.browse.MediaBrowser;
import android.media.browse.MediaBrowser$SubscriptionCallback;
import android.os.Bundle;
import android.support.annotation.RequiresApi;

/* JADX INFO: loaded from: classes.dex */
@RequiresApi(26)
class MediaBrowserCompatApi26 {
    static Object createSubscriptionCallback(MediaBrowserCompatApi26$SubscriptionCallback mediaBrowserCompatApi26$SubscriptionCallback) {
        return new MediaBrowserCompatApi26$SubscriptionCallbackProxy(mediaBrowserCompatApi26$SubscriptionCallback);
    }

    public static void subscribe(Object obj, String str, Bundle bundle, Object obj2) {
        ((MediaBrowser) obj).subscribe(str, bundle, (MediaBrowser$SubscriptionCallback) obj2);
    }

    public static void unsubscribe(Object obj, String str, Object obj2) {
        ((MediaBrowser) obj).unsubscribe(str, (MediaBrowser$SubscriptionCallback) obj2);
    }

    private MediaBrowserCompatApi26() {
    }
}
