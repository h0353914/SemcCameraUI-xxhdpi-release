package android.support.v4.media;

import android.os.Bundle;
import android.support.v4.os.ResultReceiver;

class MediaBrowserServiceCompat$2 extends MediaBrowserServiceCompat$Result<MediaBrowserCompat$MediaItem> {
    final /* synthetic */ MediaBrowserServiceCompat this$0;
    final /* synthetic */ ResultReceiver val$receiver;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MediaBrowserServiceCompat$2(MediaBrowserServiceCompat mediaBrowserServiceCompat, Object obj, ResultReceiver resultReceiver) {
        super(obj);
        this.this$0 = mediaBrowserServiceCompat;
        this.val$receiver = resultReceiver;
    }

    @Override // android.support.v4.media.MediaBrowserServiceCompat$Result
    /* bridge */ /* synthetic */ void onResultSent(MediaBrowserCompat$MediaItem mediaBrowserCompat$MediaItem) {
        onResultSent2(mediaBrowserCompat$MediaItem);
    }

    /* JADX INFO: renamed from: onResultSent, reason: avoid collision after fix types in other method */
    void onResultSent2(MediaBrowserCompat$MediaItem mediaBrowserCompat$MediaItem) {
        if ((getFlags() & 2) != 0) {
            this.val$receiver.send(-1, null);
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putParcelable("media_item", mediaBrowserCompat$MediaItem);
        this.val$receiver.send(0, bundle);
    }
}
