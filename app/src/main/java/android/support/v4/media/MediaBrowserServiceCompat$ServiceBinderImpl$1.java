package android.support.v4.media;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;

class MediaBrowserServiceCompat$ServiceBinderImpl$1 implements Runnable {
    final /* synthetic */ MediaBrowserServiceCompat$ServiceBinderImpl this$1;
    final /* synthetic */ MediaBrowserServiceCompat$ServiceCallbacks val$callbacks;
    final /* synthetic */ int val$pid;
    final /* synthetic */ String val$pkg;
    final /* synthetic */ Bundle val$rootHints;
    final /* synthetic */ int val$uid;

    MediaBrowserServiceCompat$ServiceBinderImpl$1(MediaBrowserServiceCompat$ServiceBinderImpl mediaBrowserServiceCompat$ServiceBinderImpl, MediaBrowserServiceCompat$ServiceCallbacks mediaBrowserServiceCompat$ServiceCallbacks, String str, int i, int i2, Bundle bundle) {
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
        this.this$1.this$0.mCurConnection = mediaBrowserServiceCompat$ConnectionRecord;
        mediaBrowserServiceCompat$ConnectionRecord.root = this.this$1.this$0.onGetRoot(this.val$pkg, this.val$uid, this.val$rootHints);
        this.this$1.this$0.mCurConnection = null;
        if (mediaBrowserServiceCompat$ConnectionRecord.root == null) {
            Log.i("MBServiceCompat", "No root for client " + this.val$pkg + " from service " + getClass().getName());
            try {
                this.val$callbacks.onConnectFailed();
                return;
            } catch (RemoteException unused) {
                Log.w("MBServiceCompat", "Calling onConnectFailed() failed. Ignoring. pkg=" + this.val$pkg);
                return;
            }
        }
        try {
            this.this$1.this$0.mConnections.put(iBinderAsBinder, mediaBrowserServiceCompat$ConnectionRecord);
            iBinderAsBinder.linkToDeath(mediaBrowserServiceCompat$ConnectionRecord, 0);
            if (this.this$1.this$0.mSession != null) {
                this.val$callbacks.onConnect(mediaBrowserServiceCompat$ConnectionRecord.root.getRootId(), this.this$1.this$0.mSession, mediaBrowserServiceCompat$ConnectionRecord.root.getExtras());
            }
        } catch (RemoteException unused2) {
            Log.w("MBServiceCompat", "Calling onConnect() failed. Dropping client. pkg=" + this.val$pkg);
            this.this$1.this$0.mConnections.remove(iBinderAsBinder);
        }
    }
}
