package android.support.v4.media;

import android.content.Context;
import android.os.Bundle;
import android.service.media.MediaBrowserService;
import android.service.media.MediaBrowserService$Result;
import android.support.annotation.RequiresApi;
import android.util.Log;
import java.lang.reflect.Field;

@RequiresApi(26)
class MediaBrowserServiceCompatApi26 {
    private static final String TAG = "MBSCompatApi26";
    static Field sResultFlags;

    static {
        try {
            sResultFlags = MediaBrowserService$Result.class.getDeclaredField("mFlags");
            sResultFlags.setAccessible(true);
        } catch (NoSuchFieldException e) {
            Log.w("MBSCompatApi26", e);
        }
    }

    public static Object createService(Context context, MediaBrowserServiceCompatApi26$ServiceCompatProxy mediaBrowserServiceCompatApi26$ServiceCompatProxy) {
        return new MediaBrowserServiceCompatApi26$MediaBrowserServiceAdaptor(context, mediaBrowserServiceCompatApi26$ServiceCompatProxy);
    }

    public static void notifyChildrenChanged(Object obj, String str, Bundle bundle) {
        ((MediaBrowserService) obj).notifyChildrenChanged(str, bundle);
    }

    public static Bundle getBrowserRootHints(Object obj) {
        return ((MediaBrowserService) obj).getBrowserRootHints();
    }

    private MediaBrowserServiceCompatApi26() {
    }
}
