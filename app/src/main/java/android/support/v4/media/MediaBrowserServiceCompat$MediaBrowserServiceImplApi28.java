package android.support.v4.media;

import android.service.media.MediaBrowserService;
import android.support.annotation.RequiresApi;

/* JADX INFO: loaded from: classes.dex */
@RequiresApi(28)
class MediaBrowserServiceCompat$MediaBrowserServiceImplApi28 extends MediaBrowserServiceCompat$MediaBrowserServiceImplApi26 {
    final /* synthetic */ MediaBrowserServiceCompat this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MediaBrowserServiceCompat$MediaBrowserServiceImplApi28(MediaBrowserServiceCompat mediaBrowserServiceCompat) {
        super(mediaBrowserServiceCompat);
        this.this$0 = mediaBrowserServiceCompat;
    }

    @Override // android.support.v4.media.MediaBrowserServiceCompat$MediaBrowserServiceImplApi21, android.support.v4.media.MediaBrowserServiceCompat$MediaBrowserServiceImpl
    public MediaSessionManager$RemoteUserInfo getCurrentBrowserInfo() {
        if (this.this$0.mCurConnection != null) {
            return this.this$0.mCurConnection.browserInfo;
        }
        return new MediaSessionManager$RemoteUserInfo(((MediaBrowserService) this.mServiceObj).getCurrentBrowserInfo());
    }
}
