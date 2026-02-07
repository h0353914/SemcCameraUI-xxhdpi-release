package android.support.v4.media.session;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.MediaSessionManager$RemoteUserInfo;
import android.support.v4.media.VolumeProviderCompat;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
interface MediaSessionCompat$MediaSessionImpl {
    String getCallingPackage();

    MediaSessionManager$RemoteUserInfo getCurrentControllerInfo();

    Object getMediaSession();

    PlaybackStateCompat getPlaybackState();

    Object getRemoteControlClient();

    MediaSessionCompat$Token getSessionToken();

    boolean isActive();

    void release();

    void sendSessionEvent(String str, Bundle bundle);

    void setActive(boolean z);

    void setCallback(MediaSessionCompat$Callback mediaSessionCompat$Callback, Handler handler);

    void setCaptioningEnabled(boolean z);

    void setCurrentControllerInfo(MediaSessionManager$RemoteUserInfo mediaSessionManager$RemoteUserInfo);

    void setExtras(Bundle bundle);

    void setFlags(int i);

    void setMediaButtonReceiver(PendingIntent pendingIntent);

    void setMetadata(MediaMetadataCompat mediaMetadataCompat);

    void setPlaybackState(PlaybackStateCompat playbackStateCompat);

    void setPlaybackToLocal(int i);

    void setPlaybackToRemote(VolumeProviderCompat volumeProviderCompat);

    void setQueue(List<MediaSessionCompat$QueueItem> list);

    void setQueueTitle(CharSequence charSequence);

    void setRatingType(int i);

    void setRepeatMode(int i);

    void setSessionActivity(PendingIntent pendingIntent);

    void setShuffleMode(int i);
}
