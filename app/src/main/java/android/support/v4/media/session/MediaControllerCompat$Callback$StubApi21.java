package android.support.v4.media.session;

import android.os.Build$VERSION;
import android.os.Bundle;
import android.support.v4.media.MediaMetadataCompat;
import java.lang.ref.WeakReference;
import java.util.List;

class MediaControllerCompat$Callback$StubApi21 implements MediaControllerCompatApi21$Callback {
    private final WeakReference<MediaControllerCompat$Callback> mCallback;

    MediaControllerCompat$Callback$StubApi21(MediaControllerCompat$Callback mediaControllerCompat$Callback) {
        this.mCallback = new WeakReference<>(mediaControllerCompat$Callback);
    }

    @Override // android.support.v4.media.session.MediaControllerCompatApi21$Callback
    public void onSessionDestroyed() {
        MediaControllerCompat$Callback mediaControllerCompat$Callback = this.mCallback.get();
        if (mediaControllerCompat$Callback != null) {
            mediaControllerCompat$Callback.onSessionDestroyed();
        }
    }

    @Override // android.support.v4.media.session.MediaControllerCompatApi21$Callback
    public void onSessionEvent(String str, Bundle bundle) {
        MediaControllerCompat$Callback mediaControllerCompat$Callback = this.mCallback.get();
        if (mediaControllerCompat$Callback != null) {
            if (mediaControllerCompat$Callback.mIControllerCallback == null || Build$VERSION.SDK_INT >= 23) {
                mediaControllerCompat$Callback.onSessionEvent(str, bundle);
            }
        }
    }

    @Override // android.support.v4.media.session.MediaControllerCompatApi21$Callback
    public void onPlaybackStateChanged(Object obj) {
        MediaControllerCompat$Callback mediaControllerCompat$Callback = this.mCallback.get();
        if (mediaControllerCompat$Callback == null || mediaControllerCompat$Callback.mIControllerCallback != null) {
            return;
        }
        mediaControllerCompat$Callback.onPlaybackStateChanged(PlaybackStateCompat.fromPlaybackState(obj));
    }

    @Override // android.support.v4.media.session.MediaControllerCompatApi21$Callback
    public void onMetadataChanged(Object obj) {
        MediaControllerCompat$Callback mediaControllerCompat$Callback = this.mCallback.get();
        if (mediaControllerCompat$Callback != null) {
            mediaControllerCompat$Callback.onMetadataChanged(MediaMetadataCompat.fromMediaMetadata(obj));
        }
    }

    @Override // android.support.v4.media.session.MediaControllerCompatApi21$Callback
    public void onQueueChanged(List<?> list) {
        MediaControllerCompat$Callback mediaControllerCompat$Callback = this.mCallback.get();
        if (mediaControllerCompat$Callback != null) {
            mediaControllerCompat$Callback.onQueueChanged(MediaSessionCompat$QueueItem.fromQueueItemList(list));
        }
    }

    @Override // android.support.v4.media.session.MediaControllerCompatApi21$Callback
    public void onQueueTitleChanged(CharSequence charSequence) {
        MediaControllerCompat$Callback mediaControllerCompat$Callback = this.mCallback.get();
        if (mediaControllerCompat$Callback != null) {
            mediaControllerCompat$Callback.onQueueTitleChanged(charSequence);
        }
    }

    @Override // android.support.v4.media.session.MediaControllerCompatApi21$Callback
    public void onExtrasChanged(Bundle bundle) {
        MediaControllerCompat$Callback mediaControllerCompat$Callback = this.mCallback.get();
        if (mediaControllerCompat$Callback != null) {
            mediaControllerCompat$Callback.onExtrasChanged(bundle);
        }
    }

    @Override // android.support.v4.media.session.MediaControllerCompatApi21$Callback
    public void onAudioInfoChanged(int i, int i2, int i3, int i4, int i5) {
        MediaControllerCompat$Callback mediaControllerCompat$Callback = this.mCallback.get();
        if (mediaControllerCompat$Callback != null) {
            mediaControllerCompat$Callback.onAudioInfoChanged(new MediaControllerCompat$PlaybackInfo(i, i2, i3, i4, i5));
        }
    }
}
