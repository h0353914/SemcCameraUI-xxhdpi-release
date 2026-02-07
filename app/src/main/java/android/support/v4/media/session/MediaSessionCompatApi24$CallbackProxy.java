package android.support.v4.media.session;

import android.net.Uri;
import android.os.Bundle;
import android.support.v4.media.session.MediaSessionCompatApi24$Callback;

/* JADX INFO: loaded from: classes.dex */
class MediaSessionCompatApi24$CallbackProxy<T extends MediaSessionCompatApi24$Callback> extends MediaSessionCompatApi23$CallbackProxy<T> {
    public MediaSessionCompatApi24$CallbackProxy(T t) {
        super(t);
    }

    @Override // android.media.session.MediaSession$Callback
    public void onPrepare() {
        ((MediaSessionCompatApi24$Callback) this.mCallback).onPrepare();
    }

    @Override // android.media.session.MediaSession$Callback
    public void onPrepareFromMediaId(String str, Bundle bundle) {
        MediaSessionCompat.ensureClassLoader(bundle);
        ((MediaSessionCompatApi24$Callback) this.mCallback).onPrepareFromMediaId(str, bundle);
    }

    @Override // android.media.session.MediaSession$Callback
    public void onPrepareFromSearch(String str, Bundle bundle) {
        MediaSessionCompat.ensureClassLoader(bundle);
        ((MediaSessionCompatApi24$Callback) this.mCallback).onPrepareFromSearch(str, bundle);
    }

    @Override // android.media.session.MediaSession$Callback
    public void onPrepareFromUri(Uri uri, Bundle bundle) {
        MediaSessionCompat.ensureClassLoader(bundle);
        ((MediaSessionCompatApi24$Callback) this.mCallback).onPrepareFromUri(uri, bundle);
    }
}
