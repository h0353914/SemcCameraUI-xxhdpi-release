package android.support.v4.media.session;

import android.app.PendingIntent;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.MediaSessionManager$RemoteUserInfo;
import android.support.v4.media.RatingCompat;
import android.support.v4.media.VolumeProviderCompat;
import android.view.KeyEvent;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class MediaSessionCompat$MediaSessionImplBase$MediaSessionStub extends IMediaSession$Stub {
    final /* synthetic */ MediaSessionCompat$MediaSessionImplBase this$0;

    @Override // android.support.v4.media.session.IMediaSession
    public boolean isShuffleModeEnabledRemoved() {
        return false;
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void setShuffleModeEnabledRemoved(boolean z) throws RemoteException {
    }

    MediaSessionCompat$MediaSessionImplBase$MediaSessionStub(MediaSessionCompat$MediaSessionImplBase mediaSessionCompat$MediaSessionImplBase) {
        this.this$0 = mediaSessionCompat$MediaSessionImplBase;
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void sendCommand(String str, Bundle bundle, MediaSessionCompat$ResultReceiverWrapper mediaSessionCompat$ResultReceiverWrapper) {
        postToHandler(1, new MediaSessionCompat$MediaSessionImplBase$Command(str, bundle, mediaSessionCompat$ResultReceiverWrapper.mResultReceiver));
    }

    @Override // android.support.v4.media.session.IMediaSession
    public boolean sendMediaButton(KeyEvent keyEvent) {
        boolean z = (this.this$0.mFlags & 1) != 0;
        if (z) {
            postToHandler(21, keyEvent);
        }
        return z;
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void registerCallbackListener(IMediaControllerCallback iMediaControllerCallback) {
        if (this.this$0.mDestroyed) {
            try {
                iMediaControllerCallback.onSessionDestroyed();
            } catch (Exception unused) {
            }
        } else {
            this.this$0.mControllerCallbacks.register(iMediaControllerCallback, new MediaSessionManager$RemoteUserInfo("android.media.session.MediaController", getCallingPid(), getCallingUid()));
        }
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void unregisterCallbackListener(IMediaControllerCallback iMediaControllerCallback) {
        this.this$0.mControllerCallbacks.unregister(iMediaControllerCallback);
    }

    @Override // android.support.v4.media.session.IMediaSession
    public String getPackageName() {
        return this.this$0.mPackageName;
    }

    @Override // android.support.v4.media.session.IMediaSession
    public String getTag() {
        return this.this$0.mTag;
    }

    @Override // android.support.v4.media.session.IMediaSession
    public PendingIntent getLaunchPendingIntent() {
        PendingIntent pendingIntent;
        synchronized (this.this$0.mLock) {
            pendingIntent = this.this$0.mSessionActivity;
        }
        return pendingIntent;
    }

    @Override // android.support.v4.media.session.IMediaSession
    public long getFlags() {
        long j;
        synchronized (this.this$0.mLock) {
            j = this.this$0.mFlags;
        }
        return j;
    }

    @Override // android.support.v4.media.session.IMediaSession
    public ParcelableVolumeInfo getVolumeAttributes() {
        int i;
        int i2;
        int streamVolume;
        int i3;
        int i4;
        synchronized (this.this$0.mLock) {
            i = this.this$0.mVolumeType;
            i2 = this.this$0.mLocalStream;
            VolumeProviderCompat volumeProviderCompat = this.this$0.mVolumeProvider;
            if (i == 2) {
                int volumeControl = volumeProviderCompat.getVolumeControl();
                int maxVolume = volumeProviderCompat.getMaxVolume();
                i4 = volumeControl;
                streamVolume = volumeProviderCompat.getCurrentVolume();
                i3 = maxVolume;
            } else {
                int streamMaxVolume = this.this$0.mAudioManager.getStreamMaxVolume(i2);
                streamVolume = this.this$0.mAudioManager.getStreamVolume(i2);
                i3 = streamMaxVolume;
                i4 = 2;
            }
        }
        return new ParcelableVolumeInfo(i, i2, i4, i3, streamVolume);
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void adjustVolume(int i, int i2, String str) {
        this.this$0.adjustVolume(i, i2);
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void setVolumeTo(int i, int i2, String str) {
        this.this$0.setVolumeTo(i, i2);
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void prepare() throws RemoteException {
        postToHandler(3);
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void prepareFromMediaId(String str, Bundle bundle) throws RemoteException {
        postToHandler(4, str, bundle);
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void prepareFromSearch(String str, Bundle bundle) throws RemoteException {
        postToHandler(5, str, bundle);
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void prepareFromUri(Uri uri, Bundle bundle) throws RemoteException {
        postToHandler(6, uri, bundle);
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void play() throws RemoteException {
        postToHandler(7);
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void playFromMediaId(String str, Bundle bundle) throws RemoteException {
        postToHandler(8, str, bundle);
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void playFromSearch(String str, Bundle bundle) throws RemoteException {
        postToHandler(9, str, bundle);
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void playFromUri(Uri uri, Bundle bundle) throws RemoteException {
        postToHandler(10, uri, bundle);
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void skipToQueueItem(long j) {
        postToHandler(11, Long.valueOf(j));
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void pause() throws RemoteException {
        postToHandler(12);
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void stop() throws RemoteException {
        postToHandler(13);
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void next() throws RemoteException {
        postToHandler(14);
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void previous() throws RemoteException {
        postToHandler(15);
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void fastForward() throws RemoteException {
        postToHandler(16);
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void rewind() throws RemoteException {
        postToHandler(17);
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void seekTo(long j) throws RemoteException {
        postToHandler(18, Long.valueOf(j));
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void rate(RatingCompat ratingCompat) throws RemoteException {
        postToHandler(19, ratingCompat);
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void rateWithExtras(RatingCompat ratingCompat, Bundle bundle) throws RemoteException {
        postToHandler(31, ratingCompat, bundle);
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void setCaptioningEnabled(boolean z) throws RemoteException {
        postToHandler(29, Boolean.valueOf(z));
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void setRepeatMode(int i) throws RemoteException {
        postToHandler(23, i);
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void setShuffleMode(int i) throws RemoteException {
        postToHandler(30, i);
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void sendCustomAction(String str, Bundle bundle) throws RemoteException {
        postToHandler(20, str, bundle);
    }

    @Override // android.support.v4.media.session.IMediaSession
    public MediaMetadataCompat getMetadata() {
        return this.this$0.mMetadata;
    }

    @Override // android.support.v4.media.session.IMediaSession
    public PlaybackStateCompat getPlaybackState() {
        PlaybackStateCompat playbackStateCompat;
        MediaMetadataCompat mediaMetadataCompat;
        synchronized (this.this$0.mLock) {
            playbackStateCompat = this.this$0.mState;
            mediaMetadataCompat = this.this$0.mMetadata;
        }
        return MediaSessionCompat.getStateWithUpdatedPosition(playbackStateCompat, mediaMetadataCompat);
    }

    @Override // android.support.v4.media.session.IMediaSession
    public List<MediaSessionCompat$QueueItem> getQueue() {
        List<MediaSessionCompat$QueueItem> list;
        synchronized (this.this$0.mLock) {
            list = this.this$0.mQueue;
        }
        return list;
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void addQueueItem(MediaDescriptionCompat mediaDescriptionCompat) {
        postToHandler(25, mediaDescriptionCompat);
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void addQueueItemAt(MediaDescriptionCompat mediaDescriptionCompat, int i) {
        postToHandler(26, mediaDescriptionCompat, i);
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void removeQueueItem(MediaDescriptionCompat mediaDescriptionCompat) {
        postToHandler(27, mediaDescriptionCompat);
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void removeQueueItemAt(int i) {
        postToHandler(28, i);
    }

    @Override // android.support.v4.media.session.IMediaSession
    public CharSequence getQueueTitle() {
        return this.this$0.mQueueTitle;
    }

    @Override // android.support.v4.media.session.IMediaSession
    public Bundle getExtras() {
        Bundle bundle;
        synchronized (this.this$0.mLock) {
            bundle = this.this$0.mExtras;
        }
        return bundle;
    }

    @Override // android.support.v4.media.session.IMediaSession
    public int getRatingType() {
        return this.this$0.mRatingType;
    }

    @Override // android.support.v4.media.session.IMediaSession
    public boolean isCaptioningEnabled() {
        return this.this$0.mCaptioningEnabled;
    }

    @Override // android.support.v4.media.session.IMediaSession
    public int getRepeatMode() {
        return this.this$0.mRepeatMode;
    }

    @Override // android.support.v4.media.session.IMediaSession
    public int getShuffleMode() {
        return this.this$0.mShuffleMode;
    }

    @Override // android.support.v4.media.session.IMediaSession
    public boolean isTransportControlEnabled() {
        return (this.this$0.mFlags & 2) != 0;
    }

    void postToHandler(int i) {
        this.this$0.postToHandler(i, 0, 0, null, null);
    }

    void postToHandler(int i, int i2) {
        this.this$0.postToHandler(i, i2, 0, null, null);
    }

    void postToHandler(int i, Object obj) {
        this.this$0.postToHandler(i, 0, 0, obj, null);
    }

    void postToHandler(int i, Object obj, int i2) {
        this.this$0.postToHandler(i, i2, 0, obj, null);
    }

    void postToHandler(int i, Object obj, Bundle bundle) {
        this.this$0.postToHandler(i, 0, 0, obj, bundle);
    }
}
