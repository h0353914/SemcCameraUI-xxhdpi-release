package android.support.v4.media;

import android.support.v4.os.ResultReceiver;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
class MediaBrowserServiceCompat$ServiceBinderImpl$5 implements Runnable {
    final /* synthetic */ MediaBrowserServiceCompat$ServiceBinderImpl this$1;
    final /* synthetic */ MediaBrowserServiceCompat$ServiceCallbacks val$callbacks;
    final /* synthetic */ String val$mediaId;
    final /* synthetic */ ResultReceiver val$receiver;

    MediaBrowserServiceCompat$ServiceBinderImpl$5(MediaBrowserServiceCompat$ServiceBinderImpl mediaBrowserServiceCompat$ServiceBinderImpl, MediaBrowserServiceCompat$ServiceCallbacks mediaBrowserServiceCompat$ServiceCallbacks, String str, ResultReceiver resultReceiver) {
        this.this$1 = mediaBrowserServiceCompat$ServiceBinderImpl;
        this.val$callbacks = mediaBrowserServiceCompat$ServiceCallbacks;
        this.val$mediaId = str;
        this.val$receiver = resultReceiver;
    }

    @Override // java.lang.Runnable
    public void run() {
        MediaBrowserServiceCompat$ConnectionRecord mediaBrowserServiceCompat$ConnectionRecord = this.this$1.this$0.mConnections.get(this.val$callbacks.asBinder());
        if (mediaBrowserServiceCompat$ConnectionRecord == null) {
            Log.w("MBServiceCompat", "getMediaItem for callback that isn't registered id=" + this.val$mediaId);
            return;
        }
        this.this$1.this$0.performLoadItem(this.val$mediaId, mediaBrowserServiceCompat$ConnectionRecord, this.val$receiver);
    }
}
