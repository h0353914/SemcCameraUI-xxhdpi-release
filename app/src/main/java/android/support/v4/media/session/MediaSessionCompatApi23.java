package android.support.v4.media.session;

import android.support.annotation.RequiresApi;

@RequiresApi(23)
class MediaSessionCompatApi23 {
    public static Object createCallback(MediaSessionCompatApi23$Callback mediaSessionCompatApi23$Callback) {
        return new MediaSessionCompatApi23$CallbackProxy(mediaSessionCompatApi23$Callback);
    }

    private MediaSessionCompatApi23() {
    }
}
