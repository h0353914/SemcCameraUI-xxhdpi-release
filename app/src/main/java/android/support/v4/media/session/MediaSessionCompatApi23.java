package android.support.v4.media.session;

import android.support.annotation.RequiresApi;

/* JADX INFO: loaded from: classes.dex */
@RequiresApi(23)
class MediaSessionCompatApi23 {
    public static Object createCallback(MediaSessionCompatApi23$Callback mediaSessionCompatApi23$Callback) {
        return new MediaSessionCompatApi23$CallbackProxy(mediaSessionCompatApi23$Callback);
    }

    private MediaSessionCompatApi23() {
    }
}
