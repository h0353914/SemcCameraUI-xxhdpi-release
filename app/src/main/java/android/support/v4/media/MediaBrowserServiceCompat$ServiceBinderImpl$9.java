package android.support.v4.media;

import android.os.Bundle;
import android.support.v4.os.ResultReceiver;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
class MediaBrowserServiceCompat$ServiceBinderImpl$9 implements Runnable {
    final /* synthetic */ MediaBrowserServiceCompat$ServiceBinderImpl this$1;
    final /* synthetic */ String val$action;
    final /* synthetic */ MediaBrowserServiceCompat$ServiceCallbacks val$callbacks;
    final /* synthetic */ Bundle val$extras;
    final /* synthetic */ ResultReceiver val$receiver;

    MediaBrowserServiceCompat$ServiceBinderImpl$9(MediaBrowserServiceCompat$ServiceBinderImpl mediaBrowserServiceCompat$ServiceBinderImpl, MediaBrowserServiceCompat$ServiceCallbacks mediaBrowserServiceCompat$ServiceCallbacks, String str, Bundle bundle, ResultReceiver resultReceiver) {
        this.this$1 = mediaBrowserServiceCompat$ServiceBinderImpl;
        this.val$callbacks = mediaBrowserServiceCompat$ServiceCallbacks;
        this.val$action = str;
        this.val$extras = bundle;
        this.val$receiver = resultReceiver;
    }

    @Override // java.lang.Runnable
    public void run() {
        MediaBrowserServiceCompat$ConnectionRecord mediaBrowserServiceCompat$ConnectionRecord = this.this$1.this$0.mConnections.get(this.val$callbacks.asBinder());
        if (mediaBrowserServiceCompat$ConnectionRecord == null) {
            Log.w("MBServiceCompat", "sendCustomAction for callback that isn't registered action=" + this.val$action + ", extras=" + this.val$extras);
            return;
        }
        this.this$1.this$0.performCustomAction(this.val$action, this.val$extras, mediaBrowserServiceCompat$ConnectionRecord, this.val$receiver);
    }
}
