package android.support.v4.media;

import android.os.Parcel;
import java.util.ArrayList;
import java.util.List;

class MediaBrowserServiceCompat$MediaBrowserServiceImplApi26$1 extends MediaBrowserServiceCompat$Result<List<MediaBrowserCompat$MediaItem>> {
    final /* synthetic */ MediaBrowserServiceCompat$MediaBrowserServiceImplApi26 this$1;
    final /* synthetic */ MediaBrowserServiceCompatApi26$ResultWrapper val$resultWrapper;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MediaBrowserServiceCompat$MediaBrowserServiceImplApi26$1(MediaBrowserServiceCompat$MediaBrowserServiceImplApi26 mediaBrowserServiceCompat$MediaBrowserServiceImplApi26, Object obj, MediaBrowserServiceCompatApi26$ResultWrapper mediaBrowserServiceCompatApi26$ResultWrapper) {
        super(obj);
        this.this$1 = mediaBrowserServiceCompat$MediaBrowserServiceImplApi26;
        this.val$resultWrapper = mediaBrowserServiceCompatApi26$ResultWrapper;
    }

    @Override // android.support.v4.media.MediaBrowserServiceCompat$Result
    /* bridge */ /* synthetic */ void onResultSent(List<MediaBrowserCompat$MediaItem> list) {
        onResultSent2(list);
    }

    /* JADX INFO: renamed from: onResultSent, reason: avoid collision after fix types in other method */
    void onResultSent2(List<MediaBrowserCompat$MediaItem> list) {
        ArrayList arrayList;
        if (list != null) {
            arrayList = new ArrayList();
            for (MediaBrowserCompat$MediaItem mediaBrowserCompat$MediaItem : list) {
                Parcel parcelObtain = Parcel.obtain();
                mediaBrowserCompat$MediaItem.writeToParcel(parcelObtain, 0);
                arrayList.add(parcelObtain);
            }
        } else {
            arrayList = null;
        }
        this.val$resultWrapper.sendResult(arrayList, getFlags());
    }

    @Override // android.support.v4.media.MediaBrowserServiceCompat$Result
    public void detach() {
        this.val$resultWrapper.detach();
    }
}
