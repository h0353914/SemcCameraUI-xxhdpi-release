package android.support.v4.media.session;

import android.content.Intent;
import android.net.Uri;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaSessionManager$RemoteUserInfo;
import android.support.v4.media.RatingCompat;
import android.view.KeyEvent;
import android.view.ViewConfiguration;
import java.lang.ref.WeakReference;

public abstract class MediaSessionCompat$Callback {
    private MediaSessionCompat$Callback$CallbackHandler mCallbackHandler = null;
    final Object mCallbackObj;
    private boolean mMediaPlayPauseKeyPending;
    WeakReference<MediaSessionCompat$MediaSessionImpl> mSessionImpl;

    public void onAddQueueItem(MediaDescriptionCompat mediaDescriptionCompat) {
    }

    public void onAddQueueItem(MediaDescriptionCompat mediaDescriptionCompat, int i) {
    }

    public void onCommand(String str, Bundle bundle, ResultReceiver resultReceiver) {
    }

    public void onCustomAction(String str, Bundle bundle) {
    }

    public void onFastForward() {
    }

    public void onPause() {
    }

    public void onPlay() {
    }

    public void onPlayFromMediaId(String str, Bundle bundle) {
    }

    public void onPlayFromSearch(String str, Bundle bundle) {
    }

    public void onPlayFromUri(Uri uri, Bundle bundle) {
    }

    public void onPrepare() {
    }

    public void onPrepareFromMediaId(String str, Bundle bundle) {
    }

    public void onPrepareFromSearch(String str, Bundle bundle) {
    }

    public void onPrepareFromUri(Uri uri, Bundle bundle) {
    }

    public void onRemoveQueueItem(MediaDescriptionCompat mediaDescriptionCompat) {
    }

    @Deprecated
    public void onRemoveQueueItemAt(int i) {
    }

    public void onRewind() {
    }

    public void onSeekTo(long j) {
    }

    public void onSetCaptioningEnabled(boolean z) {
    }

    public void onSetRating(RatingCompat ratingCompat) {
    }

    public void onSetRating(RatingCompat ratingCompat, Bundle bundle) {
    }

    public void onSetRepeatMode(int i) {
    }

    public void onSetShuffleMode(int i) {
    }

    public void onSkipToNext() {
    }

    public void onSkipToPrevious() {
    }

    public void onSkipToQueueItem(long j) {
    }

    public void onStop() {
    }

    public MediaSessionCompat$Callback() {
        if (Build$VERSION.SDK_INT >= 24) {
            this.mCallbackObj = MediaSessionCompatApi24.createCallback(new MediaSessionCompat$Callback$StubApi24(this));
            return;
        }
        if (Build$VERSION.SDK_INT >= 23) {
            this.mCallbackObj = MediaSessionCompatApi23.createCallback(new MediaSessionCompat$Callback$StubApi23(this));
        } else if (Build$VERSION.SDK_INT >= 21) {
            this.mCallbackObj = MediaSessionCompatApi21.createCallback(new MediaSessionCompat$Callback$StubApi21(this));
        } else {
            this.mCallbackObj = null;
        }
    }

    void setSessionImpl(MediaSessionCompat$MediaSessionImpl mediaSessionCompat$MediaSessionImpl, Handler handler) {
        this.mSessionImpl = new WeakReference<>(mediaSessionCompat$MediaSessionImpl);
        if (this.mCallbackHandler != null) {
            this.mCallbackHandler.removeCallbacksAndMessages(null);
        }
        this.mCallbackHandler = new MediaSessionCompat$Callback$CallbackHandler(this, handler.getLooper());
    }

    public boolean onMediaButtonEvent(Intent intent) {
        MediaSessionCompat$MediaSessionImpl mediaSessionCompat$MediaSessionImpl;
        KeyEvent keyEvent;
        if (Build$VERSION.SDK_INT >= 27 || (mediaSessionCompat$MediaSessionImpl = this.mSessionImpl.get()) == null || this.mCallbackHandler == null || (keyEvent = (KeyEvent) intent.getParcelableExtra("android.intent.extra.KEY_EVENT")) == null || keyEvent.getAction() != 0) {
            return false;
        }
        MediaSessionManager$RemoteUserInfo currentControllerInfo = mediaSessionCompat$MediaSessionImpl.getCurrentControllerInfo();
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 79 || keyCode == 85) {
            if (keyEvent.getRepeatCount() > 0) {
                handleMediaPlayPauseKeySingleTapIfPending(currentControllerInfo);
            } else if (this.mMediaPlayPauseKeyPending) {
                this.mCallbackHandler.removeMessages(1);
                this.mMediaPlayPauseKeyPending = false;
                PlaybackStateCompat playbackState = mediaSessionCompat$MediaSessionImpl.getPlaybackState();
                if (((playbackState == null ? 0L : playbackState.getActions()) & 32) != 0) {
                    onSkipToNext();
                }
            } else {
                this.mMediaPlayPauseKeyPending = true;
                this.mCallbackHandler.sendMessageDelayed(this.mCallbackHandler.obtainMessage(1, currentControllerInfo), ViewConfiguration.getDoubleTapTimeout());
            }
            return true;
        }
        handleMediaPlayPauseKeySingleTapIfPending(currentControllerInfo);
        return false;
    }

    void handleMediaPlayPauseKeySingleTapIfPending(MediaSessionManager$RemoteUserInfo mediaSessionManager$RemoteUserInfo) {
        if (this.mMediaPlayPauseKeyPending) {
            this.mMediaPlayPauseKeyPending = false;
            this.mCallbackHandler.removeMessages(1);
            MediaSessionCompat$MediaSessionImpl mediaSessionCompat$MediaSessionImpl = this.mSessionImpl.get();
            if (mediaSessionCompat$MediaSessionImpl == null) {
                return;
            }
            PlaybackStateCompat playbackState = mediaSessionCompat$MediaSessionImpl.getPlaybackState();
            long actions = playbackState == null ? 0L : playbackState.getActions();
            boolean z = playbackState != null && playbackState.getState() == 3;
            boolean z2 = (516 & actions) != 0;
            boolean z3 = (actions & 514) != 0;
            mediaSessionCompat$MediaSessionImpl.setCurrentControllerInfo(mediaSessionManager$RemoteUserInfo);
            if (z && z3) {
                onPause();
            } else if (!z && z2) {
                onPlay();
            }
            mediaSessionCompat$MediaSessionImpl.setCurrentControllerInfo(null);
        }
    }
}
