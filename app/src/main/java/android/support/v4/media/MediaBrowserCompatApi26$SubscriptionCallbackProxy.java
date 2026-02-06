package android.support.v4.media;

import android.media.browse.MediaBrowser$MediaItem;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v4.media.MediaBrowserCompatApi26$SubscriptionCallback;
import android.support.v4.media.session.MediaSessionCompat;
import java.util.List;

class MediaBrowserCompatApi26$SubscriptionCallbackProxy<T extends MediaBrowserCompatApi26$SubscriptionCallback> extends MediaBrowserCompatApi21$SubscriptionCallbackProxy<T> {
    MediaBrowserCompatApi26$SubscriptionCallbackProxy(T t) {
        super(t);
    }

    @Override // android.media.browse.MediaBrowser$SubscriptionCallback
    public void onChildrenLoaded(@NonNull String str, List<MediaBrowser$MediaItem> list, @NonNull Bundle bundle) {
        MediaSessionCompat.ensureClassLoader(bundle);
        ((MediaBrowserCompatApi26$SubscriptionCallback) this.mSubscriptionCallback).onChildrenLoaded(str, list, bundle);
    }

    @Override // android.media.browse.MediaBrowser$SubscriptionCallback
    public void onError(@NonNull String str, @NonNull Bundle bundle) {
        MediaSessionCompat.ensureClassLoader(bundle);
        ((MediaBrowserCompatApi26$SubscriptionCallback) this.mSubscriptionCallback).onError(str, bundle);
    }
}
