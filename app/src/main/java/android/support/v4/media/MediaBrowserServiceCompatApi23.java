package android.support.v4.media;

import android.content.Context;
import android.support.annotation.RequiresApi;

/* JADX INFO: loaded from: classes.dex */
@RequiresApi(23)
class MediaBrowserServiceCompatApi23 {
    public static Object createService(Context context, MediaBrowserServiceCompatApi23$ServiceCompatProxy mediaBrowserServiceCompatApi23$ServiceCompatProxy) {
        return new MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptor(context, mediaBrowserServiceCompatApi23$ServiceCompatProxy);
    }

    private MediaBrowserServiceCompatApi23() {
    }
}
