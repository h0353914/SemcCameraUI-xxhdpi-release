package android.support.v4.media;

/* JADX INFO: loaded from: classes.dex */
class MediaBrowserServiceCompat$ConnectionRecord$1 implements Runnable {
    final /* synthetic */ MediaBrowserServiceCompat$ConnectionRecord this$1;

    MediaBrowserServiceCompat$ConnectionRecord$1(MediaBrowserServiceCompat$ConnectionRecord mediaBrowserServiceCompat$ConnectionRecord) {
        this.this$1 = mediaBrowserServiceCompat$ConnectionRecord;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$1.this$0.mConnections.remove(this.this$1.callbacks.asBinder());
    }
}
