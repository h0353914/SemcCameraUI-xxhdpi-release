package android.support.v4.media.session;

import android.app.PendingIntent;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.MediaSessionManager$RemoteUserInfo;
import android.support.v4.media.RatingCompat;
import android.view.KeyEvent;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class MediaSessionCompat$MediaSessionImplApi21$ExtraSession extends IMediaSession$Stub {
    final /* synthetic */ MediaSessionCompat$MediaSessionImplApi21 this$0;

    @Override // android.support.v4.media.session.IMediaSession
    public List<MediaSessionCompat$QueueItem> getQueue() {
        return null;
    }

    @Override // android.support.v4.media.session.IMediaSession
    public boolean isShuffleModeEnabledRemoved() {
        return false;
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void setShuffleModeEnabledRemoved(boolean z) throws RemoteException {
    }

    MediaSessionCompat$MediaSessionImplApi21$ExtraSession(MediaSessionCompat$MediaSessionImplApi21 mediaSessionCompat$MediaSessionImplApi21) {
        this.this$0 = mediaSessionCompat$MediaSessionImplApi21;
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void sendCommand(String str, Bundle bundle, MediaSessionCompat$ResultReceiverWrapper mediaSessionCompat$ResultReceiverWrapper) {
        throw new AssertionError();
    }

    @Override // android.support.v4.media.session.IMediaSession
    public boolean sendMediaButton(KeyEvent keyEvent) {
        throw new AssertionError();
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void registerCallbackListener(IMediaControllerCallback iMediaControllerCallback) {
        if (this.this$0.mDestroyed) {
            return;
        }
        String callingPackage = this.this$0.getCallingPackage();
        if (callingPackage == null) {
            callingPackage = "android.media.session.MediaController";
        }
        this.this$0.mExtraControllerCallbacks.register(iMediaControllerCallback, new MediaSessionManager$RemoteUserInfo(callingPackage, getCallingPid(), getCallingUid()));
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void unregisterCallbackListener(IMediaControllerCallback iMediaControllerCallback) {
        this.this$0.mExtraControllerCallbacks.unregister(iMediaControllerCallback);
    }

    @Override // android.support.v4.media.session.IMediaSession
    public String getPackageName() {
        throw new AssertionError();
    }

    @Override // android.support.v4.media.session.IMediaSession
    public String getTag() {
        throw new AssertionError();
    }

    @Override // android.support.v4.media.session.IMediaSession
    public PendingIntent getLaunchPendingIntent() {
        throw new AssertionError();
    }

    @Override // android.support.v4.media.session.IMediaSession
    public long getFlags() {
        throw new AssertionError();
    }

    @Override // android.support.v4.media.session.IMediaSession
    public ParcelableVolumeInfo getVolumeAttributes() {
        throw new AssertionError();
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void adjustVolume(int i, int i2, String str) {
        throw new AssertionError();
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void setVolumeTo(int i, int i2, String str) {
        throw new AssertionError();
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void prepare() throws RemoteException {
        throw new AssertionError();
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void prepareFromMediaId(String str, Bundle bundle) throws RemoteException {
        throw new AssertionError();
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void prepareFromSearch(String str, Bundle bundle) throws RemoteException {
        throw new AssertionError();
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void prepareFromUri(Uri uri, Bundle bundle) throws RemoteException {
        throw new AssertionError();
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void play() throws RemoteException {
        throw new AssertionError();
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void playFromMediaId(String str, Bundle bundle) throws RemoteException {
        throw new AssertionError();
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void playFromSearch(String str, Bundle bundle) throws RemoteException {
        throw new AssertionError();
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void playFromUri(Uri uri, Bundle bundle) throws RemoteException {
        throw new AssertionError();
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void skipToQueueItem(long j) {
        throw new AssertionError();
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void pause() throws RemoteException {
        throw new AssertionError();
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void stop() throws RemoteException {
        throw new AssertionError();
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void next() throws RemoteException {
        throw new AssertionError();
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void previous() throws RemoteException {
        throw new AssertionError();
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void fastForward() throws RemoteException {
        throw new AssertionError();
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void rewind() throws RemoteException {
        throw new AssertionError();
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void seekTo(long j) throws RemoteException {
        throw new AssertionError();
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void rate(RatingCompat ratingCompat) throws RemoteException {
        throw new AssertionError();
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void rateWithExtras(RatingCompat ratingCompat, Bundle bundle) throws RemoteException {
        throw new AssertionError();
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void setCaptioningEnabled(boolean z) throws RemoteException {
        throw new AssertionError();
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void setRepeatMode(int i) throws RemoteException {
        throw new AssertionError();
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void setShuffleMode(int i) throws RemoteException {
        throw new AssertionError();
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void sendCustomAction(String str, Bundle bundle) throws RemoteException {
        throw new AssertionError();
    }

    @Override // android.support.v4.media.session.IMediaSession
    public MediaMetadataCompat getMetadata() {
        throw new AssertionError();
    }

    @Override // android.support.v4.media.session.IMediaSession
    public PlaybackStateCompat getPlaybackState() {
        return MediaSessionCompat.getStateWithUpdatedPosition(this.this$0.mPlaybackState, this.this$0.mMetadata);
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void addQueueItem(MediaDescriptionCompat mediaDescriptionCompat) {
        throw new AssertionError();
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void addQueueItemAt(MediaDescriptionCompat mediaDescriptionCompat, int i) {
        throw new AssertionError();
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void removeQueueItem(MediaDescriptionCompat mediaDescriptionCompat) {
        throw new AssertionError();
    }

    @Override // android.support.v4.media.session.IMediaSession
    public void removeQueueItemAt(int i) {
        throw new AssertionError();
    }

    @Override // android.support.v4.media.session.IMediaSession
    public CharSequence getQueueTitle() {
        throw new AssertionError();
    }

    @Override // android.support.v4.media.session.IMediaSession
    public Bundle getExtras() {
        throw new AssertionError();
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
        throw new AssertionError();
    }
}
