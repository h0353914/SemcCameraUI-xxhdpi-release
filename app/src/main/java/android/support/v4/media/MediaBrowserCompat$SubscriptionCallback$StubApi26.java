package android.support.v4.media;

import android.os.Bundle;
import android.support.annotation.NonNull;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class MediaBrowserCompat$SubscriptionCallback$StubApi26 extends MediaBrowserCompat$SubscriptionCallback$StubApi21 implements MediaBrowserCompatApi26$SubscriptionCallback {
    final /* synthetic */ MediaBrowserCompat$SubscriptionCallback this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MediaBrowserCompat$SubscriptionCallback$StubApi26(MediaBrowserCompat$SubscriptionCallback mediaBrowserCompat$SubscriptionCallback) {
        super(mediaBrowserCompat$SubscriptionCallback);
        this.this$0 = mediaBrowserCompat$SubscriptionCallback;
    }

    @Override // android.support.v4.media.MediaBrowserCompatApi26$SubscriptionCallback
    public void onChildrenLoaded(@NonNull String str, List<?> list, @NonNull Bundle bundle) {
        this.this$0.onChildrenLoaded(str, MediaBrowserCompat$MediaItem.fromMediaItemList(list), bundle);
    }

    @Override // android.support.v4.media.MediaBrowserCompatApi26$SubscriptionCallback
    public void onError(@NonNull String str, @NonNull Bundle bundle) {
        this.this$0.onError(str, bundle);
    }
}
