package android.support.v4.media.session;

import android.media.MediaMetadata;
import android.media.session.MediaController$Callback;
import android.media.session.MediaController$PlaybackInfo;
import android.media.session.MediaSession$QueueItem;
import android.media.session.PlaybackState;
import android.os.Bundle;
import android.support.v4.media.session.MediaControllerCompatApi21$Callback;
import java.util.List;

class MediaControllerCompatApi21$CallbackProxy<T extends MediaControllerCompatApi21$Callback> extends MediaController$Callback {
    protected final T mCallback;

    public MediaControllerCompatApi21$CallbackProxy(T t) {
        this.mCallback = t;
    }

    @Override // android.media.session.MediaController$Callback
    public void onSessionDestroyed() {
        this.mCallback.onSessionDestroyed();
    }

    @Override // android.media.session.MediaController$Callback
    public void onSessionEvent(String str, Bundle bundle) {
        MediaSessionCompat.ensureClassLoader(bundle);
        this.mCallback.onSessionEvent(str, bundle);
    }

    @Override // android.media.session.MediaController$Callback
    public void onPlaybackStateChanged(PlaybackState playbackState) {
        this.mCallback.onPlaybackStateChanged(playbackState);
    }

    @Override // android.media.session.MediaController$Callback
    public void onMetadataChanged(MediaMetadata mediaMetadata) {
        this.mCallback.onMetadataChanged(mediaMetadata);
    }

    @Override // android.media.session.MediaController$Callback
    public void onQueueChanged(List<MediaSession$QueueItem> list) {
        this.mCallback.onQueueChanged(list);
    }

    @Override // android.media.session.MediaController$Callback
    public void onQueueTitleChanged(CharSequence charSequence) {
        this.mCallback.onQueueTitleChanged(charSequence);
    }

    @Override // android.media.session.MediaController$Callback
    public void onExtrasChanged(Bundle bundle) {
        MediaSessionCompat.ensureClassLoader(bundle);
        this.mCallback.onExtrasChanged(bundle);
    }

    @Override // android.media.session.MediaController$Callback
    public void onAudioInfoChanged(MediaController$PlaybackInfo mediaController$PlaybackInfo) {
        this.mCallback.onAudioInfoChanged(mediaController$PlaybackInfo.getPlaybackType(), MediaControllerCompatApi21$PlaybackInfo.getLegacyAudioStream(mediaController$PlaybackInfo), mediaController$PlaybackInfo.getVolumeControl(), mediaController$PlaybackInfo.getMaxVolume(), mediaController$PlaybackInfo.getCurrentVolume());
    }
}
