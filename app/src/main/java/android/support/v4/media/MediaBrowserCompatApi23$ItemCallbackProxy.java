package android.support.v4.media;

import android.media.browse.MediaBrowser$ItemCallback;
import android.media.browse.MediaBrowser$MediaItem;
import android.os.Parcel;
import android.support.annotation.NonNull;
import android.support.v4.media.MediaBrowserCompatApi23$ItemCallback;

/* JADX INFO: loaded from: classes.dex */
class MediaBrowserCompatApi23$ItemCallbackProxy<T extends MediaBrowserCompatApi23$ItemCallback> extends MediaBrowser$ItemCallback {
    protected final T mItemCallback;

    public MediaBrowserCompatApi23$ItemCallbackProxy(T t) {
        this.mItemCallback = t;
    }

    @Override // android.media.browse.MediaBrowser$ItemCallback
    public void onItemLoaded(MediaBrowser$MediaItem mediaBrowser$MediaItem) {
        if (mediaBrowser$MediaItem == null) {
            this.mItemCallback.onItemLoaded(null);
            return;
        }
        Parcel parcelObtain = Parcel.obtain();
        mediaBrowser$MediaItem.writeToParcel(parcelObtain, 0);
        this.mItemCallback.onItemLoaded(parcelObtain);
    }

    @Override // android.media.browse.MediaBrowser$ItemCallback
    public void onError(@NonNull String str) {
        this.mItemCallback.onError(str);
    }
}
