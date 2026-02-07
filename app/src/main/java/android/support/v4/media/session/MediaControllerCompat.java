package android.support.v4.media.session;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.support.v4.app.SupportActivity;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class MediaControllerCompat {

    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public static final String COMMAND_ADD_QUEUE_ITEM = "android.support.v4.media.session.command.ADD_QUEUE_ITEM";

    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public static final String COMMAND_ADD_QUEUE_ITEM_AT = "android.support.v4.media.session.command.ADD_QUEUE_ITEM_AT";

    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public static final String COMMAND_ARGUMENT_INDEX = "android.support.v4.media.session.command.ARGUMENT_INDEX";

    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public static final String COMMAND_ARGUMENT_MEDIA_DESCRIPTION = "android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION";

    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public static final String COMMAND_GET_EXTRA_BINDER = "android.support.v4.media.session.command.GET_EXTRA_BINDER";

    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public static final String COMMAND_REMOVE_QUEUE_ITEM = "android.support.v4.media.session.command.REMOVE_QUEUE_ITEM";

    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public static final String COMMAND_REMOVE_QUEUE_ITEM_AT = "android.support.v4.media.session.command.REMOVE_QUEUE_ITEM_AT";
    static final String TAG = "MediaControllerCompat";
    private final MediaControllerCompat$MediaControllerImpl mImpl;
    private final HashSet<MediaControllerCompat$Callback> mRegisteredCallbacks = new HashSet<>();
    private final MediaSessionCompat$Token mToken;

    public static void setMediaController(@NonNull Activity activity, MediaControllerCompat mediaControllerCompat) {
        if (activity instanceof SupportActivity) {
            ((SupportActivity) activity).putExtraData(new MediaControllerCompat$MediaControllerExtraData(mediaControllerCompat));
        }
        if (Build$VERSION.SDK_INT >= 21) {
            MediaControllerCompatApi21.setMediaController(activity, mediaControllerCompat != null ? MediaControllerCompatApi21.fromToken(activity, mediaControllerCompat.getSessionToken().getToken()) : null);
        }
    }

    public static MediaControllerCompat getMediaController(@NonNull Activity activity) {
        Object mediaController;
        if (activity instanceof SupportActivity) {
            MediaControllerCompat$MediaControllerExtraData mediaControllerCompat$MediaControllerExtraData = (MediaControllerCompat$MediaControllerExtraData) ((SupportActivity) activity).getExtraData(MediaControllerCompat$MediaControllerExtraData.class);
            if (mediaControllerCompat$MediaControllerExtraData != null) {
                return mediaControllerCompat$MediaControllerExtraData.getMediaController();
            }
            return null;
        }
        if (Build$VERSION.SDK_INT < 21 || (mediaController = MediaControllerCompatApi21.getMediaController(activity)) == null) {
            return null;
        }
        try {
            return new MediaControllerCompat(activity, MediaSessionCompat$Token.fromToken(MediaControllerCompatApi21.getSessionToken(mediaController)));
        } catch (RemoteException e) {
            Log.e("MediaControllerCompat", "Dead object in getMediaController.", e);
            return null;
        }
    }

    static void validateCustomAction(String str, Bundle bundle) {
        if (str == null) {
            return;
        }
        byte b = -1;
        int iHashCode = str.hashCode();
        if (iHashCode != -1348483723) {
            if (iHashCode == 503011406 && str.equals("android.support.v4.media.session.action.UNFOLLOW")) {
                b = 1;
            }
        } else if (str.equals("android.support.v4.media.session.action.FOLLOW")) {
            b = 0;
        }
        switch (b) {
            case 0:
            case 1:
                if (bundle == null || !bundle.containsKey("android.support.v4.media.session.ARGUMENT_MEDIA_ATTRIBUTE")) {
                    throw new IllegalArgumentException("An extra field android.support.v4.media.session.ARGUMENT_MEDIA_ATTRIBUTE is required for this action " + str + ".");
                }
                return;
            default:
                return;
        }
    }

    public MediaControllerCompat(Context context, @NonNull MediaSessionCompat mediaSessionCompat) {
        MediaControllerCompat$MediaControllerImpl mediaControllerCompat$MediaControllerImplApi21;
        if (mediaSessionCompat == null) {
            throw new IllegalArgumentException("session must not be null");
        }
        this.mToken = mediaSessionCompat.getSessionToken();
        MediaControllerCompat$MediaControllerImpl mediaControllerCompat$MediaControllerImplBase = null;
        try {
        } catch (RemoteException e) {
            Log.w("MediaControllerCompat", "Failed to create MediaControllerImpl.", e);
        }
        if (Build$VERSION.SDK_INT >= 24) {
            mediaControllerCompat$MediaControllerImplApi21 = new MediaControllerCompat$MediaControllerImplApi24(context, this.mToken);
        } else if (Build$VERSION.SDK_INT >= 23) {
            mediaControllerCompat$MediaControllerImplApi21 = new MediaControllerCompat$MediaControllerImplApi23(context, this.mToken);
        } else if (Build$VERSION.SDK_INT >= 21) {
            mediaControllerCompat$MediaControllerImplApi21 = new MediaControllerCompat$MediaControllerImplApi21(context, this.mToken);
        } else {
            mediaControllerCompat$MediaControllerImplBase = new MediaControllerCompat$MediaControllerImplBase(this.mToken);
            this.mImpl = mediaControllerCompat$MediaControllerImplBase;
        }
        mediaControllerCompat$MediaControllerImplBase = mediaControllerCompat$MediaControllerImplApi21;
        this.mImpl = mediaControllerCompat$MediaControllerImplBase;
    }

    public MediaControllerCompat(Context context, @NonNull MediaSessionCompat$Token mediaSessionCompat$Token) throws RemoteException {
        if (mediaSessionCompat$Token == null) {
            throw new IllegalArgumentException("sessionToken must not be null");
        }
        this.mToken = mediaSessionCompat$Token;
        if (Build$VERSION.SDK_INT >= 24) {
            this.mImpl = new MediaControllerCompat$MediaControllerImplApi24(context, mediaSessionCompat$Token);
            return;
        }
        if (Build$VERSION.SDK_INT >= 23) {
            this.mImpl = new MediaControllerCompat$MediaControllerImplApi23(context, mediaSessionCompat$Token);
        } else if (Build$VERSION.SDK_INT >= 21) {
            this.mImpl = new MediaControllerCompat$MediaControllerImplApi21(context, mediaSessionCompat$Token);
        } else {
            this.mImpl = new MediaControllerCompat$MediaControllerImplBase(mediaSessionCompat$Token);
        }
    }

    public MediaControllerCompat$TransportControls getTransportControls() {
        return this.mImpl.getTransportControls();
    }

    public boolean dispatchMediaButtonEvent(KeyEvent keyEvent) {
        if (keyEvent == null) {
            throw new IllegalArgumentException("KeyEvent may not be null");
        }
        return this.mImpl.dispatchMediaButtonEvent(keyEvent);
    }

    public PlaybackStateCompat getPlaybackState() {
        return this.mImpl.getPlaybackState();
    }

    public MediaMetadataCompat getMetadata() {
        return this.mImpl.getMetadata();
    }

    public List<MediaSessionCompat$QueueItem> getQueue() {
        return this.mImpl.getQueue();
    }

    public void addQueueItem(MediaDescriptionCompat mediaDescriptionCompat) {
        this.mImpl.addQueueItem(mediaDescriptionCompat);
    }

    public void addQueueItem(MediaDescriptionCompat mediaDescriptionCompat, int i) {
        this.mImpl.addQueueItem(mediaDescriptionCompat, i);
    }

    public void removeQueueItem(MediaDescriptionCompat mediaDescriptionCompat) {
        this.mImpl.removeQueueItem(mediaDescriptionCompat);
    }

    @Deprecated
    public void removeQueueItemAt(int i) {
        MediaSessionCompat$QueueItem mediaSessionCompat$QueueItem;
        List<MediaSessionCompat$QueueItem> queue = getQueue();
        if (queue == null || i < 0 || i >= queue.size() || (mediaSessionCompat$QueueItem = queue.get(i)) == null) {
            return;
        }
        removeQueueItem(mediaSessionCompat$QueueItem.getDescription());
    }

    public CharSequence getQueueTitle() {
        return this.mImpl.getQueueTitle();
    }

    public Bundle getExtras() {
        return this.mImpl.getExtras();
    }

    public int getRatingType() {
        return this.mImpl.getRatingType();
    }

    public boolean isCaptioningEnabled() {
        return this.mImpl.isCaptioningEnabled();
    }

    public int getRepeatMode() {
        return this.mImpl.getRepeatMode();
    }

    public int getShuffleMode() {
        return this.mImpl.getShuffleMode();
    }

    public long getFlags() {
        return this.mImpl.getFlags();
    }

    public MediaControllerCompat$PlaybackInfo getPlaybackInfo() {
        return this.mImpl.getPlaybackInfo();
    }

    public PendingIntent getSessionActivity() {
        return this.mImpl.getSessionActivity();
    }

    public MediaSessionCompat$Token getSessionToken() {
        return this.mToken;
    }

    @Nullable
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public Bundle getSessionToken2Bundle() {
        return this.mToken.getSessionToken2Bundle();
    }

    public void setVolumeTo(int i, int i2) {
        this.mImpl.setVolumeTo(i, i2);
    }

    public void adjustVolume(int i, int i2) {
        this.mImpl.adjustVolume(i, i2);
    }

    public void registerCallback(@NonNull MediaControllerCompat$Callback mediaControllerCompat$Callback) {
        registerCallback(mediaControllerCompat$Callback, null);
    }

    public void registerCallback(@NonNull MediaControllerCompat$Callback mediaControllerCompat$Callback, Handler handler) {
        if (mediaControllerCompat$Callback == null) {
            throw new IllegalArgumentException("callback must not be null");
        }
        if (handler == null) {
            handler = new Handler();
        }
        mediaControllerCompat$Callback.setHandler(handler);
        this.mImpl.registerCallback(mediaControllerCompat$Callback, handler);
        this.mRegisteredCallbacks.add(mediaControllerCompat$Callback);
    }

    public void unregisterCallback(@NonNull MediaControllerCompat$Callback mediaControllerCompat$Callback) {
        if (mediaControllerCompat$Callback == null) {
            throw new IllegalArgumentException("callback must not be null");
        }
        try {
            this.mRegisteredCallbacks.remove(mediaControllerCompat$Callback);
            this.mImpl.unregisterCallback(mediaControllerCompat$Callback);
        } finally {
            mediaControllerCompat$Callback.setHandler(null);
        }
    }

    public void sendCommand(@NonNull String str, Bundle bundle, ResultReceiver resultReceiver) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("command must neither be null nor empty");
        }
        this.mImpl.sendCommand(str, bundle, resultReceiver);
    }

    public boolean isSessionReady() {
        return this.mImpl.isSessionReady();
    }

    public String getPackageName() {
        return this.mImpl.getPackageName();
    }

    public Object getMediaController() {
        return this.mImpl.getMediaController();
    }
}
