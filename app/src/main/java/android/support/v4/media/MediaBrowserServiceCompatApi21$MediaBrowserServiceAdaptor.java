package android.support.v4.media;

import android.content.Context;
import android.media.browse.MediaBrowser$MediaItem;
import android.os.Bundle;
import android.service.media.MediaBrowserService;
import android.service.media.MediaBrowserService$BrowserRoot;
import android.service.media.MediaBrowserService$Result;
import android.support.v4.media.session.MediaSessionCompat;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptor extends MediaBrowserService {
    final MediaBrowserServiceCompatApi21$ServiceCompatProxy mServiceProxy;

    MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptor(Context context, MediaBrowserServiceCompatApi21$ServiceCompatProxy mediaBrowserServiceCompatApi21$ServiceCompatProxy) {
        attachBaseContext(context);
        this.mServiceProxy = mediaBrowserServiceCompatApi21$ServiceCompatProxy;
    }

    @Override // android.service.media.MediaBrowserService
    public MediaBrowserService$BrowserRoot onGetRoot(String str, int i, Bundle bundle) {
        MediaSessionCompat.ensureClassLoader(bundle);
        MediaBrowserServiceCompatApi21$BrowserRoot mediaBrowserServiceCompatApi21$BrowserRootOnGetRoot = this.mServiceProxy.onGetRoot(str, i, bundle == null ? null : new Bundle(bundle));
        if (mediaBrowserServiceCompatApi21$BrowserRootOnGetRoot == null) {
            return null;
        }
        return new MediaBrowserService$BrowserRoot(mediaBrowserServiceCompatApi21$BrowserRootOnGetRoot.mRootId, mediaBrowserServiceCompatApi21$BrowserRootOnGetRoot.mExtras);
    }

    @Override // android.service.media.MediaBrowserService
    public void onLoadChildren(String str, MediaBrowserService$Result<List<MediaBrowser$MediaItem>> mediaBrowserService$Result) {
        this.mServiceProxy.onLoadChildren(str, new MediaBrowserServiceCompatApi21$ResultWrapper<>(mediaBrowserService$Result));
    }
}
