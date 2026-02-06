package android.support.v4.media;

class MediaBrowserServiceCompat$ServiceBinderImpl$2 implements Runnable {
    final /* synthetic */ MediaBrowserServiceCompat$ServiceBinderImpl this$1;
    final /* synthetic */ MediaBrowserServiceCompat$ServiceCallbacks val$callbacks;

    MediaBrowserServiceCompat$ServiceBinderImpl$2(MediaBrowserServiceCompat$ServiceBinderImpl mediaBrowserServiceCompat$ServiceBinderImpl, MediaBrowserServiceCompat$ServiceCallbacks mediaBrowserServiceCompat$ServiceCallbacks) {
        this.this$1 = mediaBrowserServiceCompat$ServiceBinderImpl;
        this.val$callbacks = mediaBrowserServiceCompat$ServiceCallbacks;
    }

    @Override // java.lang.Runnable
    public void run() {
        MediaBrowserServiceCompat$ConnectionRecord mediaBrowserServiceCompat$ConnectionRecordRemove = this.this$1.this$0.mConnections.remove(this.val$callbacks.asBinder());
        if (mediaBrowserServiceCompat$ConnectionRecordRemove != null) {
            mediaBrowserServiceCompat$ConnectionRecordRemove.callbacks.asBinder().unlinkToDeath(mediaBrowserServiceCompat$ConnectionRecordRemove, 0);
        }
    }
}
