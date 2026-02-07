package android.support.v4.media;

import android.content.Context;
import android.os.Build$VERSION;
import android.support.annotation.NonNull;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public final class MediaSessionManager {
    static final String TAG = "MediaSessionManager";
    private static volatile MediaSessionManager sSessionManager;
    MediaSessionManager$MediaSessionManagerImpl mImpl;
    static final boolean DEBUG = Log.isLoggable("MediaSessionManager", 3);
    private static final Object sLock = new Object();

    @NonNull
    public static MediaSessionManager getSessionManager(@NonNull Context context) {
        MediaSessionManager mediaSessionManager = sSessionManager;
        if (mediaSessionManager == null) {
            synchronized (sLock) {
                mediaSessionManager = sSessionManager;
                if (mediaSessionManager == null) {
                    sSessionManager = new MediaSessionManager(context.getApplicationContext());
                    mediaSessionManager = sSessionManager;
                }
            }
        }
        return mediaSessionManager;
    }

    private MediaSessionManager(Context context) {
        if (Build$VERSION.SDK_INT >= 28) {
            this.mImpl = new MediaSessionManagerImplApi28(context);
        } else if (Build$VERSION.SDK_INT >= 21) {
            this.mImpl = new MediaSessionManagerImplApi21(context);
        } else {
            this.mImpl = new MediaSessionManagerImplBase(context);
        }
    }

    public boolean isTrustedForMediaControl(@NonNull MediaSessionManager$RemoteUserInfo mediaSessionManager$RemoteUserInfo) {
        if (mediaSessionManager$RemoteUserInfo == null) {
            throw new IllegalArgumentException("userInfo should not be null");
        }
        return this.mImpl.isTrustedForMediaControl(mediaSessionManager$RemoteUserInfo.mImpl);
    }

    Context getContext() {
        return this.mImpl.getContext();
    }
}
