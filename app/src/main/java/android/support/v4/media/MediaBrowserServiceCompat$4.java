package android.support.v4.media;

import android.os.Bundle;
import android.support.v4.os.ResultReceiver;

/* JADX INFO: loaded from: classes.dex */
class MediaBrowserServiceCompat$4 extends MediaBrowserServiceCompat$Result<Bundle> {
    final /* synthetic */ MediaBrowserServiceCompat this$0;
    final /* synthetic */ ResultReceiver val$receiver;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MediaBrowserServiceCompat$4(MediaBrowserServiceCompat mediaBrowserServiceCompat, Object obj, ResultReceiver resultReceiver) {
        super(obj);
        this.this$0 = mediaBrowserServiceCompat;
        this.val$receiver = resultReceiver;
    }

    @Override // android.support.v4.media.MediaBrowserServiceCompat$Result
    /* bridge */ /* synthetic */ void onResultSent(Bundle bundle) {
        onResultSent2(bundle);
    }

    /* JADX INFO: renamed from: onResultSent, reason: avoid collision after fix types in other method */
    void onResultSent2(Bundle bundle) {
        this.val$receiver.send(0, bundle);
    }

    @Override // android.support.v4.media.MediaBrowserServiceCompat$Result
    void onProgressUpdateSent(Bundle bundle) {
        this.val$receiver.send(1, bundle);
    }

    @Override // android.support.v4.media.MediaBrowserServiceCompat$Result
    void onErrorSent(Bundle bundle) {
        this.val$receiver.send(-1, bundle);
    }
}
