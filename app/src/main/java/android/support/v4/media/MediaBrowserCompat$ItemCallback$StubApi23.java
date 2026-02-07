package android.support.v4.media;

import android.os.Parcel;
import android.support.annotation.NonNull;

/* JADX INFO: loaded from: classes.dex */
class MediaBrowserCompat$ItemCallback$StubApi23 implements MediaBrowserCompatApi23$ItemCallback {
    final /* synthetic */ MediaBrowserCompat$ItemCallback this$0;

    MediaBrowserCompat$ItemCallback$StubApi23(MediaBrowserCompat$ItemCallback mediaBrowserCompat$ItemCallback) {
        this.this$0 = mediaBrowserCompat$ItemCallback;
    }

    @Override // android.support.v4.media.MediaBrowserCompatApi23$ItemCallback
    public void onItemLoaded(Parcel parcel) {
        if (parcel == null) {
            this.this$0.onItemLoaded(null);
            return;
        }
        parcel.setDataPosition(0);
        MediaBrowserCompat$MediaItem mediaBrowserCompat$MediaItemCreateFromParcel = MediaBrowserCompat$MediaItem.CREATOR.createFromParcel(parcel);
        parcel.recycle();
        this.this$0.onItemLoaded(mediaBrowserCompat$MediaItemCreateFromParcel);
    }

    @Override // android.support.v4.media.MediaBrowserCompatApi23$ItemCallback
    public void onError(@NonNull String str) {
        this.this$0.onError(str);
    }
}
