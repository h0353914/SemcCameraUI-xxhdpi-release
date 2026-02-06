package android.support.v4.media.session;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.util.Log;
import android.view.KeyEvent;
import java.util.List;

class MediaControllerCompat$MediaControllerImplBase implements MediaControllerCompat$MediaControllerImpl {
    private IMediaSession mBinder;
    private MediaControllerCompat$TransportControls mTransportControls;

    @Override // android.support.v4.media.session.MediaControllerCompat$MediaControllerImpl
    public Object getMediaController() {
        return null;
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$MediaControllerImpl
    public boolean isSessionReady() {
        return true;
    }

    public MediaControllerCompat$MediaControllerImplBase(MediaSessionCompat$Token mediaSessionCompat$Token) {
        this.mBinder = IMediaSession$Stub.asInterface((IBinder) mediaSessionCompat$Token.getToken());
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$MediaControllerImpl
    public void registerCallback(MediaControllerCompat$Callback mediaControllerCompat$Callback, Handler handler) {
        if (mediaControllerCompat$Callback == null) {
            throw new IllegalArgumentException("callback may not be null.");
        }
        try {
            this.mBinder.asBinder().linkToDeath(mediaControllerCompat$Callback, 0);
            this.mBinder.registerCallbackListener((IMediaControllerCallback) mediaControllerCompat$Callback.mCallbackObj);
            mediaControllerCompat$Callback.postToHandler(13, null, null);
        } catch (RemoteException e) {
            Log.e("MediaControllerCompat", "Dead object in registerCallback.", e);
            mediaControllerCompat$Callback.postToHandler(8, null, null);
        }
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$MediaControllerImpl
    public void unregisterCallback(MediaControllerCompat$Callback mediaControllerCompat$Callback) {
        if (mediaControllerCompat$Callback == null) {
            throw new IllegalArgumentException("callback may not be null.");
        }
        try {
            this.mBinder.unregisterCallbackListener((IMediaControllerCallback) mediaControllerCompat$Callback.mCallbackObj);
            this.mBinder.asBinder().unlinkToDeath(mediaControllerCompat$Callback, 0);
        } catch (RemoteException e) {
            Log.e("MediaControllerCompat", "Dead object in unregisterCallback.", e);
        }
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$MediaControllerImpl
    public boolean dispatchMediaButtonEvent(KeyEvent keyEvent) {
        if (keyEvent == null) {
            throw new IllegalArgumentException("event may not be null.");
        }
        try {
            this.mBinder.sendMediaButton(keyEvent);
            return false;
        } catch (RemoteException e) {
            Log.e("MediaControllerCompat", "Dead object in dispatchMediaButtonEvent.", e);
            return false;
        }
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$MediaControllerImpl
    public MediaControllerCompat$TransportControls getTransportControls() {
        if (this.mTransportControls == null) {
            this.mTransportControls = new MediaControllerCompat$TransportControlsBase(this.mBinder);
        }
        return this.mTransportControls;
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$MediaControllerImpl
    public PlaybackStateCompat getPlaybackState() {
        try {
            return this.mBinder.getPlaybackState();
        } catch (RemoteException e) {
            Log.e("MediaControllerCompat", "Dead object in getPlaybackState.", e);
            return null;
        }
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$MediaControllerImpl
    public MediaMetadataCompat getMetadata() {
        try {
            return this.mBinder.getMetadata();
        } catch (RemoteException e) {
            Log.e("MediaControllerCompat", "Dead object in getMetadata.", e);
            return null;
        }
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$MediaControllerImpl
    public List<MediaSessionCompat$QueueItem> getQueue() {
        try {
            return this.mBinder.getQueue();
        } catch (RemoteException e) {
            Log.e("MediaControllerCompat", "Dead object in getQueue.", e);
            return null;
        }
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$MediaControllerImpl
    public void addQueueItem(MediaDescriptionCompat mediaDescriptionCompat) {
        try {
            if ((this.mBinder.getFlags() & 4) == 0) {
                throw new UnsupportedOperationException("This session doesn't support queue management operations");
            }
            this.mBinder.addQueueItem(mediaDescriptionCompat);
        } catch (RemoteException e) {
            Log.e("MediaControllerCompat", "Dead object in addQueueItem.", e);
        }
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$MediaControllerImpl
    public void addQueueItem(MediaDescriptionCompat mediaDescriptionCompat, int i) {
        try {
            if ((this.mBinder.getFlags() & 4) == 0) {
                throw new UnsupportedOperationException("This session doesn't support queue management operations");
            }
            this.mBinder.addQueueItemAt(mediaDescriptionCompat, i);
        } catch (RemoteException e) {
            Log.e("MediaControllerCompat", "Dead object in addQueueItemAt.", e);
        }
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$MediaControllerImpl
    public void removeQueueItem(MediaDescriptionCompat mediaDescriptionCompat) {
        try {
            if ((this.mBinder.getFlags() & 4) == 0) {
                throw new UnsupportedOperationException("This session doesn't support queue management operations");
            }
            this.mBinder.removeQueueItem(mediaDescriptionCompat);
        } catch (RemoteException e) {
            Log.e("MediaControllerCompat", "Dead object in removeQueueItem.", e);
        }
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$MediaControllerImpl
    public CharSequence getQueueTitle() {
        try {
            return this.mBinder.getQueueTitle();
        } catch (RemoteException e) {
            Log.e("MediaControllerCompat", "Dead object in getQueueTitle.", e);
            return null;
        }
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$MediaControllerImpl
    public Bundle getExtras() {
        try {
            return this.mBinder.getExtras();
        } catch (RemoteException e) {
            Log.e("MediaControllerCompat", "Dead object in getExtras.", e);
            return null;
        }
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$MediaControllerImpl
    public int getRatingType() {
        try {
            return this.mBinder.getRatingType();
        } catch (RemoteException e) {
            Log.e("MediaControllerCompat", "Dead object in getRatingType.", e);
            return 0;
        }
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$MediaControllerImpl
    public boolean isCaptioningEnabled() {
        try {
            return this.mBinder.isCaptioningEnabled();
        } catch (RemoteException e) {
            Log.e("MediaControllerCompat", "Dead object in isCaptioningEnabled.", e);
            return false;
        }
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$MediaControllerImpl
    public int getRepeatMode() {
        try {
            return this.mBinder.getRepeatMode();
        } catch (RemoteException e) {
            Log.e("MediaControllerCompat", "Dead object in getRepeatMode.", e);
            return -1;
        }
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$MediaControllerImpl
    public int getShuffleMode() {
        try {
            return this.mBinder.getShuffleMode();
        } catch (RemoteException e) {
            Log.e("MediaControllerCompat", "Dead object in getShuffleMode.", e);
            return -1;
        }
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$MediaControllerImpl
    public long getFlags() {
        try {
            return this.mBinder.getFlags();
        } catch (RemoteException e) {
            Log.e("MediaControllerCompat", "Dead object in getFlags.", e);
            return 0L;
        }
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$MediaControllerImpl
    public MediaControllerCompat$PlaybackInfo getPlaybackInfo() {
        try {
            ParcelableVolumeInfo volumeAttributes = this.mBinder.getVolumeAttributes();
            return new MediaControllerCompat$PlaybackInfo(volumeAttributes.volumeType, volumeAttributes.audioStream, volumeAttributes.controlType, volumeAttributes.maxVolume, volumeAttributes.currentVolume);
        } catch (RemoteException e) {
            Log.e("MediaControllerCompat", "Dead object in getPlaybackInfo.", e);
            return null;
        }
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$MediaControllerImpl
    public PendingIntent getSessionActivity() {
        try {
            return this.mBinder.getLaunchPendingIntent();
        } catch (RemoteException e) {
            Log.e("MediaControllerCompat", "Dead object in getSessionActivity.", e);
            return null;
        }
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$MediaControllerImpl
    public void setVolumeTo(int i, int i2) {
        try {
            this.mBinder.setVolumeTo(i, i2, null);
        } catch (RemoteException e) {
            Log.e("MediaControllerCompat", "Dead object in setVolumeTo.", e);
        }
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$MediaControllerImpl
    public void adjustVolume(int i, int i2) {
        try {
            this.mBinder.adjustVolume(i, i2, null);
        } catch (RemoteException e) {
            Log.e("MediaControllerCompat", "Dead object in adjustVolume.", e);
        }
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$MediaControllerImpl
    public void sendCommand(String str, Bundle bundle, ResultReceiver resultReceiver) {
        try {
            this.mBinder.sendCommand(str, bundle, new MediaSessionCompat$ResultReceiverWrapper(resultReceiver));
        } catch (RemoteException e) {
            Log.e("MediaControllerCompat", "Dead object in sendCommand.", e);
        }
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$MediaControllerImpl
    public String getPackageName() {
        try {
            return this.mBinder.getPackageName();
        } catch (RemoteException e) {
            Log.e("MediaControllerCompat", "Dead object in getPackageName.", e);
            return null;
        }
    }
}
