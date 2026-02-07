package android.support.v4.media;

import android.media.browse.MediaBrowser$MediaItem;
import android.os.Parcel;
import android.service.media.MediaBrowserService$Result;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class MediaBrowserServiceCompatApi21$ResultWrapper<T> {
    MediaBrowserService$Result mResultObj;

    MediaBrowserServiceCompatApi21$ResultWrapper(MediaBrowserService$Result mediaBrowserService$Result) {
        this.mResultObj = mediaBrowserService$Result;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void sendResult(T t) {
        if (t instanceof List) {
            this.mResultObj.sendResult(parcelListToItemList((List) t));
            return;
        }
        if (t instanceof Parcel) {
            Parcel parcel = (Parcel) t;
            parcel.setDataPosition(0);
            this.mResultObj.sendResult(MediaBrowser$MediaItem.CREATOR.createFromParcel(parcel));
            parcel.recycle();
            return;
        }
        this.mResultObj.sendResult(null);
    }

    public void detach() {
        this.mResultObj.detach();
    }

    List<MediaBrowser$MediaItem> parcelListToItemList(List<Parcel> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Parcel parcel : list) {
            parcel.setDataPosition(0);
            arrayList.add(MediaBrowser$MediaItem.CREATOR.createFromParcel(parcel));
            parcel.recycle();
        }
        return arrayList;
    }
}
