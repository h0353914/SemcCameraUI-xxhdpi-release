package android.support.v4.media;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;

class MediaBrowserServiceCompat$ServiceBinderImpl$6 implements Runnable {
    final /* synthetic */ MediaBrowserServiceCompat$ServiceBinderImpl this$1;
    final /* synthetic */ MediaBrowserServiceCompat$ServiceCallbacks val$callbacks;
    final /* synthetic */ int val$pid;
    final /* synthetic */ String val$pkg;
    final /* synthetic */ Bundle val$rootHints;
    final /* synthetic */ int val$uid;

    MediaBrowserServiceCompat$ServiceBinderImpl$6(MediaBrowserServiceCompat$ServiceBinderImpl mediaBrowserServiceCompat$ServiceBinderImpl, MediaBrowserServiceCompat$ServiceCallbacks mediaBrowserServiceCompat$ServiceCallbacks, String str, int i, int i2, Bundle bundle) {
        this.this$1 = mediaBrowserServiceCompat$ServiceBinderImpl;
        this.val$callbacks = mediaBrowserServiceCompat$ServiceCallbacks;
        this.val$pkg = str;
        this.val$pid = i;
        this.val$uid = i2;
        this.val$rootHints = bundle;
    }

    @Override // java.lang.Runnable
    public void run() {
        IBinder iBinderAsBinder = this.val$callbacks.asBinder();
        this.this$1.this$0.mConnections.remove(iBinderAsBinder);
        MediaBrowserServiceCompat$ConnectionRecord mediaBrowserServiceCompat$ConnectionRecord = new MediaBrowserServiceCompat$ConnectionRecord(this.this$1.this$0, this.val$pkg, this.val$pid, this.val$uid, this.val$rootHints, this.val$callbacks);
        this.this$1.this$0.mConnections.put(iBinderAsBinder, mediaBrowserServiceCompat$ConnectionRecord);
        try {
            iBinderAsBinder.linkToDeath(mediaBrowserServiceCompat$ConnectionRecord, 0);
        } catch (RemoteException unused) {
            Log.w("MBServiceCompat", "IBinder is already dead.");
        }
    }
}
