package android.support.v4.media;

import android.media.browse.MediaBrowser;
import android.media.browse.MediaBrowser$ItemCallback;
import android.support.annotation.RequiresApi;

/* JADX INFO: loaded from: classes.dex */
@RequiresApi(23)
class MediaBrowserCompatApi23 {
    public static Object createItemCallback(MediaBrowserCompatApi23$ItemCallback mediaBrowserCompatApi23$ItemCallback) {
        return new MediaBrowserCompatApi23$ItemCallbackProxy(mediaBrowserCompatApi23$ItemCallback);
    }

    public static void getItem(Object obj, String str, Object obj2) {
        ((MediaBrowser) obj).getItem(str, (MediaBrowser$ItemCallback) obj2);
    }

    private MediaBrowserCompatApi23() {
    }
}
