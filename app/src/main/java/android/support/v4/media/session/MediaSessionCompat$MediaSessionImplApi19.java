package android.support.v4.media.session;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.media.RemoteControlClient$MetadataEditor;
import android.os.Bundle;
import android.os.Handler;
import android.support.annotation.RequiresApi;

/* JADX INFO: loaded from: classes.dex */
@RequiresApi(19)
class MediaSessionCompat$MediaSessionImplApi19 extends MediaSessionCompat$MediaSessionImplApi18 {
    MediaSessionCompat$MediaSessionImplApi19(Context context, String str, ComponentName componentName, PendingIntent pendingIntent) {
        super(context, str, componentName, pendingIntent);
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImplApi18, android.support.v4.media.session.MediaSessionCompat$MediaSessionImplBase, android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    public void setCallback(MediaSessionCompat$Callback mediaSessionCompat$Callback, Handler handler) {
        super.setCallback(mediaSessionCompat$Callback, handler);
        if (mediaSessionCompat$Callback == null) {
            this.mRcc.setMetadataUpdateListener(null);
        } else {
            this.mRcc.setMetadataUpdateListener(new MediaSessionCompat$MediaSessionImplApi19$1(this));
        }
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImplApi18, android.support.v4.media.session.MediaSessionCompat$MediaSessionImplBase
    int getRccTransportControlFlagsFromActions(long j) {
        int rccTransportControlFlagsFromActions = super.getRccTransportControlFlagsFromActions(j);
        return (j & 128) != 0 ? rccTransportControlFlagsFromActions | 512 : rccTransportControlFlagsFromActions;
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImplBase
    RemoteControlClient$MetadataEditor buildRccMetadata(Bundle bundle) {
        RemoteControlClient$MetadataEditor remoteControlClient$MetadataEditorBuildRccMetadata = super.buildRccMetadata(bundle);
        if (((this.mState == null ? 0L : this.mState.getActions()) & 128) != 0) {
            remoteControlClient$MetadataEditorBuildRccMetadata.addEditableKey(268435457);
        }
        if (bundle == null) {
            return remoteControlClient$MetadataEditorBuildRccMetadata;
        }
        if (bundle.containsKey("android.media.metadata.YEAR")) {
            remoteControlClient$MetadataEditorBuildRccMetadata.putLong(8, bundle.getLong("android.media.metadata.YEAR"));
        }
        if (bundle.containsKey("android.media.metadata.RATING")) {
            remoteControlClient$MetadataEditorBuildRccMetadata.putObject(101, (Object) bundle.getParcelable("android.media.metadata.RATING"));
        }
        if (bundle.containsKey("android.media.metadata.USER_RATING")) {
            remoteControlClient$MetadataEditorBuildRccMetadata.putObject(268435457, (Object) bundle.getParcelable("android.media.metadata.USER_RATING"));
        }
        return remoteControlClient$MetadataEditorBuildRccMetadata;
    }
}
