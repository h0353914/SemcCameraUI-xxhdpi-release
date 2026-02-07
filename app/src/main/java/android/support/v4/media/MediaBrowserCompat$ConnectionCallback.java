package android.support.v4.media;

import android.os.Build$VERSION;

/* JADX INFO: loaded from: classes.dex */
public class MediaBrowserCompat$ConnectionCallback {
    MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal mConnectionCallbackInternal;
    final Object mConnectionCallbackObj;

    public void onConnected() {
    }

    public void onConnectionFailed() {
    }

    public void onConnectionSuspended() {
    }

    public MediaBrowserCompat$ConnectionCallback() {
        if (Build$VERSION.SDK_INT >= 21) {
            this.mConnectionCallbackObj = MediaBrowserCompatApi21.createConnectionCallback(new MediaBrowserCompat$ConnectionCallback$StubApi21(this));
        } else {
            this.mConnectionCallbackObj = null;
        }
    }

    void setInternalConnectionCallback(MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal mediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal) {
        this.mConnectionCallbackInternal = mediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;
    }
}
