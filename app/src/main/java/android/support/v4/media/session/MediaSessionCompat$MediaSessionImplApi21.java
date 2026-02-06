package android.support.v4.media.session;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.support.annotation.RequiresApi;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.MediaSessionManager$RemoteUserInfo;
import android.support.v4.media.VolumeProviderCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@RequiresApi(21)
class MediaSessionCompat$MediaSessionImplApi21 implements MediaSessionCompat$MediaSessionImpl {
    boolean mCaptioningEnabled;
    boolean mDestroyed = false;
    final RemoteCallbackList<IMediaControllerCallback> mExtraControllerCallbacks = new RemoteCallbackList<>();
    MediaMetadataCompat mMetadata;
    PlaybackStateCompat mPlaybackState;
    List<MediaSessionCompat$QueueItem> mQueue;
    int mRatingType;
    int mRepeatMode;
    final Object mSessionObj;
    int mShuffleMode;
    final MediaSessionCompat$Token mToken;

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    public MediaSessionManager$RemoteUserInfo getCurrentControllerInfo() {
        return null;
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    public Object getRemoteControlClient() {
        return null;
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    public void setCurrentControllerInfo(MediaSessionManager$RemoteUserInfo mediaSessionManager$RemoteUserInfo) {
    }

    MediaSessionCompat$MediaSessionImplApi21(Context context, String str, Bundle bundle) {
        this.mSessionObj = MediaSessionCompatApi21.createSession(context, str);
        this.mToken = new MediaSessionCompat$Token(MediaSessionCompatApi21.getSessionToken(this.mSessionObj), new MediaSessionCompat$MediaSessionImplApi21$ExtraSession(this), bundle);
    }

    MediaSessionCompat$MediaSessionImplApi21(Object obj) {
        this.mSessionObj = MediaSessionCompatApi21.verifySession(obj);
        this.mToken = new MediaSessionCompat$Token(MediaSessionCompatApi21.getSessionToken(this.mSessionObj), new MediaSessionCompat$MediaSessionImplApi21$ExtraSession(this));
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    public void setCallback(MediaSessionCompat$Callback mediaSessionCompat$Callback, Handler handler) {
        MediaSessionCompatApi21.setCallback(this.mSessionObj, mediaSessionCompat$Callback == null ? null : mediaSessionCompat$Callback.mCallbackObj, handler);
        if (mediaSessionCompat$Callback != null) {
            mediaSessionCompat$Callback.setSessionImpl(this, handler);
        }
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    public void setFlags(int i) {
        MediaSessionCompatApi21.setFlags(this.mSessionObj, i);
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    public void setPlaybackToLocal(int i) {
        MediaSessionCompatApi21.setPlaybackToLocal(this.mSessionObj, i);
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    public void setPlaybackToRemote(VolumeProviderCompat volumeProviderCompat) {
        MediaSessionCompatApi21.setPlaybackToRemote(this.mSessionObj, volumeProviderCompat.getVolumeProvider());
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    public void setActive(boolean z) {
        MediaSessionCompatApi21.setActive(this.mSessionObj, z);
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    public boolean isActive() {
        return MediaSessionCompatApi21.isActive(this.mSessionObj);
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    public void sendSessionEvent(String str, Bundle bundle) {
        if (Build$VERSION.SDK_INT < 23) {
            for (int iBeginBroadcast = this.mExtraControllerCallbacks.beginBroadcast() - 1; iBeginBroadcast >= 0; iBeginBroadcast--) {
                try {
                    ((IMediaControllerCallback) this.mExtraControllerCallbacks.getBroadcastItem(iBeginBroadcast)).onEvent(str, bundle);
                } catch (RemoteException unused) {
                }
            }
            this.mExtraControllerCallbacks.finishBroadcast();
        }
        MediaSessionCompatApi21.sendSessionEvent(this.mSessionObj, str, bundle);
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    public void release() {
        this.mDestroyed = true;
        MediaSessionCompatApi21.release(this.mSessionObj);
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    public MediaSessionCompat$Token getSessionToken() {
        return this.mToken;
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    public void setPlaybackState(PlaybackStateCompat playbackStateCompat) {
        this.mPlaybackState = playbackStateCompat;
        for (int iBeginBroadcast = this.mExtraControllerCallbacks.beginBroadcast() - 1; iBeginBroadcast >= 0; iBeginBroadcast--) {
            try {
                ((IMediaControllerCallback) this.mExtraControllerCallbacks.getBroadcastItem(iBeginBroadcast)).onPlaybackStateChanged(playbackStateCompat);
            } catch (RemoteException unused) {
            }
        }
        this.mExtraControllerCallbacks.finishBroadcast();
        MediaSessionCompatApi21.setPlaybackState(this.mSessionObj, playbackStateCompat == null ? null : playbackStateCompat.getPlaybackState());
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    public PlaybackStateCompat getPlaybackState() {
        return this.mPlaybackState;
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    public void setMetadata(MediaMetadataCompat mediaMetadataCompat) {
        this.mMetadata = mediaMetadataCompat;
        MediaSessionCompatApi21.setMetadata(this.mSessionObj, mediaMetadataCompat == null ? null : mediaMetadataCompat.getMediaMetadata());
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    public void setSessionActivity(PendingIntent pendingIntent) {
        MediaSessionCompatApi21.setSessionActivity(this.mSessionObj, pendingIntent);
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    public void setMediaButtonReceiver(PendingIntent pendingIntent) {
        MediaSessionCompatApi21.setMediaButtonReceiver(this.mSessionObj, pendingIntent);
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    public void setQueue(List<MediaSessionCompat$QueueItem> list) {
        ArrayList arrayList;
        this.mQueue = list;
        if (list != null) {
            arrayList = new ArrayList();
            Iterator<MediaSessionCompat$QueueItem> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().getQueueItem());
            }
        } else {
            arrayList = null;
        }
        MediaSessionCompatApi21.setQueue(this.mSessionObj, arrayList);
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    public void setQueueTitle(CharSequence charSequence) {
        MediaSessionCompatApi21.setQueueTitle(this.mSessionObj, charSequence);
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    public void setRatingType(int i) {
        if (Build$VERSION.SDK_INT < 22) {
            this.mRatingType = i;
        } else {
            MediaSessionCompatApi22.setRatingType(this.mSessionObj, i);
        }
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    public void setCaptioningEnabled(boolean z) {
        if (this.mCaptioningEnabled != z) {
            this.mCaptioningEnabled = z;
            for (int iBeginBroadcast = this.mExtraControllerCallbacks.beginBroadcast() - 1; iBeginBroadcast >= 0; iBeginBroadcast--) {
                try {
                    ((IMediaControllerCallback) this.mExtraControllerCallbacks.getBroadcastItem(iBeginBroadcast)).onCaptioningEnabledChanged(z);
                } catch (RemoteException unused) {
                }
            }
            this.mExtraControllerCallbacks.finishBroadcast();
        }
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    public void setRepeatMode(int i) {
        if (this.mRepeatMode != i) {
            this.mRepeatMode = i;
            for (int iBeginBroadcast = this.mExtraControllerCallbacks.beginBroadcast() - 1; iBeginBroadcast >= 0; iBeginBroadcast--) {
                try {
                    ((IMediaControllerCallback) this.mExtraControllerCallbacks.getBroadcastItem(iBeginBroadcast)).onRepeatModeChanged(i);
                } catch (RemoteException unused) {
                }
            }
            this.mExtraControllerCallbacks.finishBroadcast();
        }
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    public void setShuffleMode(int i) {
        if (this.mShuffleMode != i) {
            this.mShuffleMode = i;
            for (int iBeginBroadcast = this.mExtraControllerCallbacks.beginBroadcast() - 1; iBeginBroadcast >= 0; iBeginBroadcast--) {
                try {
                    ((IMediaControllerCallback) this.mExtraControllerCallbacks.getBroadcastItem(iBeginBroadcast)).onShuffleModeChanged(i);
                } catch (RemoteException unused) {
                }
            }
            this.mExtraControllerCallbacks.finishBroadcast();
        }
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    public void setExtras(Bundle bundle) {
        MediaSessionCompatApi21.setExtras(this.mSessionObj, bundle);
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    public Object getMediaSession() {
        return this.mSessionObj;
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    public String getCallingPackage() {
        if (Build$VERSION.SDK_INT < 24) {
            return null;
        }
        return MediaSessionCompatApi24.getCallingPackage(this.mSessionObj);
    }
}
