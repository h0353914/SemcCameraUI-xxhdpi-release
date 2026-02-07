package android.support.v4.media;

import android.os.Bundle;
import android.support.annotation.NonNull;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class MediaBrowserCompat$SubscriptionCallback$StubApi21 implements MediaBrowserCompatApi21$SubscriptionCallback {
    final /* synthetic */ MediaBrowserCompat$SubscriptionCallback this$0;

    MediaBrowserCompat$SubscriptionCallback$StubApi21(MediaBrowserCompat$SubscriptionCallback mediaBrowserCompat$SubscriptionCallback) {
        this.this$0 = mediaBrowserCompat$SubscriptionCallback;
    }

    @Override // android.support.v4.media.MediaBrowserCompatApi21$SubscriptionCallback
    public void onChildrenLoaded(@NonNull String str, List<?> list) {
        MediaBrowserCompat$Subscription mediaBrowserCompat$Subscription = this.this$0.mSubscriptionRef == null ? null : this.this$0.mSubscriptionRef.get();
        if (mediaBrowserCompat$Subscription == null) {
            this.this$0.onChildrenLoaded(str, MediaBrowserCompat$MediaItem.fromMediaItemList(list));
            return;
        }
        List<MediaBrowserCompat$MediaItem> listFromMediaItemList = MediaBrowserCompat$MediaItem.fromMediaItemList(list);
        List<MediaBrowserCompat$SubscriptionCallback> callbacks = mediaBrowserCompat$Subscription.getCallbacks();
        List<Bundle> optionsList = mediaBrowserCompat$Subscription.getOptionsList();
        for (int i = 0; i < callbacks.size(); i++) {
            Bundle bundle = optionsList.get(i);
            if (bundle == null) {
                this.this$0.onChildrenLoaded(str, listFromMediaItemList);
            } else {
                this.this$0.onChildrenLoaded(str, applyOptions(listFromMediaItemList, bundle), bundle);
            }
        }
    }

    @Override // android.support.v4.media.MediaBrowserCompatApi21$SubscriptionCallback
    public void onError(@NonNull String str) {
        this.this$0.onError(str);
    }

    List<MediaBrowserCompat$MediaItem> applyOptions(List<MediaBrowserCompat$MediaItem> list, Bundle bundle) {
        if (list == null) {
            return null;
        }
        int i = bundle.getInt("android.media.browse.extra.PAGE", -1);
        int i2 = bundle.getInt("android.media.browse.extra.PAGE_SIZE", -1);
        if (i == -1 && i2 == -1) {
            return list;
        }
        int i3 = i2 * i;
        int size = i3 + i2;
        if (i < 0 || i2 < 1 || i3 >= list.size()) {
            return Collections.emptyList();
        }
        if (size > list.size()) {
            size = list.size();
        }
        return list.subList(i3, size);
    }
}
