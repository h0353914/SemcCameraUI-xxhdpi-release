package android.support.v4.media;

import android.os.Parcel;
import android.support.annotation.RequiresApi;

@RequiresApi(23)
class MediaBrowserServiceCompat$MediaBrowserServiceImplApi23 extends MediaBrowserServiceCompat$MediaBrowserServiceImplApi21 implements MediaBrowserServiceCompatApi23$ServiceCompatProxy {
    final /* synthetic */ MediaBrowserServiceCompat this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MediaBrowserServiceCompat$MediaBrowserServiceImplApi23(MediaBrowserServiceCompat mediaBrowserServiceCompat) {
        super(mediaBrowserServiceCompat);
        this.this$0 = mediaBrowserServiceCompat;
    }

    @Override // android.support.v4.media.MediaBrowserServiceCompat$MediaBrowserServiceImplApi21, android.support.v4.media.MediaBrowserServiceCompat$MediaBrowserServiceImpl
    public void onCreate() {
        this.mServiceObj = MediaBrowserServiceCompatApi23.createService(this.this$0, this);
        MediaBrowserServiceCompatApi21.onCreate(this.mServiceObj);
    }

    @Override // android.support.v4.media.MediaBrowserServiceCompatApi23$ServiceCompatProxy
    public void onLoadItem(String str, MediaBrowserServiceCompatApi21$ResultWrapper<Parcel> mediaBrowserServiceCompatApi21$ResultWrapper) {
        this.this$0.onLoadItem(str, new MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$1(this, str, mediaBrowserServiceCompatApi21$ResultWrapper));
    }
}
