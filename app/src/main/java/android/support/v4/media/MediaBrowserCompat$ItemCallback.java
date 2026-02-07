package android.support.v4.media;

import android.os.Build$VERSION;
import android.support.annotation.NonNull;

/* JADX INFO: loaded from: classes.dex */
public abstract class MediaBrowserCompat$ItemCallback {
    final Object mItemCallbackObj;

    public void onError(@NonNull String str) {
    }

    public void onItemLoaded(MediaBrowserCompat$MediaItem mediaBrowserCompat$MediaItem) {
    }

    public MediaBrowserCompat$ItemCallback() {
        if (Build$VERSION.SDK_INT >= 23) {
            this.mItemCallbackObj = MediaBrowserCompatApi23.createItemCallback(new MediaBrowserCompat$ItemCallback$StubApi23(this));
        } else {
            this.mItemCallbackObj = null;
        }
    }
}
