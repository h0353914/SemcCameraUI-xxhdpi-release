package android.support.v4.media;

import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
class MediaBrowserCompat$MediaBrowserImplBase$5 implements Runnable {
    final /* synthetic */ MediaBrowserCompat$MediaBrowserImplBase this$0;
    final /* synthetic */ MediaBrowserCompat$SearchCallback val$callback;
    final /* synthetic */ Bundle val$extras;
    final /* synthetic */ String val$query;

    MediaBrowserCompat$MediaBrowserImplBase$5(MediaBrowserCompat$MediaBrowserImplBase mediaBrowserCompat$MediaBrowserImplBase, MediaBrowserCompat$SearchCallback mediaBrowserCompat$SearchCallback, String str, Bundle bundle) {
        this.this$0 = mediaBrowserCompat$MediaBrowserImplBase;
        this.val$callback = mediaBrowserCompat$SearchCallback;
        this.val$query = str;
        this.val$extras = bundle;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.val$callback.onError(this.val$query, this.val$extras);
    }
}
