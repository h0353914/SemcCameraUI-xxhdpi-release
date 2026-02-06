package android.support.v4.media.session;

import android.os.Bundle;
import android.os.RemoteException;
import android.support.v4.media.MediaMetadataCompat;
import java.lang.ref.WeakReference;
import java.util.List;

class MediaControllerCompat$Callback$StubCompat extends IMediaControllerCallback$Stub {
    private final WeakReference<MediaControllerCompat$Callback> mCallback;

    @Override // android.support.v4.media.session.IMediaControllerCallback
    public void onShuffleModeChangedRemoved(boolean z) throws RemoteException {
    }

    MediaControllerCompat$Callback$StubCompat(MediaControllerCompat$Callback mediaControllerCompat$Callback) {
        this.mCallback = new WeakReference<>(mediaControllerCompat$Callback);
    }

    @Override // android.support.v4.media.session.IMediaControllerCallback
    public void onEvent(String str, Bundle bundle) throws RemoteException {
        MediaControllerCompat$Callback mediaControllerCompat$Callback = this.mCallback.get();
        if (mediaControllerCompat$Callback != null) {
            mediaControllerCompat$Callback.postToHandler(1, str, bundle);
        }
    }

    @Override // android.support.v4.media.session.IMediaControllerCallback
    public void onSessionDestroyed() throws RemoteException {
        MediaControllerCompat$Callback mediaControllerCompat$Callback = this.mCallback.get();
        if (mediaControllerCompat$Callback != null) {
            mediaControllerCompat$Callback.postToHandler(8, null, null);
        }
    }

    @Override // android.support.v4.media.session.IMediaControllerCallback
    public void onPlaybackStateChanged(PlaybackStateCompat playbackStateCompat) throws RemoteException {
        MediaControllerCompat$Callback mediaControllerCompat$Callback = this.mCallback.get();
        if (mediaControllerCompat$Callback != null) {
            mediaControllerCompat$Callback.postToHandler(2, playbackStateCompat, null);
        }
    }

    @Override // android.support.v4.media.session.IMediaControllerCallback
    public void onMetadataChanged(MediaMetadataCompat mediaMetadataCompat) throws RemoteException {
        MediaControllerCompat$Callback mediaControllerCompat$Callback = this.mCallback.get();
        if (mediaControllerCompat$Callback != null) {
            mediaControllerCompat$Callback.postToHandler(3, mediaMetadataCompat, null);
        }
    }

    @Override // android.support.v4.media.session.IMediaControllerCallback
    public void onQueueChanged(List<MediaSessionCompat$QueueItem> list) throws RemoteException {
        MediaControllerCompat$Callback mediaControllerCompat$Callback = this.mCallback.get();
        if (mediaControllerCompat$Callback != null) {
            mediaControllerCompat$Callback.postToHandler(5, list, null);
        }
    }

    @Override // android.support.v4.media.session.IMediaControllerCallback
    public void onQueueTitleChanged(CharSequence charSequence) throws RemoteException {
        MediaControllerCompat$Callback mediaControllerCompat$Callback = this.mCallback.get();
        if (mediaControllerCompat$Callback != null) {
            mediaControllerCompat$Callback.postToHandler(6, charSequence, null);
        }
    }

    @Override // android.support.v4.media.session.IMediaControllerCallback
    public void onCaptioningEnabledChanged(boolean z) throws RemoteException {
        MediaControllerCompat$Callback mediaControllerCompat$Callback = this.mCallback.get();
        if (mediaControllerCompat$Callback != null) {
            mediaControllerCompat$Callback.postToHandler(11, Boolean.valueOf(z), null);
        }
    }

    @Override // android.support.v4.media.session.IMediaControllerCallback
    public void onRepeatModeChanged(int i) throws RemoteException {
        MediaControllerCompat$Callback mediaControllerCompat$Callback = this.mCallback.get();
        if (mediaControllerCompat$Callback != null) {
            mediaControllerCompat$Callback.postToHandler(9, Integer.valueOf(i), null);
        }
    }

    @Override // android.support.v4.media.session.IMediaControllerCallback
    public void onShuffleModeChanged(int i) throws RemoteException {
        MediaControllerCompat$Callback mediaControllerCompat$Callback = this.mCallback.get();
        if (mediaControllerCompat$Callback != null) {
            mediaControllerCompat$Callback.postToHandler(12, Integer.valueOf(i), null);
        }
    }

    @Override // android.support.v4.media.session.IMediaControllerCallback
    public void onExtrasChanged(Bundle bundle) throws RemoteException {
        MediaControllerCompat$Callback mediaControllerCompat$Callback = this.mCallback.get();
        if (mediaControllerCompat$Callback != null) {
            mediaControllerCompat$Callback.postToHandler(7, bundle, null);
        }
    }

    @Override // android.support.v4.media.session.IMediaControllerCallback
    public void onVolumeInfoChanged(ParcelableVolumeInfo parcelableVolumeInfo) throws RemoteException {
        MediaControllerCompat$Callback mediaControllerCompat$Callback = this.mCallback.get();
        if (mediaControllerCompat$Callback != null) {
            mediaControllerCompat$Callback.postToHandler(4, parcelableVolumeInfo != null ? new MediaControllerCompat$PlaybackInfo(parcelableVolumeInfo.volumeType, parcelableVolumeInfo.audioStream, parcelableVolumeInfo.controlType, parcelableVolumeInfo.maxVolume, parcelableVolumeInfo.currentVolume) : null, null);
        }
    }

    @Override // android.support.v4.media.session.IMediaControllerCallback
    public void onSessionReady() throws RemoteException {
        MediaControllerCompat$Callback mediaControllerCompat$Callback = this.mCallback.get();
        if (mediaControllerCompat$Callback != null) {
            mediaControllerCompat$Callback.postToHandler(13, null, null);
        }
    }
}
