package android.support.v4.media.session;

import android.media.session.MediaSession;
import android.support.annotation.RequiresApi;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;

@RequiresApi(24)
class MediaSessionCompatApi24 {
    private static final String TAG = "MediaSessionCompatApi24";

    public static Object createCallback(MediaSessionCompatApi24$Callback mediaSessionCompatApi24$Callback) {
        return new MediaSessionCompatApi24$CallbackProxy(mediaSessionCompatApi24$Callback);
    }

    public static String getCallingPackage(Object obj) {
        MediaSession mediaSession = (MediaSession) obj;
        try {
            return (String) mediaSession.getClass().getMethod("getCallingPackage", new Class[0]).invoke(mediaSession, new Object[0]);
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            Log.e("MediaSessionCompatApi24", "Cannot execute MediaSession.getCallingPackage()", e);
            return null;
        }
    }

    private MediaSessionCompatApi24() {
    }
}
