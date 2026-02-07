package android.support.v4.media;

/* JADX INFO: loaded from: classes.dex */
class MediaBrowserCompat$ConnectionCallback$StubApi21 implements MediaBrowserCompatApi21$ConnectionCallback {
    final /* synthetic */ MediaBrowserCompat$ConnectionCallback this$0;

    MediaBrowserCompat$ConnectionCallback$StubApi21(MediaBrowserCompat$ConnectionCallback mediaBrowserCompat$ConnectionCallback) {
        this.this$0 = mediaBrowserCompat$ConnectionCallback;
    }

    @Override // android.support.v4.media.MediaBrowserCompatApi21$ConnectionCallback
    public void onConnected() {
        if (this.this$0.mConnectionCallbackInternal != null) {
            this.this$0.mConnectionCallbackInternal.onConnected();
        }
        this.this$0.onConnected();
    }

    @Override // android.support.v4.media.MediaBrowserCompatApi21$ConnectionCallback
    public void onConnectionSuspended() {
        if (this.this$0.mConnectionCallbackInternal != null) {
            this.this$0.mConnectionCallbackInternal.onConnectionSuspended();
        }
        this.this$0.onConnectionSuspended();
    }

    @Override // android.support.v4.media.MediaBrowserCompatApi21$ConnectionCallback
    public void onConnectionFailed() {
        if (this.this$0.mConnectionCallbackInternal != null) {
            this.this$0.mConnectionCallbackInternal.onConnectionFailed();
        }
        this.this$0.onConnectionFailed();
    }
}
