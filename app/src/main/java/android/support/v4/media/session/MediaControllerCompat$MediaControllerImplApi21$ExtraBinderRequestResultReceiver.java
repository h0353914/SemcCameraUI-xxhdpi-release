package android.support.v4.media.session;

import android.os.Bundle;
import android.os.ResultReceiver;
import android.support.v4.app.BundleCompat;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
class MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver extends ResultReceiver {
    private WeakReference<MediaControllerCompat$MediaControllerImplApi21> mMediaControllerImpl;

    MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver(MediaControllerCompat$MediaControllerImplApi21 mediaControllerCompat$MediaControllerImplApi21) {
        super(null);
        this.mMediaControllerImpl = new WeakReference<>(mediaControllerCompat$MediaControllerImplApi21);
    }

    @Override // android.os.ResultReceiver
    protected void onReceiveResult(int i, Bundle bundle) {
        MediaControllerCompat$MediaControllerImplApi21 mediaControllerCompat$MediaControllerImplApi21 = this.mMediaControllerImpl.get();
        if (mediaControllerCompat$MediaControllerImplApi21 == null || bundle == null) {
            return;
        }
        synchronized (mediaControllerCompat$MediaControllerImplApi21.mLock) {
            mediaControllerCompat$MediaControllerImplApi21.mSessionToken.setExtraBinder(IMediaSession$Stub.asInterface(BundleCompat.getBinder(bundle, "android.support.v4.media.session.EXTRA_BINDER")));
            mediaControllerCompat$MediaControllerImplApi21.mSessionToken.setSessionToken2Bundle(bundle.getBundle("android.support.v4.media.session.SESSION_TOKEN2_BUNDLE"));
            mediaControllerCompat$MediaControllerImplApi21.processPendingCallbacksLocked();
        }
    }
}
