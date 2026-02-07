package android.support.v4.media.session;

import android.content.Context;
import android.media.session.MediaSession;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import android.support.v4.media.MediaSessionManager$RemoteUserInfo;

/* JADX INFO: loaded from: classes.dex */
@RequiresApi(28)
class MediaSessionCompat$MediaSessionImplApi28 extends MediaSessionCompat$MediaSessionImplApi21 {
    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImplApi21, android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    public void setCurrentControllerInfo(MediaSessionManager$RemoteUserInfo mediaSessionManager$RemoteUserInfo) {
    }

    MediaSessionCompat$MediaSessionImplApi28(Context context, String str, Bundle bundle) {
        super(context, str, bundle);
    }

    MediaSessionCompat$MediaSessionImplApi28(Object obj) {
        super(obj);
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImplApi21, android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    @NonNull
    public final MediaSessionManager$RemoteUserInfo getCurrentControllerInfo() {
        return new MediaSessionManager$RemoteUserInfo(((MediaSession) this.mSessionObj).getCurrentControllerInfo());
    }
}
