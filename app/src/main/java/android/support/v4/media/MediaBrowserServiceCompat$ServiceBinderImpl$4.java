package android.support.v4.media;

import android.os.IBinder;
import android.util.Log;

class MediaBrowserServiceCompat$ServiceBinderImpl$4 implements Runnable {
    final /* synthetic */ MediaBrowserServiceCompat$ServiceBinderImpl this$1;
    final /* synthetic */ MediaBrowserServiceCompat$ServiceCallbacks val$callbacks;
    final /* synthetic */ String val$id;
    final /* synthetic */ IBinder val$token;

    MediaBrowserServiceCompat$ServiceBinderImpl$4(MediaBrowserServiceCompat$ServiceBinderImpl mediaBrowserServiceCompat$ServiceBinderImpl, MediaBrowserServiceCompat$ServiceCallbacks mediaBrowserServiceCompat$ServiceCallbacks, String str, IBinder iBinder) {
        this.this$1 = mediaBrowserServiceCompat$ServiceBinderImpl;
        this.val$callbacks = mediaBrowserServiceCompat$ServiceCallbacks;
        this.val$id = str;
        this.val$token = iBinder;
    }

    @Override // java.lang.Runnable
    public void run() {
        MediaBrowserServiceCompat$ConnectionRecord mediaBrowserServiceCompat$ConnectionRecord = this.this$1.this$0.mConnections.get(this.val$callbacks.asBinder());
        if (mediaBrowserServiceCompat$ConnectionRecord == null) {
            Log.w("MBServiceCompat", "removeSubscription for callback that isn't registered id=" + this.val$id);
            return;
        }
        if (this.this$1.this$0.removeSubscription(this.val$id, mediaBrowserServiceCompat$ConnectionRecord, this.val$token)) {
            return;
        }
        Log.w("MBServiceCompat", "removeSubscription called for " + this.val$id + " which is not subscribed");
    }
}
