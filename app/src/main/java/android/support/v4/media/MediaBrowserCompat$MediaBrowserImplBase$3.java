package android.support.v4.media;

class MediaBrowserCompat$MediaBrowserImplBase$3 implements Runnable {
    final /* synthetic */ MediaBrowserCompat$MediaBrowserImplBase this$0;
    final /* synthetic */ MediaBrowserCompat$ItemCallback val$cb;
    final /* synthetic */ String val$mediaId;

    MediaBrowserCompat$MediaBrowserImplBase$3(MediaBrowserCompat$MediaBrowserImplBase mediaBrowserCompat$MediaBrowserImplBase, MediaBrowserCompat$ItemCallback mediaBrowserCompat$ItemCallback, String str) {
        this.this$0 = mediaBrowserCompat$MediaBrowserImplBase;
        this.val$cb = mediaBrowserCompat$ItemCallback;
        this.val$mediaId = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.val$cb.onError(this.val$mediaId);
    }
}
