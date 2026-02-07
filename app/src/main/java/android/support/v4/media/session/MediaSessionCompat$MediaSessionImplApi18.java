package android.support.v4.media.session;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import android.support.annotation.RequiresApi;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
@RequiresApi(18)
class MediaSessionCompat$MediaSessionImplApi18 extends MediaSessionCompat$MediaSessionImplBase {
    private static boolean sIsMbrPendingIntentSupported = true;

    MediaSessionCompat$MediaSessionImplApi18(Context context, String str, ComponentName componentName, PendingIntent pendingIntent) {
        super(context, str, componentName, pendingIntent);
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImplBase, android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    public void setCallback(MediaSessionCompat$Callback mediaSessionCompat$Callback, Handler handler) {
        super.setCallback(mediaSessionCompat$Callback, handler);
        if (mediaSessionCompat$Callback == null) {
            this.mRcc.setPlaybackPositionUpdateListener(null);
        } else {
            this.mRcc.setPlaybackPositionUpdateListener(new MediaSessionCompat$MediaSessionImplApi18$1(this));
        }
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImplBase
    void setRccState(PlaybackStateCompat playbackStateCompat) {
        long position = playbackStateCompat.getPosition();
        float playbackSpeed = playbackStateCompat.getPlaybackSpeed();
        long lastPositionUpdateTime = playbackStateCompat.getLastPositionUpdateTime();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (playbackStateCompat.getState() == 3) {
            long j = 0;
            if (position > 0) {
                if (lastPositionUpdateTime > 0) {
                    j = jElapsedRealtime - lastPositionUpdateTime;
                    if (playbackSpeed > 0.0f && playbackSpeed != 1.0f) {
                        j = (long) (j * playbackSpeed);
                    }
                }
                position += j;
            }
        }
        this.mRcc.setPlaybackState(getRccStateFromState(playbackStateCompat.getState()), position, playbackSpeed);
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImplBase
    int getRccTransportControlFlagsFromActions(long j) {
        int rccTransportControlFlagsFromActions = super.getRccTransportControlFlagsFromActions(j);
        return (j & 256) != 0 ? rccTransportControlFlagsFromActions | 256 : rccTransportControlFlagsFromActions;
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImplBase
    void registerMediaButtonEventReceiver(PendingIntent pendingIntent, ComponentName componentName) {
        if (sIsMbrPendingIntentSupported) {
            try {
                this.mAudioManager.registerMediaButtonEventReceiver(pendingIntent);
            } catch (NullPointerException unused) {
                Log.w("MediaSessionCompat", "Unable to register media button event receiver with PendingIntent, falling back to ComponentName.");
                sIsMbrPendingIntentSupported = false;
            }
        }
        if (sIsMbrPendingIntentSupported) {
            return;
        }
        super.registerMediaButtonEventReceiver(pendingIntent, componentName);
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImplBase
    void unregisterMediaButtonEventReceiver(PendingIntent pendingIntent, ComponentName componentName) {
        if (sIsMbrPendingIntentSupported) {
            this.mAudioManager.unregisterMediaButtonEventReceiver(pendingIntent);
        } else {
            super.unregisterMediaButtonEventReceiver(pendingIntent, componentName);
        }
    }
}
