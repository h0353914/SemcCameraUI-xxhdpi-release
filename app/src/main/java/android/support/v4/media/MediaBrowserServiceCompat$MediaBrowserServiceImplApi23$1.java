package android.support.v4.media;

import android.os.Parcel;

class MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$1 extends MediaBrowserServiceCompat$Result<MediaBrowserCompat$MediaItem> {
    final /* synthetic */ MediaBrowserServiceCompat$MediaBrowserServiceImplApi23 this$1;
    final /* synthetic */ MediaBrowserServiceCompatApi21$ResultWrapper val$resultWrapper;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$1(MediaBrowserServiceCompat$MediaBrowserServiceImplApi23 mediaBrowserServiceCompat$MediaBrowserServiceImplApi23, Object obj, MediaBrowserServiceCompatApi21$ResultWrapper mediaBrowserServiceCompatApi21$ResultWrapper) {
        super(obj);
        this.this$1 = mediaBrowserServiceCompat$MediaBrowserServiceImplApi23;
        this.val$resultWrapper = mediaBrowserServiceCompatApi21$ResultWrapper;
    }

    @Override // android.support.v4.media.MediaBrowserServiceCompat$Result
    /* bridge */ /* synthetic */ void onResultSent(MediaBrowserCompat$MediaItem mediaBrowserCompat$MediaItem) {
        onResultSent2(mediaBrowserCompat$MediaItem);
    }

    /* JADX INFO: renamed from: onResultSent, reason: avoid collision after fix types in other method */
    void onResultSent2(MediaBrowserCompat$MediaItem mediaBrowserCompat$MediaItem) {
        if (mediaBrowserCompat$MediaItem == null) {
            this.val$resultWrapper.sendResult(null);
            return;
        }
        Parcel parcelObtain = Parcel.obtain();
        mediaBrowserCompat$MediaItem.writeToParcel(parcelObtain, 0);
        this.val$resultWrapper.sendResult(parcelObtain);
    }

    @Override // android.support.v4.media.MediaBrowserServiceCompat$Result
    public void detach() {
        this.val$resultWrapper.detach();
    }
}
