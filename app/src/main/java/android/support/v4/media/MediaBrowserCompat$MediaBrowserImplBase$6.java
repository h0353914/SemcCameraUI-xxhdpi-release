package android.support.v4.media;

import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
class MediaBrowserCompat$MediaBrowserImplBase$6 implements Runnable {
    final /* synthetic */ MediaBrowserCompat$MediaBrowserImplBase this$0;
    final /* synthetic */ String val$action;
    final /* synthetic */ MediaBrowserCompat$CustomActionCallback val$callback;
    final /* synthetic */ Bundle val$extras;

    MediaBrowserCompat$MediaBrowserImplBase$6(MediaBrowserCompat$MediaBrowserImplBase mediaBrowserCompat$MediaBrowserImplBase, MediaBrowserCompat$CustomActionCallback mediaBrowserCompat$CustomActionCallback, String str, Bundle bundle) {
        this.this$0 = mediaBrowserCompat$MediaBrowserImplBase;
        this.val$callback = mediaBrowserCompat$CustomActionCallback;
        this.val$action = str;
        this.val$extras = bundle;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.val$callback.onError(this.val$action, this.val$extras, null);
    }
}
