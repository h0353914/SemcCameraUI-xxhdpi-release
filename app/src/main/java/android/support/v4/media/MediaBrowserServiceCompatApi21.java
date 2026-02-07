package android.support.v4.media;

import android.content.Context;
import android.content.Intent;
import android.media.session.MediaSession$Token;
import android.os.IBinder;
import android.service.media.MediaBrowserService;
import android.support.annotation.RequiresApi;

/* JADX INFO: loaded from: classes.dex */
@RequiresApi(21)
class MediaBrowserServiceCompatApi21 {
    public static Object createService(Context context, MediaBrowserServiceCompatApi21$ServiceCompatProxy mediaBrowserServiceCompatApi21$ServiceCompatProxy) {
        return new MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptor(context, mediaBrowserServiceCompatApi21$ServiceCompatProxy);
    }

    public static void onCreate(Object obj) {
        ((MediaBrowserService) obj).onCreate();
    }

    public static IBinder onBind(Object obj, Intent intent) {
        return ((MediaBrowserService) obj).onBind(intent);
    }

    public static void setSessionToken(Object obj, Object obj2) {
        ((MediaBrowserService) obj).setSessionToken((MediaSession$Token) obj2);
    }

    public static void notifyChildrenChanged(Object obj, String str) {
        ((MediaBrowserService) obj).notifyChildrenChanged(str);
    }

    private MediaBrowserServiceCompatApi21() {
    }
}
