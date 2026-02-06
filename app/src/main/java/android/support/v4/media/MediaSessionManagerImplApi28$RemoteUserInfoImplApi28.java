package android.support.v4.media;

import android.support.v4.util.ObjectsCompat;

final class MediaSessionManagerImplApi28$RemoteUserInfoImplApi28 implements MediaSessionManager$RemoteUserInfoImpl {
    final android.media.session.MediaSessionManager$RemoteUserInfo mObject;

    MediaSessionManagerImplApi28$RemoteUserInfoImplApi28(String str, int i, int i2) {
        this.mObject = new android.media.session.MediaSessionManager$RemoteUserInfo(str, i, i2);
    }

    MediaSessionManagerImplApi28$RemoteUserInfoImplApi28(android.media.session.MediaSessionManager$RemoteUserInfo mediaSessionManager$RemoteUserInfo) {
        this.mObject = mediaSessionManager$RemoteUserInfo;
    }

    @Override // android.support.v4.media.MediaSessionManager$RemoteUserInfoImpl
    public String getPackageName() {
        return this.mObject.getPackageName();
    }

    @Override // android.support.v4.media.MediaSessionManager$RemoteUserInfoImpl
    public int getPid() {
        return this.mObject.getPid();
    }

    @Override // android.support.v4.media.MediaSessionManager$RemoteUserInfoImpl
    public int getUid() {
        return this.mObject.getUid();
    }

    public int hashCode() {
        return ObjectsCompat.hash(this.mObject);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MediaSessionManagerImplApi28$RemoteUserInfoImplApi28) {
            return this.mObject.equals(((MediaSessionManagerImplApi28$RemoteUserInfoImplApi28) obj).mObject);
        }
        return false;
    }
}
