package android.support.v4.media;

import android.content.Context;
import android.support.annotation.RequiresApi;

/* JADX INFO: loaded from: classes.dex */
@RequiresApi(28)
class MediaSessionManagerImplApi28 extends MediaSessionManagerImplApi21 {
    android.media.session.MediaSessionManager mObject;

    MediaSessionManagerImplApi28(Context context) {
        super(context);
        this.mObject = (android.media.session.MediaSessionManager) context.getSystemService("media_session");
    }

    @Override // android.support.v4.media.MediaSessionManagerImplApi21, android.support.v4.media.MediaSessionManagerImplBase, android.support.v4.media.MediaSessionManager$MediaSessionManagerImpl
    public boolean isTrustedForMediaControl(MediaSessionManager$RemoteUserInfoImpl mediaSessionManager$RemoteUserInfoImpl) {
        if (mediaSessionManager$RemoteUserInfoImpl instanceof MediaSessionManagerImplApi28$RemoteUserInfoImplApi28) {
            return this.mObject.isTrustedForMediaControl(((MediaSessionManagerImplApi28$RemoteUserInfoImplApi28) mediaSessionManager$RemoteUserInfoImpl).mObject);
        }
        return false;
    }
}
