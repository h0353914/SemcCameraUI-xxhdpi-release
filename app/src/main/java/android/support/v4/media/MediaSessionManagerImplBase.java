package android.support.v4.media;

import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageManager$NameNotFoundException;
import android.provider.Settings$Secure;
import android.support.annotation.NonNull;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
class MediaSessionManagerImplBase implements MediaSessionManager$MediaSessionManagerImpl {
    private static final boolean DEBUG = MediaSessionManager.DEBUG;
    private static final String ENABLED_NOTIFICATION_LISTENERS = "enabled_notification_listeners";
    private static final String PERMISSION_MEDIA_CONTENT_CONTROL = "android.permission.MEDIA_CONTENT_CONTROL";
    private static final String PERMISSION_STATUS_BAR_SERVICE = "android.permission.STATUS_BAR_SERVICE";
    private static final String TAG = "MediaSessionManager";
    ContentResolver mContentResolver;
    Context mContext;

    MediaSessionManagerImplBase(Context context) {
        this.mContext = context;
        this.mContentResolver = this.mContext.getContentResolver();
    }

    @Override // android.support.v4.media.MediaSessionManager$MediaSessionManagerImpl
    public Context getContext() {
        return this.mContext;
    }

    @Override // android.support.v4.media.MediaSessionManager$MediaSessionManagerImpl
    public boolean isTrustedForMediaControl(@NonNull MediaSessionManager$RemoteUserInfoImpl mediaSessionManager$RemoteUserInfoImpl) {
        try {
            if (this.mContext.getPackageManager().getApplicationInfo(mediaSessionManager$RemoteUserInfoImpl.getPackageName(), 0).uid == mediaSessionManager$RemoteUserInfoImpl.getUid()) {
                return isPermissionGranted(mediaSessionManager$RemoteUserInfoImpl, "android.permission.STATUS_BAR_SERVICE") || isPermissionGranted(mediaSessionManager$RemoteUserInfoImpl, "android.permission.MEDIA_CONTENT_CONTROL") || mediaSessionManager$RemoteUserInfoImpl.getUid() == 1000 || isEnabledNotificationListener(mediaSessionManager$RemoteUserInfoImpl);
            }
            if (DEBUG) {
                Log.d("MediaSessionManager", "Package name " + mediaSessionManager$RemoteUserInfoImpl.getPackageName() + " doesn't match with the uid " + mediaSessionManager$RemoteUserInfoImpl.getUid());
            }
            return false;
        } catch (PackageManager$NameNotFoundException unused) {
            if (DEBUG) {
                Log.d("MediaSessionManager", "Package " + mediaSessionManager$RemoteUserInfoImpl.getPackageName() + " doesn't exist");
            }
            return false;
        }
    }

    private boolean isPermissionGranted(MediaSessionManager$RemoteUserInfoImpl mediaSessionManager$RemoteUserInfoImpl, String str) {
        return mediaSessionManager$RemoteUserInfoImpl.getPid() < 0 ? this.mContext.getPackageManager().checkPermission(str, mediaSessionManager$RemoteUserInfoImpl.getPackageName()) == 0 : this.mContext.checkPermission(str, mediaSessionManager$RemoteUserInfoImpl.getPid(), mediaSessionManager$RemoteUserInfoImpl.getUid()) == 0;
    }

    boolean isEnabledNotificationListener(@NonNull MediaSessionManager$RemoteUserInfoImpl mediaSessionManager$RemoteUserInfoImpl) {
        String string = Settings$Secure.getString(this.mContentResolver, "enabled_notification_listeners");
        if (string != null) {
            for (String str : string.split(":")) {
                ComponentName componentNameUnflattenFromString = ComponentName.unflattenFromString(str);
                if (componentNameUnflattenFromString != null && componentNameUnflattenFromString.getPackageName().equals(mediaSessionManager$RemoteUserInfoImpl.getPackageName())) {
                    return true;
                }
            }
        }
        return false;
    }
}
