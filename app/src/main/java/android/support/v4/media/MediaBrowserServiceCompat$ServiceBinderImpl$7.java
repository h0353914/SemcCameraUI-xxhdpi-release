package android.support.v4.media;

import android.os.IBinder;

class MediaBrowserServiceCompat$ServiceBinderImpl$7 implements Runnable {
    final /* synthetic */ MediaBrowserServiceCompat$ServiceBinderImpl this$1;
    final /* synthetic */ MediaBrowserServiceCompat$ServiceCallbacks val$callbacks;

    MediaBrowserServiceCompat$ServiceBinderImpl$7(MediaBrowserServiceCompat$ServiceBinderImpl mediaBrowserServiceCompat$ServiceBinderImpl, MediaBrowserServiceCompat$ServiceCallbacks mediaBrowserServiceCompat$ServiceCallbacks) {
        this.this$1 = mediaBrowserServiceCompat$ServiceBinderImpl;
        this.val$callbacks = mediaBrowserServiceCompat$ServiceCallbacks;
    }

    @Override // java.lang.Runnable
    public void run() {
        IBinder iBinderAsBinder = this.val$callbacks.asBinder();
        MediaBrowserServiceCompat$ConnectionRecord mediaBrowserServiceCompat$ConnectionRecordRemove = this.this$1.this$0.mConnections.remove(iBinderAsBinder);
        if (mediaBrowserServiceCompat$ConnectionRecordRemove != null) {
            iBinderAsBinder.unlinkToDeath(mediaBrowserServiceCompat$ConnectionRecordRemove, 0);
        }
    }
}
