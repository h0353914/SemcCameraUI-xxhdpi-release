package android.support.v4.media;

import android.content.ComponentName;
import android.content.Context;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;

/* JADX INFO: loaded from: classes.dex */
@RequiresApi(26)
class MediaBrowserCompat$MediaBrowserImplApi26 extends MediaBrowserCompat$MediaBrowserImplApi23 {
    MediaBrowserCompat$MediaBrowserImplApi26(Context context, ComponentName componentName, MediaBrowserCompat$ConnectionCallback mediaBrowserCompat$ConnectionCallback, Bundle bundle) {
        super(context, componentName, mediaBrowserCompat$ConnectionCallback, bundle);
    }

    @Override // android.support.v4.media.MediaBrowserCompat$MediaBrowserImplApi21, android.support.v4.media.MediaBrowserCompat$MediaBrowserImpl
    public void subscribe(@NonNull String str, @Nullable Bundle bundle, @NonNull MediaBrowserCompat$SubscriptionCallback mediaBrowserCompat$SubscriptionCallback) {
        if (this.mServiceBinderWrapper != null && this.mServiceVersion >= 2) {
            super.subscribe(str, bundle, mediaBrowserCompat$SubscriptionCallback);
        } else if (bundle == null) {
            MediaBrowserCompatApi21.subscribe(this.mBrowserObj, str, mediaBrowserCompat$SubscriptionCallback.mSubscriptionCallbackObj);
        } else {
            MediaBrowserCompatApi26.subscribe(this.mBrowserObj, str, bundle, mediaBrowserCompat$SubscriptionCallback.mSubscriptionCallbackObj);
        }
    }

    @Override // android.support.v4.media.MediaBrowserCompat$MediaBrowserImplApi21, android.support.v4.media.MediaBrowserCompat$MediaBrowserImpl
    public void unsubscribe(@NonNull String str, MediaBrowserCompat$SubscriptionCallback mediaBrowserCompat$SubscriptionCallback) {
        if (this.mServiceBinderWrapper != null && this.mServiceVersion >= 2) {
            super.unsubscribe(str, mediaBrowserCompat$SubscriptionCallback);
        } else if (mediaBrowserCompat$SubscriptionCallback == null) {
            MediaBrowserCompatApi21.unsubscribe(this.mBrowserObj, str);
        } else {
            MediaBrowserCompatApi26.unsubscribe(this.mBrowserObj, str, mediaBrowserCompat$SubscriptionCallback.mSubscriptionCallbackObj);
        }
    }
}
