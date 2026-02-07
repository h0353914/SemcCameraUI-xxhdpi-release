package android.support.v4.media;

import android.support.v4.util.ObjectsCompat;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
class MediaSessionManagerImplBase$RemoteUserInfoImplBase implements MediaSessionManager$RemoteUserInfoImpl {
    private String mPackageName;
    private int mPid;
    private int mUid;

    MediaSessionManagerImplBase$RemoteUserInfoImplBase(String str, int i, int i2) {
        this.mPackageName = str;
        this.mPid = i;
        this.mUid = i2;
    }

    @Override // android.support.v4.media.MediaSessionManager$RemoteUserInfoImpl
    public String getPackageName() {
        return this.mPackageName;
    }

    @Override // android.support.v4.media.MediaSessionManager$RemoteUserInfoImpl
    public int getPid() {
        return this.mPid;
    }

    @Override // android.support.v4.media.MediaSessionManager$RemoteUserInfoImpl
    public int getUid() {
        return this.mUid;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaSessionManagerImplBase$RemoteUserInfoImplBase)) {
            return false;
        }
        MediaSessionManagerImplBase$RemoteUserInfoImplBase mediaSessionManagerImplBase$RemoteUserInfoImplBase = (MediaSessionManagerImplBase$RemoteUserInfoImplBase) obj;
        return TextUtils.equals(this.mPackageName, mediaSessionManagerImplBase$RemoteUserInfoImplBase.mPackageName) && this.mPid == mediaSessionManagerImplBase$RemoteUserInfoImplBase.mPid && this.mUid == mediaSessionManagerImplBase$RemoteUserInfoImplBase.mUid;
    }

    public int hashCode() {
        return ObjectsCompat.hash(this.mPackageName, Integer.valueOf(this.mPid), Integer.valueOf(this.mUid));
    }
}
