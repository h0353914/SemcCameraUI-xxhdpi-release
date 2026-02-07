package android.support.v4.media.session;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.graphics.Bitmap;
import android.media.AudioManager;
import android.media.RemoteControlClient;
import android.media.RemoteControlClient$MetadataEditor;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.MediaMetadataCompat$Builder;
import android.support.v4.media.MediaSessionManager$RemoteUserInfo;
import android.support.v4.media.VolumeProviderCompat;
import android.support.v4.media.VolumeProviderCompat$Callback;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class MediaSessionCompat$MediaSessionImplBase implements MediaSessionCompat$MediaSessionImpl {
    static final int RCC_PLAYSTATE_NONE = 0;
    final AudioManager mAudioManager;
    volatile MediaSessionCompat$Callback mCallback;
    boolean mCaptioningEnabled;
    private final Context mContext;
    Bundle mExtras;
    int mFlags;
    private MediaSessionCompat$MediaSessionImplBase$MessageHandler mHandler;
    int mLocalStream;
    private final ComponentName mMediaButtonReceiverComponentName;
    private final PendingIntent mMediaButtonReceiverIntent;
    MediaMetadataCompat mMetadata;
    final String mPackageName;
    List<MediaSessionCompat$QueueItem> mQueue;
    CharSequence mQueueTitle;
    int mRatingType;
    final RemoteControlClient mRcc;
    private MediaSessionManager$RemoteUserInfo mRemoteUserInfo;
    int mRepeatMode;
    PendingIntent mSessionActivity;
    int mShuffleMode;
    PlaybackStateCompat mState;
    private final MediaSessionCompat$MediaSessionImplBase$MediaSessionStub mStub;
    final String mTag;
    private final MediaSessionCompat$Token mToken;
    VolumeProviderCompat mVolumeProvider;
    int mVolumeType;
    final Object mLock = new Object();
    final RemoteCallbackList<IMediaControllerCallback> mControllerCallbacks = new RemoteCallbackList<>();
    boolean mDestroyed = false;
    boolean mIsActive = false;
    private boolean mIsMbrRegistered = false;
    private boolean mIsRccRegistered = false;
    private VolumeProviderCompat$Callback mVolumeCallback = new MediaSessionCompat$MediaSessionImplBase$1(this);

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    public String getCallingPackage() {
        return null;
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    public Object getMediaSession() {
        return null;
    }

    int getRccStateFromState(int i) {
        switch (i) {
            case 0:
                return 0;
            case 1:
                return 1;
            case 2:
                return 2;
            case 3:
                return 3;
            case 4:
                return 4;
            case 5:
                return 5;
            case 6:
            case 8:
                return 8;
            case 7:
                return 9;
            case 9:
                return 7;
            case 10:
            case 11:
                return 6;
            default:
                return -1;
        }
    }

    int getRccTransportControlFlagsFromActions(long j) {
        int i = (1 & j) != 0 ? 32 : 0;
        if ((2 & j) != 0) {
            i |= 16;
        }
        if ((4 & j) != 0) {
            i |= 4;
        }
        if ((8 & j) != 0) {
            i |= 2;
        }
        if ((16 & j) != 0) {
            i |= 1;
        }
        if ((32 & j) != 0) {
            i |= 128;
        }
        if ((64 & j) != 0) {
            i |= 64;
        }
        return (j & 512) != 0 ? i | 8 : i;
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    public Object getRemoteControlClient() {
        return null;
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    public void setMediaButtonReceiver(PendingIntent pendingIntent) {
    }

    public MediaSessionCompat$MediaSessionImplBase(Context context, String str, ComponentName componentName, PendingIntent pendingIntent) {
        if (componentName == null) {
            throw new IllegalArgumentException("MediaButtonReceiver component may not be null.");
        }
        this.mContext = context;
        this.mPackageName = context.getPackageName();
        this.mAudioManager = (AudioManager) context.getSystemService("audio");
        this.mTag = str;
        this.mMediaButtonReceiverComponentName = componentName;
        this.mMediaButtonReceiverIntent = pendingIntent;
        this.mStub = new MediaSessionCompat$MediaSessionImplBase$MediaSessionStub(this);
        this.mToken = new MediaSessionCompat$Token(this.mStub);
        this.mRatingType = 0;
        this.mVolumeType = 1;
        this.mLocalStream = 3;
        this.mRcc = new RemoteControlClient(pendingIntent);
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    public void setCallback(MediaSessionCompat$Callback mediaSessionCompat$Callback, Handler handler) {
        this.mCallback = mediaSessionCompat$Callback;
        if (mediaSessionCompat$Callback != null) {
            if (handler == null) {
                handler = new Handler();
            }
            synchronized (this.mLock) {
                if (this.mHandler != null) {
                    this.mHandler.removeCallbacksAndMessages(null);
                }
                this.mHandler = new MediaSessionCompat$MediaSessionImplBase$MessageHandler(this, handler.getLooper());
                this.mCallback.setSessionImpl(this, handler);
            }
        }
    }

    void postToHandler(int i, int i2, int i3, Object obj, Bundle bundle) {
        synchronized (this.mLock) {
            if (this.mHandler != null) {
                Message messageObtainMessage = this.mHandler.obtainMessage(i, i2, i3, obj);
                Bundle bundle2 = new Bundle();
                bundle2.putString("data_calling_pkg", "android.media.session.MediaController");
                bundle2.putInt("data_calling_pid", Binder.getCallingPid());
                bundle2.putInt("data_calling_uid", Binder.getCallingUid());
                if (bundle != null) {
                    bundle2.putBundle("data_extras", bundle);
                }
                messageObtainMessage.setData(bundle2);
                messageObtainMessage.sendToTarget();
            }
        }
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    public void setFlags(int i) {
        synchronized (this.mLock) {
            this.mFlags = i;
        }
        update();
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    public void setPlaybackToLocal(int i) {
        if (this.mVolumeProvider != null) {
            this.mVolumeProvider.setCallback(null);
        }
        this.mLocalStream = i;
        this.mVolumeType = 1;
        sendVolumeInfoChanged(new ParcelableVolumeInfo(this.mVolumeType, this.mLocalStream, 2, this.mAudioManager.getStreamMaxVolume(this.mLocalStream), this.mAudioManager.getStreamVolume(this.mLocalStream)));
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    public void setPlaybackToRemote(VolumeProviderCompat volumeProviderCompat) {
        if (volumeProviderCompat == null) {
            throw new IllegalArgumentException("volumeProvider may not be null");
        }
        if (this.mVolumeProvider != null) {
            this.mVolumeProvider.setCallback(null);
        }
        this.mVolumeType = 2;
        this.mVolumeProvider = volumeProviderCompat;
        sendVolumeInfoChanged(new ParcelableVolumeInfo(this.mVolumeType, this.mLocalStream, this.mVolumeProvider.getVolumeControl(), this.mVolumeProvider.getMaxVolume(), this.mVolumeProvider.getCurrentVolume()));
        volumeProviderCompat.setCallback(this.mVolumeCallback);
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    public void setActive(boolean z) {
        if (z == this.mIsActive) {
            return;
        }
        this.mIsActive = z;
        if (update()) {
            setMetadata(this.mMetadata);
            setPlaybackState(this.mState);
        }
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    public boolean isActive() {
        return this.mIsActive;
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    public void sendSessionEvent(String str, Bundle bundle) {
        sendEvent(str, bundle);
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    public void release() {
        this.mIsActive = false;
        this.mDestroyed = true;
        update();
        sendSessionDestroyed();
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    public MediaSessionCompat$Token getSessionToken() {
        return this.mToken;
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    public void setPlaybackState(PlaybackStateCompat playbackStateCompat) {
        synchronized (this.mLock) {
            this.mState = playbackStateCompat;
        }
        sendState(playbackStateCompat);
        if (this.mIsActive) {
            if (playbackStateCompat == null) {
                this.mRcc.setPlaybackState(0);
                this.mRcc.setTransportControlFlags(0);
            } else {
                setRccState(playbackStateCompat);
                this.mRcc.setTransportControlFlags(getRccTransportControlFlagsFromActions(playbackStateCompat.getActions()));
            }
        }
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    public PlaybackStateCompat getPlaybackState() {
        PlaybackStateCompat playbackStateCompat;
        synchronized (this.mLock) {
            playbackStateCompat = this.mState;
        }
        return playbackStateCompat;
    }

    void setRccState(PlaybackStateCompat playbackStateCompat) {
        this.mRcc.setPlaybackState(getRccStateFromState(playbackStateCompat.getState()));
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    public void setMetadata(MediaMetadataCompat mediaMetadataCompat) {
        if (mediaMetadataCompat != null) {
            mediaMetadataCompat = new MediaMetadataCompat$Builder(mediaMetadataCompat, MediaSessionCompat.sMaxBitmapSize).build();
        }
        synchronized (this.mLock) {
            this.mMetadata = mediaMetadataCompat;
        }
        sendMetadata(mediaMetadataCompat);
        if (this.mIsActive) {
            buildRccMetadata(mediaMetadataCompat == null ? null : mediaMetadataCompat.getBundle()).apply();
        }
    }

    RemoteControlClient$MetadataEditor buildRccMetadata(Bundle bundle) {
        RemoteControlClient$MetadataEditor remoteControlClient$MetadataEditorEditMetadata = this.mRcc.editMetadata(true);
        if (bundle == null) {
            return remoteControlClient$MetadataEditorEditMetadata;
        }
        if (bundle.containsKey("android.media.metadata.ART")) {
            Bitmap bitmapCopy = (Bitmap) bundle.getParcelable("android.media.metadata.ART");
            if (bitmapCopy != null) {
                bitmapCopy = bitmapCopy.copy(bitmapCopy.getConfig(), false);
            }
            remoteControlClient$MetadataEditorEditMetadata.putBitmap(100, bitmapCopy);
        } else if (bundle.containsKey("android.media.metadata.ALBUM_ART")) {
            Bitmap bitmapCopy2 = (Bitmap) bundle.getParcelable("android.media.metadata.ALBUM_ART");
            if (bitmapCopy2 != null) {
                bitmapCopy2 = bitmapCopy2.copy(bitmapCopy2.getConfig(), false);
            }
            remoteControlClient$MetadataEditorEditMetadata.putBitmap(100, bitmapCopy2);
        }
        if (bundle.containsKey("android.media.metadata.ALBUM")) {
            remoteControlClient$MetadataEditorEditMetadata.putString(1, bundle.getString("android.media.metadata.ALBUM"));
        }
        if (bundle.containsKey("android.media.metadata.ALBUM_ARTIST")) {
            remoteControlClient$MetadataEditorEditMetadata.putString(13, bundle.getString("android.media.metadata.ALBUM_ARTIST"));
        }
        if (bundle.containsKey("android.media.metadata.ARTIST")) {
            remoteControlClient$MetadataEditorEditMetadata.putString(2, bundle.getString("android.media.metadata.ARTIST"));
        }
        if (bundle.containsKey("android.media.metadata.AUTHOR")) {
            remoteControlClient$MetadataEditorEditMetadata.putString(3, bundle.getString("android.media.metadata.AUTHOR"));
        }
        if (bundle.containsKey("android.media.metadata.COMPILATION")) {
            remoteControlClient$MetadataEditorEditMetadata.putString(15, bundle.getString("android.media.metadata.COMPILATION"));
        }
        if (bundle.containsKey("android.media.metadata.COMPOSER")) {
            remoteControlClient$MetadataEditorEditMetadata.putString(4, bundle.getString("android.media.metadata.COMPOSER"));
        }
        if (bundle.containsKey("android.media.metadata.DATE")) {
            remoteControlClient$MetadataEditorEditMetadata.putString(5, bundle.getString("android.media.metadata.DATE"));
        }
        if (bundle.containsKey("android.media.metadata.DISC_NUMBER")) {
            remoteControlClient$MetadataEditorEditMetadata.putLong(14, bundle.getLong("android.media.metadata.DISC_NUMBER"));
        }
        if (bundle.containsKey("android.media.metadata.DURATION")) {
            remoteControlClient$MetadataEditorEditMetadata.putLong(9, bundle.getLong("android.media.metadata.DURATION"));
        }
        if (bundle.containsKey("android.media.metadata.GENRE")) {
            remoteControlClient$MetadataEditorEditMetadata.putString(6, bundle.getString("android.media.metadata.GENRE"));
        }
        if (bundle.containsKey("android.media.metadata.TITLE")) {
            remoteControlClient$MetadataEditorEditMetadata.putString(7, bundle.getString("android.media.metadata.TITLE"));
        }
        if (bundle.containsKey("android.media.metadata.TRACK_NUMBER")) {
            remoteControlClient$MetadataEditorEditMetadata.putLong(0, bundle.getLong("android.media.metadata.TRACK_NUMBER"));
        }
        if (bundle.containsKey("android.media.metadata.WRITER")) {
            remoteControlClient$MetadataEditorEditMetadata.putString(11, bundle.getString("android.media.metadata.WRITER"));
        }
        return remoteControlClient$MetadataEditorEditMetadata;
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    public void setSessionActivity(PendingIntent pendingIntent) {
        synchronized (this.mLock) {
            this.mSessionActivity = pendingIntent;
        }
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    public void setQueue(List<MediaSessionCompat$QueueItem> list) {
        this.mQueue = list;
        sendQueue(list);
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    public void setQueueTitle(CharSequence charSequence) {
        this.mQueueTitle = charSequence;
        sendQueueTitle(charSequence);
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    public void setRatingType(int i) {
        this.mRatingType = i;
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    public void setCaptioningEnabled(boolean z) {
        if (this.mCaptioningEnabled != z) {
            this.mCaptioningEnabled = z;
            sendCaptioningEnabled(z);
        }
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    public void setRepeatMode(int i) {
        if (this.mRepeatMode != i) {
            this.mRepeatMode = i;
            sendRepeatMode(i);
        }
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    public void setShuffleMode(int i) {
        if (this.mShuffleMode != i) {
            this.mShuffleMode = i;
            sendShuffleMode(i);
        }
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    public void setExtras(Bundle bundle) {
        this.mExtras = bundle;
        sendExtras(bundle);
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    public MediaSessionManager$RemoteUserInfo getCurrentControllerInfo() {
        MediaSessionManager$RemoteUserInfo mediaSessionManager$RemoteUserInfo;
        synchronized (this.mLock) {
            mediaSessionManager$RemoteUserInfo = this.mRemoteUserInfo;
        }
        return mediaSessionManager$RemoteUserInfo;
    }

    @Override // android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl
    public void setCurrentControllerInfo(MediaSessionManager$RemoteUserInfo mediaSessionManager$RemoteUserInfo) {
        synchronized (this.mLock) {
            this.mRemoteUserInfo = mediaSessionManager$RemoteUserInfo;
        }
    }

    boolean update() {
        if (this.mIsActive) {
            if (!this.mIsMbrRegistered && (this.mFlags & 1) != 0) {
                registerMediaButtonEventReceiver(this.mMediaButtonReceiverIntent, this.mMediaButtonReceiverComponentName);
                this.mIsMbrRegistered = true;
            } else if (this.mIsMbrRegistered && (this.mFlags & 1) == 0) {
                unregisterMediaButtonEventReceiver(this.mMediaButtonReceiverIntent, this.mMediaButtonReceiverComponentName);
                this.mIsMbrRegistered = false;
            }
            if (!this.mIsRccRegistered && (this.mFlags & 2) != 0) {
                this.mAudioManager.registerRemoteControlClient(this.mRcc);
                this.mIsRccRegistered = true;
                return true;
            }
            if (this.mIsRccRegistered && (this.mFlags & 2) == 0) {
                this.mRcc.setPlaybackState(0);
                this.mAudioManager.unregisterRemoteControlClient(this.mRcc);
                this.mIsRccRegistered = false;
            }
        } else {
            if (this.mIsMbrRegistered) {
                unregisterMediaButtonEventReceiver(this.mMediaButtonReceiverIntent, this.mMediaButtonReceiverComponentName);
                this.mIsMbrRegistered = false;
            }
            if (this.mIsRccRegistered) {
                this.mRcc.setPlaybackState(0);
                this.mAudioManager.unregisterRemoteControlClient(this.mRcc);
                this.mIsRccRegistered = false;
            }
        }
        return false;
    }

    void registerMediaButtonEventReceiver(PendingIntent pendingIntent, ComponentName componentName) {
        this.mAudioManager.registerMediaButtonEventReceiver(componentName);
    }

    void unregisterMediaButtonEventReceiver(PendingIntent pendingIntent, ComponentName componentName) {
        this.mAudioManager.unregisterMediaButtonEventReceiver(componentName);
    }

    void adjustVolume(int i, int i2) {
        if (this.mVolumeType == 2) {
            if (this.mVolumeProvider != null) {
                this.mVolumeProvider.onAdjustVolume(i);
                return;
            }
            return;
        }
        this.mAudioManager.adjustStreamVolume(this.mLocalStream, i, i2);
    }

    void setVolumeTo(int i, int i2) {
        if (this.mVolumeType == 2) {
            if (this.mVolumeProvider != null) {
                this.mVolumeProvider.onSetVolumeTo(i);
                return;
            }
            return;
        }
        this.mAudioManager.setStreamVolume(this.mLocalStream, i, i2);
    }

    void sendVolumeInfoChanged(ParcelableVolumeInfo parcelableVolumeInfo) {
        for (int iBeginBroadcast = this.mControllerCallbacks.beginBroadcast() - 1; iBeginBroadcast >= 0; iBeginBroadcast--) {
            try {
                ((IMediaControllerCallback) this.mControllerCallbacks.getBroadcastItem(iBeginBroadcast)).onVolumeInfoChanged(parcelableVolumeInfo);
            } catch (RemoteException unused) {
            }
        }
        this.mControllerCallbacks.finishBroadcast();
    }

    private void sendSessionDestroyed() {
        for (int iBeginBroadcast = this.mControllerCallbacks.beginBroadcast() - 1; iBeginBroadcast >= 0; iBeginBroadcast--) {
            try {
                ((IMediaControllerCallback) this.mControllerCallbacks.getBroadcastItem(iBeginBroadcast)).onSessionDestroyed();
            } catch (RemoteException unused) {
            }
        }
        this.mControllerCallbacks.finishBroadcast();
        this.mControllerCallbacks.kill();
    }

    private void sendEvent(String str, Bundle bundle) {
        for (int iBeginBroadcast = this.mControllerCallbacks.beginBroadcast() - 1; iBeginBroadcast >= 0; iBeginBroadcast--) {
            try {
                ((IMediaControllerCallback) this.mControllerCallbacks.getBroadcastItem(iBeginBroadcast)).onEvent(str, bundle);
            } catch (RemoteException unused) {
            }
        }
        this.mControllerCallbacks.finishBroadcast();
    }

    private void sendState(PlaybackStateCompat playbackStateCompat) {
        for (int iBeginBroadcast = this.mControllerCallbacks.beginBroadcast() - 1; iBeginBroadcast >= 0; iBeginBroadcast--) {
            try {
                ((IMediaControllerCallback) this.mControllerCallbacks.getBroadcastItem(iBeginBroadcast)).onPlaybackStateChanged(playbackStateCompat);
            } catch (RemoteException unused) {
            }
        }
        this.mControllerCallbacks.finishBroadcast();
    }

    private void sendMetadata(MediaMetadataCompat mediaMetadataCompat) {
        for (int iBeginBroadcast = this.mControllerCallbacks.beginBroadcast() - 1; iBeginBroadcast >= 0; iBeginBroadcast--) {
            try {
                ((IMediaControllerCallback) this.mControllerCallbacks.getBroadcastItem(iBeginBroadcast)).onMetadataChanged(mediaMetadataCompat);
            } catch (RemoteException unused) {
            }
        }
        this.mControllerCallbacks.finishBroadcast();
    }

    private void sendQueue(List<MediaSessionCompat$QueueItem> list) {
        for (int iBeginBroadcast = this.mControllerCallbacks.beginBroadcast() - 1; iBeginBroadcast >= 0; iBeginBroadcast--) {
            try {
                ((IMediaControllerCallback) this.mControllerCallbacks.getBroadcastItem(iBeginBroadcast)).onQueueChanged(list);
            } catch (RemoteException unused) {
            }
        }
        this.mControllerCallbacks.finishBroadcast();
    }

    private void sendQueueTitle(CharSequence charSequence) {
        for (int iBeginBroadcast = this.mControllerCallbacks.beginBroadcast() - 1; iBeginBroadcast >= 0; iBeginBroadcast--) {
            try {
                ((IMediaControllerCallback) this.mControllerCallbacks.getBroadcastItem(iBeginBroadcast)).onQueueTitleChanged(charSequence);
            } catch (RemoteException unused) {
            }
        }
        this.mControllerCallbacks.finishBroadcast();
    }

    private void sendCaptioningEnabled(boolean z) {
        for (int iBeginBroadcast = this.mControllerCallbacks.beginBroadcast() - 1; iBeginBroadcast >= 0; iBeginBroadcast--) {
            try {
                ((IMediaControllerCallback) this.mControllerCallbacks.getBroadcastItem(iBeginBroadcast)).onCaptioningEnabledChanged(z);
            } catch (RemoteException unused) {
            }
        }
        this.mControllerCallbacks.finishBroadcast();
    }

    private void sendRepeatMode(int i) {
        for (int iBeginBroadcast = this.mControllerCallbacks.beginBroadcast() - 1; iBeginBroadcast >= 0; iBeginBroadcast--) {
            try {
                ((IMediaControllerCallback) this.mControllerCallbacks.getBroadcastItem(iBeginBroadcast)).onRepeatModeChanged(i);
            } catch (RemoteException unused) {
            }
        }
        this.mControllerCallbacks.finishBroadcast();
    }

    private void sendShuffleMode(int i) {
        for (int iBeginBroadcast = this.mControllerCallbacks.beginBroadcast() - 1; iBeginBroadcast >= 0; iBeginBroadcast--) {
            try {
                ((IMediaControllerCallback) this.mControllerCallbacks.getBroadcastItem(iBeginBroadcast)).onShuffleModeChanged(i);
            } catch (RemoteException unused) {
            }
        }
        this.mControllerCallbacks.finishBroadcast();
    }

    private void sendExtras(Bundle bundle) {
        for (int iBeginBroadcast = this.mControllerCallbacks.beginBroadcast() - 1; iBeginBroadcast >= 0; iBeginBroadcast--) {
            try {
                ((IMediaControllerCallback) this.mControllerCallbacks.getBroadcastItem(iBeginBroadcast)).onExtrasChanged(bundle);
            } catch (RemoteException unused) {
            }
        }
        this.mControllerCallbacks.finishBroadcast();
    }
}
