package android.support.v4.media;

/* JADX INFO: loaded from: classes.dex */
class MediaBrowserCompat$MediaBrowserImplApi21$1 implements Runnable {
    final /* synthetic */ MediaBrowserCompat$MediaBrowserImplApi21 this$0;
    final /* synthetic */ MediaBrowserCompat$ItemCallback val$cb;
    final /* synthetic */ String val$mediaId;

    MediaBrowserCompat$MediaBrowserImplApi21$1(MediaBrowserCompat$MediaBrowserImplApi21 mediaBrowserCompat$MediaBrowserImplApi21, MediaBrowserCompat$ItemCallback mediaBrowserCompat$ItemCallback, String str) {
        this.this$0 = mediaBrowserCompat$MediaBrowserImplApi21;
        this.val$cb = mediaBrowserCompat$ItemCallback;
        this.val$mediaId = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.val$cb.onError(this.val$mediaId);
    }
}
