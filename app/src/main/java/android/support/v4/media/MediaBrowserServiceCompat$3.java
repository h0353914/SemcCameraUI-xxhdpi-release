package android.support.v4.media;

import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.os.ResultReceiver;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class MediaBrowserServiceCompat$3 extends MediaBrowserServiceCompat$Result<List<MediaBrowserCompat$MediaItem>> {
    final /* synthetic */ MediaBrowserServiceCompat this$0;
    final /* synthetic */ ResultReceiver val$receiver;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MediaBrowserServiceCompat$3(MediaBrowserServiceCompat mediaBrowserServiceCompat, Object obj, ResultReceiver resultReceiver) {
        super(obj);
        this.this$0 = mediaBrowserServiceCompat;
        this.val$receiver = resultReceiver;
    }

    @Override // android.support.v4.media.MediaBrowserServiceCompat$Result
    /* bridge */ /* synthetic */ void onResultSent(List<MediaBrowserCompat$MediaItem> list) {
        onResultSent2(list);
    }

    /* JADX INFO: renamed from: onResultSent, reason: avoid collision after fix types in other method */
    void onResultSent2(List<MediaBrowserCompat$MediaItem> list) {
        if ((getFlags() & 4) != 0 || list == null) {
            this.val$receiver.send(-1, null);
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putParcelableArray("search_results", (Parcelable[]) list.toArray(new MediaBrowserCompat$MediaItem[0]));
        this.val$receiver.send(0, bundle);
    }
}
