package android.support.v4.media;

import android.os.Binder;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.os.IBinder;
import android.support.annotation.NonNull;
import java.lang.ref.WeakReference;
import java.util.List;

public abstract class MediaBrowserCompat$SubscriptionCallback {
    final Object mSubscriptionCallbackObj;
    WeakReference<MediaBrowserCompat$Subscription> mSubscriptionRef;
    final IBinder mToken = new Binder();

    public void onChildrenLoaded(@NonNull String str, @NonNull List<MediaBrowserCompat$MediaItem> list) {
    }

    public void onChildrenLoaded(@NonNull String str, @NonNull List<MediaBrowserCompat$MediaItem> list, @NonNull Bundle bundle) {
    }

    public void onError(@NonNull String str) {
    }

    public void onError(@NonNull String str, @NonNull Bundle bundle) {
    }

    public MediaBrowserCompat$SubscriptionCallback() {
        if (Build$VERSION.SDK_INT >= 26) {
            this.mSubscriptionCallbackObj = MediaBrowserCompatApi26.createSubscriptionCallback(new MediaBrowserCompat$SubscriptionCallback$StubApi26(this));
        } else if (Build$VERSION.SDK_INT >= 21) {
            this.mSubscriptionCallbackObj = MediaBrowserCompatApi21.createSubscriptionCallback(new MediaBrowserCompat$SubscriptionCallback$StubApi21(this));
        } else {
            this.mSubscriptionCallbackObj = null;
        }
    }

    void setSubscription(MediaBrowserCompat$Subscription mediaBrowserCompat$Subscription) {
        this.mSubscriptionRef = new WeakReference<>(mediaBrowserCompat$Subscription);
    }
}
