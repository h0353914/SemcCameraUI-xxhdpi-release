package android.support.v4.media;

import android.media.browse.MediaBrowser$ConnectionCallback;
import android.support.v4.media.MediaBrowserCompatApi21$ConnectionCallback;

class MediaBrowserCompatApi21$ConnectionCallbackProxy<T extends MediaBrowserCompatApi21$ConnectionCallback> extends MediaBrowser$ConnectionCallback {
    protected final T mConnectionCallback;

    public MediaBrowserCompatApi21$ConnectionCallbackProxy(T t) {
        this.mConnectionCallback = t;
    }

    @Override // android.media.browse.MediaBrowser$ConnectionCallback
    public void onConnected() {
        this.mConnectionCallback.onConnected();
    }

    @Override // android.media.browse.MediaBrowser$ConnectionCallback
    public void onConnectionSuspended() {
        this.mConnectionCallback.onConnectionSuspended();
    }

    @Override // android.media.browse.MediaBrowser$ConnectionCallback
    public void onConnectionFailed() {
        this.mConnectionCallback.onConnectionFailed();
    }
}
