package android.support.v4.media;

import android.os.Parcel;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$2 extends MediaBrowserServiceCompat$Result<List<MediaBrowserCompat$MediaItem>> {
    final /* synthetic */ MediaBrowserServiceCompat$MediaBrowserServiceImplApi21 this$1;
    final /* synthetic */ MediaBrowserServiceCompatApi21$ResultWrapper val$resultWrapper;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$2(MediaBrowserServiceCompat$MediaBrowserServiceImplApi21 mediaBrowserServiceCompat$MediaBrowserServiceImplApi21, Object obj, MediaBrowserServiceCompatApi21$ResultWrapper mediaBrowserServiceCompatApi21$ResultWrapper) {
        super(obj);
        this.this$1 = mediaBrowserServiceCompat$MediaBrowserServiceImplApi21;
        this.val$resultWrapper = mediaBrowserServiceCompatApi21$ResultWrapper;
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
        this.val$resultWrapper.sendResult(arrayList);
    }

    @Override // android.support.v4.media.MediaBrowserServiceCompat$Result
    public void detach() {
        this.val$resultWrapper.detach();
    }
}
