package android.support.v4.media.session;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.support.annotation.GuardedBy;
import android.support.annotation.RequiresApi;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.util.Log;
import android.view.KeyEvent;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@RequiresApi(21)
class MediaControllerCompat$MediaControllerImplApi21 implements MediaControllerCompat$MediaControllerImpl {
    protected final Object mControllerObj;
    final MediaSessionCompat$Token mSessionToken;
    final Object mLock = new Object();

    @GuardedBy("mLock")
    private final List<MediaControllerCompat$Callback> mPendingCallbacks = new ArrayList();
    private HashMap<MediaControllerCompat$Callback, MediaControllerCompat$MediaControllerImplApi21$ExtraCallback> mCallbackMap = new HashMap<>();

    public MediaControllerCompat$MediaControllerImplApi21(Context context, MediaSessionCompat$Token mediaSessionCompat$Token) throws RemoteException {
        this.mSessionToken = mediaSessionCompat$Token;
        this.mControllerObj = MediaControllerCompatApi21.fromToken(context, this.mSessionToken.getToken());
        if (this.mControllerObj == null) {
            throw new RemoteException();
        }
        if (this.mSessionToken.getExtraBinder() == null) {
            requestExtraBinder();
        }
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$MediaControllerImpl
    public final void registerCallback(MediaControllerCompat$Callback mediaControllerCompat$Callback, Handler handler) {
        MediaControllerCompatApi21.registerCallback(this.mControllerObj, mediaControllerCompat$Callback.mCallbackObj, handler);
        synchronized (this.mLock) {
            if (this.mSessionToken.getExtraBinder() != null) {
                MediaControllerCompat$MediaControllerImplApi21$ExtraCallback mediaControllerCompat$MediaControllerImplApi21$ExtraCallback = new MediaControllerCompat$MediaControllerImplApi21$ExtraCallback(mediaControllerCompat$Callback);
                this.mCallbackMap.put(mediaControllerCompat$Callback, mediaControllerCompat$MediaControllerImplApi21$ExtraCallback);
                mediaControllerCompat$Callback.mIControllerCallback = mediaControllerCompat$MediaControllerImplApi21$ExtraCallback;
                try {
                    this.mSessionToken.getExtraBinder().registerCallbackListener(mediaControllerCompat$MediaControllerImplApi21$ExtraCallback);
                    mediaControllerCompat$Callback.postToHandler(13, null, null);
                } catch (RemoteException e) {
                    Log.e("MediaControllerCompat", "Dead object in registerCallback.", e);
                }
            } else {
                mediaControllerCompat$Callback.mIControllerCallback = null;
                this.mPendingCallbacks.add(mediaControllerCompat$Callback);
            }
        }
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$MediaControllerImpl
    public final void unregisterCallback(MediaControllerCompat$Callback mediaControllerCompat$Callback) {
        MediaControllerCompatApi21.unregisterCallback(this.mControllerObj, mediaControllerCompat$Callback.mCallbackObj);
        synchronized (this.mLock) {
            if (this.mSessionToken.getExtraBinder() != null) {
                try {
                    MediaControllerCompat$MediaControllerImplApi21$ExtraCallback mediaControllerCompat$MediaControllerImplApi21$ExtraCallbackRemove = this.mCallbackMap.remove(mediaControllerCompat$Callback);
                    if (mediaControllerCompat$MediaControllerImplApi21$ExtraCallbackRemove != null) {
                        mediaControllerCompat$Callback.mIControllerCallback = null;
                        this.mSessionToken.getExtraBinder().unregisterCallbackListener(mediaControllerCompat$MediaControllerImplApi21$ExtraCallbackRemove);
                    }
                } catch (RemoteException e) {
                    Log.e("MediaControllerCompat", "Dead object in unregisterCallback.", e);
                }
            }
            this.mPendingCallbacks.remove(mediaControllerCompat$Callback);
        }
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$MediaControllerImpl
    public boolean dispatchMediaButtonEvent(KeyEvent keyEvent) {
        return MediaControllerCompatApi21.dispatchMediaButtonEvent(this.mControllerObj, keyEvent);
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$MediaControllerImpl
    public MediaControllerCompat$TransportControls getTransportControls() {
        Object transportControls = MediaControllerCompatApi21.getTransportControls(this.mControllerObj);
        if (transportControls != null) {
            return new MediaControllerCompat$TransportControlsApi21(transportControls);
        }
        return null;
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$MediaControllerImpl
    public PlaybackStateCompat getPlaybackState() {
        if (this.mSessionToken.getExtraBinder() != null) {
            try {
                return this.mSessionToken.getExtraBinder().getPlaybackState();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in getPlaybackState.", e);
            }
        }
        Object playbackState = MediaControllerCompatApi21.getPlaybackState(this.mControllerObj);
        if (playbackState != null) {
            return PlaybackStateCompat.fromPlaybackState(playbackState);
        }
        return null;
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$MediaControllerImpl
    public MediaMetadataCompat getMetadata() {
        Object metadata = MediaControllerCompatApi21.getMetadata(this.mControllerObj);
        if (metadata != null) {
            return MediaMetadataCompat.fromMediaMetadata(metadata);
        }
        return null;
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$MediaControllerImpl
    public List<MediaSessionCompat$QueueItem> getQueue() {
        List<Object> queue = MediaControllerCompatApi21.getQueue(this.mControllerObj);
        if (queue != null) {
            return MediaSessionCompat$QueueItem.fromQueueItemList(queue);
        }
        return null;
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$MediaControllerImpl
    public void addQueueItem(MediaDescriptionCompat mediaDescriptionCompat) {
        if ((getFlags() & 4) == 0) {
            throw new UnsupportedOperationException("This session doesn't support queue management operations");
        }
        Bundle bundle = new Bundle();
        bundle.putParcelable("android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION", mediaDescriptionCompat);
        sendCommand("android.support.v4.media.session.command.ADD_QUEUE_ITEM", bundle, null);
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$MediaControllerImpl
    public void addQueueItem(MediaDescriptionCompat mediaDescriptionCompat, int i) {
        if ((getFlags() & 4) == 0) {
            throw new UnsupportedOperationException("This session doesn't support queue management operations");
        }
        Bundle bundle = new Bundle();
        bundle.putParcelable("android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION", mediaDescriptionCompat);
        bundle.putInt("android.support.v4.media.session.command.ARGUMENT_INDEX", i);
        sendCommand("android.support.v4.media.session.command.ADD_QUEUE_ITEM_AT", bundle, null);
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$MediaControllerImpl
    public void removeQueueItem(MediaDescriptionCompat mediaDescriptionCompat) {
        if ((getFlags() & 4) == 0) {
            throw new UnsupportedOperationException("This session doesn't support queue management operations");
        }
        Bundle bundle = new Bundle();
        bundle.putParcelable("android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION", mediaDescriptionCompat);
        sendCommand("android.support.v4.media.session.command.REMOVE_QUEUE_ITEM", bundle, null);
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$MediaControllerImpl
    public CharSequence getQueueTitle() {
        return MediaControllerCompatApi21.getQueueTitle(this.mControllerObj);
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$MediaControllerImpl
    public Bundle getExtras() {
        return MediaControllerCompatApi21.getExtras(this.mControllerObj);
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$MediaControllerImpl
    public int getRatingType() {
        if (Build$VERSION.SDK_INT < 22 && this.mSessionToken.getExtraBinder() != null) {
            try {
                return this.mSessionToken.getExtraBinder().getRatingType();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in getRatingType.", e);
            }
        }
        return MediaControllerCompatApi21.getRatingType(this.mControllerObj);
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$MediaControllerImpl
    public boolean isCaptioningEnabled() {
        if (this.mSessionToken.getExtraBinder() == null) {
            return false;
        }
        try {
            return this.mSessionToken.getExtraBinder().isCaptioningEnabled();
        } catch (RemoteException e) {
            Log.e("MediaControllerCompat", "Dead object in isCaptioningEnabled.", e);
            return false;
        }
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$MediaControllerImpl
    public int getRepeatMode() {
        if (this.mSessionToken.getExtraBinder() == null) {
            return -1;
        }
        try {
            return this.mSessionToken.getExtraBinder().getRepeatMode();
        } catch (RemoteException e) {
            Log.e("MediaControllerCompat", "Dead object in getRepeatMode.", e);
            return -1;
        }
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$MediaControllerImpl
    public int getShuffleMode() {
        if (this.mSessionToken.getExtraBinder() == null) {
            return -1;
        }
        try {
            return this.mSessionToken.getExtraBinder().getShuffleMode();
        } catch (RemoteException e) {
            Log.e("MediaControllerCompat", "Dead object in getShuffleMode.", e);
            return -1;
        }
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$MediaControllerImpl
    public long getFlags() {
        return MediaControllerCompatApi21.getFlags(this.mControllerObj);
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$MediaControllerImpl
    public MediaControllerCompat$PlaybackInfo getPlaybackInfo() {
        Object playbackInfo = MediaControllerCompatApi21.getPlaybackInfo(this.mControllerObj);
        if (playbackInfo != null) {
            return new MediaControllerCompat$PlaybackInfo(MediaControllerCompatApi21$PlaybackInfo.getPlaybackType(playbackInfo), MediaControllerCompatApi21$PlaybackInfo.getLegacyAudioStream(playbackInfo), MediaControllerCompatApi21$PlaybackInfo.getVolumeControl(playbackInfo), MediaControllerCompatApi21$PlaybackInfo.getMaxVolume(playbackInfo), MediaControllerCompatApi21$PlaybackInfo.getCurrentVolume(playbackInfo));
        }
        return null;
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$MediaControllerImpl
    public PendingIntent getSessionActivity() {
        return MediaControllerCompatApi21.getSessionActivity(this.mControllerObj);
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$MediaControllerImpl
    public void setVolumeTo(int i, int i2) {
        MediaControllerCompatApi21.setVolumeTo(this.mControllerObj, i, i2);
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$MediaControllerImpl
    public void adjustVolume(int i, int i2) {
        MediaControllerCompatApi21.adjustVolume(this.mControllerObj, i, i2);
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$MediaControllerImpl
    public void sendCommand(String str, Bundle bundle, ResultReceiver resultReceiver) {
        MediaControllerCompatApi21.sendCommand(this.mControllerObj, str, bundle, resultReceiver);
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$MediaControllerImpl
    public boolean isSessionReady() {
        return this.mSessionToken.getExtraBinder() != null;
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$MediaControllerImpl
    public String getPackageName() {
        return MediaControllerCompatApi21.getPackageName(this.mControllerObj);
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$MediaControllerImpl
    public Object getMediaController() {
        return this.mControllerObj;
    }

    private void requestExtraBinder() {
        sendCommand("android.support.v4.media.session.command.GET_EXTRA_BINDER", null, new MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver(this));
    }

    @GuardedBy("mLock")
    void processPendingCallbacksLocked() {
        if (this.mSessionToken.getExtraBinder() == null) {
            return;
        }
        for (MediaControllerCompat$Callback mediaControllerCompat$Callback : this.mPendingCallbacks) {
            MediaControllerCompat$MediaControllerImplApi21$ExtraCallback mediaControllerCompat$MediaControllerImplApi21$ExtraCallback = new MediaControllerCompat$MediaControllerImplApi21$ExtraCallback(mediaControllerCompat$Callback);
            this.mCallbackMap.put(mediaControllerCompat$Callback, mediaControllerCompat$MediaControllerImplApi21$ExtraCallback);
            mediaControllerCompat$Callback.mIControllerCallback = mediaControllerCompat$MediaControllerImplApi21$ExtraCallback;
            try {
                this.mSessionToken.getExtraBinder().registerCallbackListener(mediaControllerCompat$MediaControllerImplApi21$ExtraCallback);
                mediaControllerCompat$Callback.postToHandler(13, null, null);
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in registerCallback.", e);
            }
        }
        this.mPendingCallbacks.clear();
    }
}
