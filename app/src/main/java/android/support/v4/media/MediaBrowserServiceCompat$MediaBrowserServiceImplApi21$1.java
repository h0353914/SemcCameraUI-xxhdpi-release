package android.support.v4.media;

import android.os.Bundle;
import android.support.v4.app.BundleCompat;
import android.support.v4.media.session.IMediaSession;
import android.support.v4.media.session.MediaSessionCompat$Token;
import java.util.Iterator;

class MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$1 implements Runnable {
    final /* synthetic */ MediaBrowserServiceCompat$MediaBrowserServiceImplApi21 this$1;
    final /* synthetic */ MediaSessionCompat$Token val$token;

    MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$1(MediaBrowserServiceCompat$MediaBrowserServiceImplApi21 mediaBrowserServiceCompat$MediaBrowserServiceImplApi21, MediaSessionCompat$Token mediaSessionCompat$Token) {
        this.this$1 = mediaBrowserServiceCompat$MediaBrowserServiceImplApi21;
        this.val$token = mediaSessionCompat$Token;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!this.this$1.mRootExtrasList.isEmpty()) {
            IMediaSession extraBinder = this.val$token.getExtraBinder();
            if (extraBinder != null) {
                Iterator<Bundle> it = this.this$1.mRootExtrasList.iterator();
                while (it.hasNext()) {
                    BundleCompat.putBinder(it.next(), "extra_session_binder", extraBinder.asBinder());
                }
            }
            this.this$1.mRootExtrasList.clear();
        }
        MediaBrowserServiceCompatApi21.setSessionToken(this.this$1.mServiceObj, this.val$token.getToken());
    }
}
