package android.support.v4.media;

import android.content.Context;
import android.media.browse.MediaBrowser$MediaItem;
import android.service.media.MediaBrowserService$Result;

class MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptor extends MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptor {
    MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptor(Context context, MediaBrowserServiceCompatApi23$ServiceCompatProxy mediaBrowserServiceCompatApi23$ServiceCompatProxy) {
        super(context, mediaBrowserServiceCompatApi23$ServiceCompatProxy);
    }

    @Override // android.service.media.MediaBrowserService
    public void onLoadItem(String str, MediaBrowserService$Result<MediaBrowser$MediaItem> mediaBrowserService$Result) {
        ((MediaBrowserServiceCompatApi23$ServiceCompatProxy) this.mServiceProxy).onLoadItem(str, new MediaBrowserServiceCompatApi21$ResultWrapper<>(mediaBrowserService$Result));
    }
}
