package android.support.v4.media;

import android.content.Context;
import android.media.browse.MediaBrowser$MediaItem;
import android.os.Bundle;
import android.service.media.MediaBrowserService$Result;
import android.support.v4.media.session.MediaSessionCompat;
import java.util.List;

class MediaBrowserServiceCompatApi26$MediaBrowserServiceAdaptor extends MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptor {
    MediaBrowserServiceCompatApi26$MediaBrowserServiceAdaptor(Context context, MediaBrowserServiceCompatApi26$ServiceCompatProxy mediaBrowserServiceCompatApi26$ServiceCompatProxy) {
        super(context, mediaBrowserServiceCompatApi26$ServiceCompatProxy);
    }

    @Override // android.service.media.MediaBrowserService
    public void onLoadChildren(String str, MediaBrowserService$Result<List<MediaBrowser$MediaItem>> mediaBrowserService$Result, Bundle bundle) {
        MediaSessionCompat.ensureClassLoader(bundle);
        ((MediaBrowserServiceCompatApi26$ServiceCompatProxy) this.mServiceProxy).onLoadChildren(str, new MediaBrowserServiceCompatApi26$ResultWrapper(mediaBrowserService$Result), bundle);
    }
}
