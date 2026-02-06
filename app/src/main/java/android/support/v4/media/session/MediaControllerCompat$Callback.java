package android.support.v4.media.session;

import android.os.Build$VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder$DeathRecipient;
import android.os.Message;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.support.v4.media.MediaMetadataCompat;
import java.util.List;

public abstract class MediaControllerCompat$Callback implements IBinder$DeathRecipient {
    final Object mCallbackObj;
    MediaControllerCompat$Callback$MessageHandler mHandler;
    IMediaControllerCallback mIControllerCallback;

    public void onAudioInfoChanged(MediaControllerCompat$PlaybackInfo mediaControllerCompat$PlaybackInfo) {
    }

    public void onCaptioningEnabledChanged(boolean z) {
    }

    public void onExtrasChanged(Bundle bundle) {
    }

    public void onMetadataChanged(MediaMetadataCompat mediaMetadataCompat) {
    }

    public void onPlaybackStateChanged(PlaybackStateCompat playbackStateCompat) {
    }

    public void onQueueChanged(List<MediaSessionCompat$QueueItem> list) {
    }

    public void onQueueTitleChanged(CharSequence charSequence) {
    }

    public void onRepeatModeChanged(int i) {
    }

    public void onSessionDestroyed() {
    }

    public void onSessionEvent(String str, Bundle bundle) {
    }

    public void onSessionReady() {
    }

    public void onShuffleModeChanged(int i) {
    }

    public MediaControllerCompat$Callback() {
        if (Build$VERSION.SDK_INT >= 21) {
            this.mCallbackObj = MediaControllerCompatApi21.createCallback(new MediaControllerCompat$Callback$StubApi21(this));
            return;
        }
        MediaControllerCompat$Callback$StubCompat mediaControllerCompat$Callback$StubCompat = new MediaControllerCompat$Callback$StubCompat(this);
        this.mIControllerCallback = mediaControllerCompat$Callback$StubCompat;
        this.mCallbackObj = mediaControllerCompat$Callback$StubCompat;
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public IMediaControllerCallback getIControllerCallback() {
        return this.mIControllerCallback;
    }

    @Override // android.os.IBinder$DeathRecipient
    public void binderDied() {
        postToHandler(8, null, null);
    }

    void setHandler(Handler handler) {
        if (handler == null) {
            if (this.mHandler != null) {
                this.mHandler.mRegistered = false;
                this.mHandler.removeCallbacksAndMessages(null);
                this.mHandler = null;
                return;
            }
            return;
        }
        this.mHandler = new MediaControllerCompat$Callback$MessageHandler(this, handler.getLooper());
        this.mHandler.mRegistered = true;
    }

    void postToHandler(int i, Object obj, Bundle bundle) {
        if (this.mHandler != null) {
            Message messageObtainMessage = this.mHandler.obtainMessage(i, obj);
            messageObtainMessage.setData(bundle);
            messageObtainMessage.sendToTarget();
        }
    }
}
