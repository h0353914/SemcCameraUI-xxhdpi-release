package android.support.v4.media;

import android.os.Bundle;

class MediaBrowserCompat$MediaBrowserImplApi21$4 implements Runnable {
    final /* synthetic */ MediaBrowserCompat$MediaBrowserImplApi21 this$0;
    final /* synthetic */ MediaBrowserCompat$SearchCallback val$callback;
    final /* synthetic */ Bundle val$extras;
    final /* synthetic */ String val$query;

    MediaBrowserCompat$MediaBrowserImplApi21$4(MediaBrowserCompat$MediaBrowserImplApi21 mediaBrowserCompat$MediaBrowserImplApi21, MediaBrowserCompat$SearchCallback mediaBrowserCompat$SearchCallback, String str, Bundle bundle) {
        this.this$0 = mediaBrowserCompat$MediaBrowserImplApi21;
        this.val$callback = mediaBrowserCompat$SearchCallback;
        this.val$query = str;
        this.val$extras = bundle;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.val$callback.onError(this.val$query, this.val$extras);
    }
}
