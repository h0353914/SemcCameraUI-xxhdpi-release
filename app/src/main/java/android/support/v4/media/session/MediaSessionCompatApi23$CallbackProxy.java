package android.support.v4.media.session;

import android.net.Uri;
import android.os.Bundle;
import android.support.v4.media.session.MediaSessionCompatApi23$Callback;

class MediaSessionCompatApi23$CallbackProxy<T extends MediaSessionCompatApi23$Callback> extends MediaSessionCompatApi21$CallbackProxy<T> {
    public MediaSessionCompatApi23$CallbackProxy(T t) {
        super(t);
    }

    @Override // android.media.session.MediaSession$Callback
    public void onPlayFromUri(Uri uri, Bundle bundle) {
        MediaSessionCompat.ensureClassLoader(bundle);
        ((MediaSessionCompatApi23$Callback) this.mCallback).onPlayFromUri(uri, bundle);
    }
}
