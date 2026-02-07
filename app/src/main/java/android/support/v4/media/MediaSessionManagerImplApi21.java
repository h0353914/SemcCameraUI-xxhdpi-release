package android.support.v4.media;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;

/* JADX INFO: loaded from: classes.dex */
@RequiresApi(21)
class MediaSessionManagerImplApi21 extends MediaSessionManagerImplBase {
    MediaSessionManagerImplApi21(Context context) {
        super(context);
        this.mContext = context;
    }

    @Override // android.support.v4.media.MediaSessionManagerImplBase, android.support.v4.media.MediaSessionManager$MediaSessionManagerImpl
    public boolean isTrustedForMediaControl(@NonNull MediaSessionManager$RemoteUserInfoImpl mediaSessionManager$RemoteUserInfoImpl) {
        return hasMediaControlPermission(mediaSessionManager$RemoteUserInfoImpl) || super.isTrustedForMediaControl(mediaSessionManager$RemoteUserInfoImpl);
    }

    private boolean hasMediaControlPermission(@NonNull MediaSessionManager$RemoteUserInfoImpl mediaSessionManager$RemoteUserInfoImpl) {
        return getContext().checkPermission("android.permission.MEDIA_CONTENT_CONTROL", mediaSessionManager$RemoteUserInfoImpl.getPid(), mediaSessionManager$RemoteUserInfoImpl.getUid()) == 0;
    }
}
