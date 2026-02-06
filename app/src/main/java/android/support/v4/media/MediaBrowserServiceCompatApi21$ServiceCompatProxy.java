package android.support.v4.media;

import android.os.Bundle;
import android.os.Parcel;
import java.util.List;

public interface MediaBrowserServiceCompatApi21$ServiceCompatProxy {
    MediaBrowserServiceCompatApi21$BrowserRoot onGetRoot(String str, int i, Bundle bundle);

    void onLoadChildren(String str, MediaBrowserServiceCompatApi21$ResultWrapper<List<Parcel>> mediaBrowserServiceCompatApi21$ResultWrapper);
}
