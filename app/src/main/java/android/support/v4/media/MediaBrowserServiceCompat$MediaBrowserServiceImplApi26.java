package android.support.v4.media;

import android.os.Bundle;
import android.support.annotation.RequiresApi;

@RequiresApi(26)
class MediaBrowserServiceCompat$MediaBrowserServiceImplApi26 extends MediaBrowserServiceCompat$MediaBrowserServiceImplApi23 implements MediaBrowserServiceCompatApi26$ServiceCompatProxy {
    final /* synthetic */ MediaBrowserServiceCompat this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MediaBrowserServiceCompat$MediaBrowserServiceImplApi26(MediaBrowserServiceCompat mediaBrowserServiceCompat) {
        super(mediaBrowserServiceCompat);
        this.this$0 = mediaBrowserServiceCompat;
    }

    @Override // android.support.v4.media.MediaBrowserServiceCompat$MediaBrowserServiceImplApi23, android.support.v4.media.MediaBrowserServiceCompat$MediaBrowserServiceImplApi21, android.support.v4.media.MediaBrowserServiceCompat$MediaBrowserServiceImpl
    public void onCreate() {
        this.mServiceObj = MediaBrowserServiceCompatApi26.createService(this.this$0, this);
        MediaBrowserServiceCompatApi21.onCreate(this.mServiceObj);
    }

    @Override // android.support.v4.media.MediaBrowserServiceCompatApi26$ServiceCompatProxy
    public void onLoadChildren(String str, MediaBrowserServiceCompatApi26$ResultWrapper mediaBrowserServiceCompatApi26$ResultWrapper, Bundle bundle) {
        this.this$0.onLoadChildren(str, new MediaBrowserServiceCompat$MediaBrowserServiceImplApi26$1(this, str, mediaBrowserServiceCompatApi26$ResultWrapper), bundle);
    }

    @Override // android.support.v4.media.MediaBrowserServiceCompat$MediaBrowserServiceImplApi21, android.support.v4.media.MediaBrowserServiceCompat$MediaBrowserServiceImpl
    public Bundle getBrowserRootHints() {
        if (this.this$0.mCurConnection != null) {
            if (this.this$0.mCurConnection.rootHints == null) {
                return null;
            }
            return new Bundle(this.this$0.mCurConnection.rootHints);
        }
        return MediaBrowserServiceCompatApi26.getBrowserRootHints(this.mServiceObj);
    }

    @Override // android.support.v4.media.MediaBrowserServiceCompat$MediaBrowserServiceImplApi21
    void notifyChildrenChangedForFramework(String str, Bundle bundle) {
        if (bundle != null) {
            MediaBrowserServiceCompatApi26.notifyChildrenChanged(this.mServiceObj, str, bundle);
        } else {
            super.notifyChildrenChangedForFramework(str, bundle);
        }
    }
}
