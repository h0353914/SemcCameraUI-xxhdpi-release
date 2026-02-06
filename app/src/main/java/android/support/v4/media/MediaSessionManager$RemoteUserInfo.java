package android.support.v4.media;

import android.os.Build$VERSION;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;

public final class MediaSessionManager$RemoteUserInfo {
    public static final String LEGACY_CONTROLLER = "android.media.session.MediaController";
    MediaSessionManager$RemoteUserInfoImpl mImpl;

    public MediaSessionManager$RemoteUserInfo(@NonNull String str, int i, int i2) {
        if (Build$VERSION.SDK_INT >= 28) {
            this.mImpl = new MediaSessionManagerImplApi28$RemoteUserInfoImplApi28(str, i, i2);
        } else {
            this.mImpl = new MediaSessionManagerImplBase$RemoteUserInfoImplBase(str, i, i2);
        }
    }

    @RequiresApi(28)
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public MediaSessionManager$RemoteUserInfo(android.media.session.MediaSessionManager$RemoteUserInfo mediaSessionManager$RemoteUserInfo) {
        this.mImpl = new MediaSessionManagerImplApi28$RemoteUserInfoImplApi28(mediaSessionManager$RemoteUserInfo);
    }

    @NonNull
    public String getPackageName() {
        return this.mImpl.getPackageName();
    }

    public int getPid() {
        return this.mImpl.getPid();
    }

    public int getUid() {
        return this.mImpl.getUid();
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MediaSessionManager$RemoteUserInfo) {
            return this.mImpl.equals(((MediaSessionManager$RemoteUserInfo) obj).mImpl);
        }
        return false;
    }

    public int hashCode() {
        return this.mImpl.hashCode();
    }
}
