package android.support.v4.media;

import android.os.Bundle;

class MediaBrowserCompat$MediaBrowserImplApi21$7 implements Runnable {
    final /* synthetic */ MediaBrowserCompat$MediaBrowserImplApi21 this$0;
    final /* synthetic */ String val$action;
    final /* synthetic */ MediaBrowserCompat$CustomActionCallback val$callback;
    final /* synthetic */ Bundle val$extras;

    MediaBrowserCompat$MediaBrowserImplApi21$7(MediaBrowserCompat$MediaBrowserImplApi21 mediaBrowserCompat$MediaBrowserImplApi21, MediaBrowserCompat$CustomActionCallback mediaBrowserCompat$CustomActionCallback, String str, Bundle bundle) {
        this.this$0 = mediaBrowserCompat$MediaBrowserImplApi21;
        this.val$callback = mediaBrowserCompat$CustomActionCallback;
        this.val$action = str;
        this.val$extras = bundle;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.val$callback.onError(this.val$action, this.val$extras, null);
    }
}
