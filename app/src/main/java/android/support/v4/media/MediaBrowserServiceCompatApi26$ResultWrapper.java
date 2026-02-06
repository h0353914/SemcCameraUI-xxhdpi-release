package android.support.v4.media;

import android.media.browse.MediaBrowser$MediaItem;
import android.os.Parcel;
import android.service.media.MediaBrowserService$Result;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;

class MediaBrowserServiceCompatApi26$ResultWrapper {
    MediaBrowserService$Result mResultObj;

    MediaBrowserServiceCompatApi26$ResultWrapper(MediaBrowserService$Result mediaBrowserService$Result) {
        this.mResultObj = mediaBrowserService$Result;
    }

    public void sendResult(List<Parcel> list, int i) {
        try {
            MediaBrowserServiceCompatApi26.sResultFlags.setInt(this.mResultObj, i);
        } catch (IllegalAccessException e) {
            Log.w("MBSCompatApi26", e);
        }
        this.mResultObj.sendResult(parcelListToItemList(list));
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
