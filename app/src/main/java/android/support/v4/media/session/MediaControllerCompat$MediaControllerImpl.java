package android.support.v4.media.session;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.view.KeyEvent;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
interface MediaControllerCompat$MediaControllerImpl {
    void addQueueItem(MediaDescriptionCompat mediaDescriptionCompat);

    void addQueueItem(MediaDescriptionCompat mediaDescriptionCompat, int i);

    void adjustVolume(int i, int i2);

    boolean dispatchMediaButtonEvent(KeyEvent keyEvent);

    Bundle getExtras();

    long getFlags();

    Object getMediaController();

    MediaMetadataCompat getMetadata();

    String getPackageName();

    MediaControllerCompat$PlaybackInfo getPlaybackInfo();

    PlaybackStateCompat getPlaybackState();

    List<MediaSessionCompat$QueueItem> getQueue();

    CharSequence getQueueTitle();

    int getRatingType();

    int getRepeatMode();

    PendingIntent getSessionActivity();

    int getShuffleMode();

    MediaControllerCompat$TransportControls getTransportControls();

    boolean isCaptioningEnabled();

    boolean isSessionReady();

    void registerCallback(MediaControllerCompat$Callback mediaControllerCompat$Callback, Handler handler);

    void removeQueueItem(MediaDescriptionCompat mediaDescriptionCompat);

    void sendCommand(String str, Bundle bundle, ResultReceiver resultReceiver);

    void setVolumeTo(int i, int i2);

    void unregisterCallback(MediaControllerCompat$Callback mediaControllerCompat$Callback);
}
