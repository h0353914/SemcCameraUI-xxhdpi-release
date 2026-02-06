package android.support.v4.media.session;

import android.content.Intent;
import android.net.Uri;
import android.os.BadParcelableException;
import android.os.Bundle;
import android.os.IBinder;
import android.os.ResultReceiver;
import android.support.annotation.RequiresApi;
import android.support.v4.app.BundleCompat;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.RatingCompat;
import android.util.Log;

@RequiresApi(21)
class MediaSessionCompat$Callback$StubApi21 implements MediaSessionCompatApi21$Callback {
    final /* synthetic */ MediaSessionCompat$Callback this$0;

    @Override // android.support.v4.media.session.MediaSessionCompatApi21$Callback
    public void onSetRating(Object obj, Bundle bundle) {
    }

    MediaSessionCompat$Callback$StubApi21(MediaSessionCompat$Callback mediaSessionCompat$Callback) {
        this.this$0 = mediaSessionCompat$Callback;
    }

    @Override // android.support.v4.media.session.MediaSessionCompatApi21$Callback
    public void onCommand(String str, Bundle bundle, ResultReceiver resultReceiver) {
        try {
            MediaSessionCompat$QueueItem mediaSessionCompat$QueueItem = null;
            IBinder iBinderAsBinder = null;
            mediaSessionCompat$QueueItem = null;
            if (str.equals("android.support.v4.media.session.command.GET_EXTRA_BINDER")) {
                MediaSessionCompat$MediaSessionImplApi21 mediaSessionCompat$MediaSessionImplApi21 = (MediaSessionCompat$MediaSessionImplApi21) this.this$0.mSessionImpl.get();
                if (mediaSessionCompat$MediaSessionImplApi21 != null) {
                    Bundle bundle2 = new Bundle();
                    MediaSessionCompat$Token sessionToken = mediaSessionCompat$MediaSessionImplApi21.getSessionToken();
                    IMediaSession extraBinder = sessionToken.getExtraBinder();
                    if (extraBinder != null) {
                        iBinderAsBinder = extraBinder.asBinder();
                    }
                    BundleCompat.putBinder(bundle2, "android.support.v4.media.session.EXTRA_BINDER", iBinderAsBinder);
                    bundle2.putBundle("android.support.v4.media.session.SESSION_TOKEN2_BUNDLE", sessionToken.getSessionToken2Bundle());
                    resultReceiver.send(0, bundle2);
                    return;
                }
                return;
            }
            if (str.equals("android.support.v4.media.session.command.ADD_QUEUE_ITEM")) {
                this.this$0.onAddQueueItem((MediaDescriptionCompat) bundle.getParcelable("android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"));
                return;
            }
            if (str.equals("android.support.v4.media.session.command.ADD_QUEUE_ITEM_AT")) {
                this.this$0.onAddQueueItem((MediaDescriptionCompat) bundle.getParcelable("android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"), bundle.getInt("android.support.v4.media.session.command.ARGUMENT_INDEX"));
                return;
            }
            if (str.equals("android.support.v4.media.session.command.REMOVE_QUEUE_ITEM")) {
                this.this$0.onRemoveQueueItem((MediaDescriptionCompat) bundle.getParcelable("android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"));
                return;
            }
            if (str.equals("android.support.v4.media.session.command.REMOVE_QUEUE_ITEM_AT")) {
                MediaSessionCompat$MediaSessionImplApi21 mediaSessionCompat$MediaSessionImplApi212 = (MediaSessionCompat$MediaSessionImplApi21) this.this$0.mSessionImpl.get();
                if (mediaSessionCompat$MediaSessionImplApi212 == null || mediaSessionCompat$MediaSessionImplApi212.mQueue == null) {
                    return;
                }
                int i = bundle.getInt("android.support.v4.media.session.command.ARGUMENT_INDEX", -1);
                if (i >= 0 && i < mediaSessionCompat$MediaSessionImplApi212.mQueue.size()) {
                    mediaSessionCompat$QueueItem = mediaSessionCompat$MediaSessionImplApi212.mQueue.get(i);
                }
                if (mediaSessionCompat$QueueItem != null) {
                    this.this$0.onRemoveQueueItem(mediaSessionCompat$QueueItem.getDescription());
                    return;
                }
                return;
            }
            this.this$0.onCommand(str, bundle, resultReceiver);
        } catch (BadParcelableException unused) {
            Log.e("MediaSessionCompat", "Could not unparcel the extra data.");
        }
    }

    @Override // android.support.v4.media.session.MediaSessionCompatApi21$Callback
    public boolean onMediaButtonEvent(Intent intent) {
        return this.this$0.onMediaButtonEvent(intent);
    }

    @Override // android.support.v4.media.session.MediaSessionCompatApi21$Callback
    public void onPlay() {
        this.this$0.onPlay();
    }

    @Override // android.support.v4.media.session.MediaSessionCompatApi21$Callback
    public void onPlayFromMediaId(String str, Bundle bundle) {
        this.this$0.onPlayFromMediaId(str, bundle);
    }

    @Override // android.support.v4.media.session.MediaSessionCompatApi21$Callback
    public void onPlayFromSearch(String str, Bundle bundle) {
        this.this$0.onPlayFromSearch(str, bundle);
    }

    @Override // android.support.v4.media.session.MediaSessionCompatApi21$Callback
    public void onSkipToQueueItem(long j) {
        this.this$0.onSkipToQueueItem(j);
    }

    @Override // android.support.v4.media.session.MediaSessionCompatApi21$Callback
    public void onPause() {
        this.this$0.onPause();
    }

    @Override // android.support.v4.media.session.MediaSessionCompatApi21$Callback
    public void onSkipToNext() {
        this.this$0.onSkipToNext();
    }

    @Override // android.support.v4.media.session.MediaSessionCompatApi21$Callback
    public void onSkipToPrevious() {
        this.this$0.onSkipToPrevious();
    }

    @Override // android.support.v4.media.session.MediaSessionCompatApi21$Callback
    public void onFastForward() {
        this.this$0.onFastForward();
    }

    @Override // android.support.v4.media.session.MediaSessionCompatApi21$Callback
    public void onRewind() {
        this.this$0.onRewind();
    }

    @Override // android.support.v4.media.session.MediaSessionCompatApi21$Callback
    public void onStop() {
        this.this$0.onStop();
    }

    @Override // android.support.v4.media.session.MediaSessionCompatApi21$Callback
    public void onSeekTo(long j) {
        this.this$0.onSeekTo(j);
    }

    @Override // android.support.v4.media.session.MediaSessionCompatApi21$Callback
    public void onSetRating(Object obj) {
        this.this$0.onSetRating(RatingCompat.fromRating(obj));
    }

    @Override // android.support.v4.media.session.MediaSessionCompatApi21$Callback
    public void onCustomAction(String str, Bundle bundle) {
        Bundle bundle2 = bundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS");
        MediaSessionCompat.ensureClassLoader(bundle2);
        if (str.equals("android.support.v4.media.session.action.PLAY_FROM_URI")) {
            this.this$0.onPlayFromUri((Uri) bundle.getParcelable("android.support.v4.media.session.action.ARGUMENT_URI"), bundle2);
            return;
        }
        if (str.equals("android.support.v4.media.session.action.PREPARE")) {
            this.this$0.onPrepare();
            return;
        }
        if (str.equals("android.support.v4.media.session.action.PREPARE_FROM_MEDIA_ID")) {
            this.this$0.onPrepareFromMediaId(bundle.getString("android.support.v4.media.session.action.ARGUMENT_MEDIA_ID"), bundle2);
            return;
        }
        if (str.equals("android.support.v4.media.session.action.PREPARE_FROM_SEARCH")) {
            this.this$0.onPrepareFromSearch(bundle.getString("android.support.v4.media.session.action.ARGUMENT_QUERY"), bundle2);
            return;
        }
        if (str.equals("android.support.v4.media.session.action.PREPARE_FROM_URI")) {
            this.this$0.onPrepareFromUri((Uri) bundle.getParcelable("android.support.v4.media.session.action.ARGUMENT_URI"), bundle2);
            return;
        }
        if (str.equals("android.support.v4.media.session.action.SET_CAPTIONING_ENABLED")) {
            this.this$0.onSetCaptioningEnabled(bundle.getBoolean("android.support.v4.media.session.action.ARGUMENT_CAPTIONING_ENABLED"));
            return;
        }
        if (str.equals("android.support.v4.media.session.action.SET_REPEAT_MODE")) {
            this.this$0.onSetRepeatMode(bundle.getInt("android.support.v4.media.session.action.ARGUMENT_REPEAT_MODE"));
        } else if (str.equals("android.support.v4.media.session.action.SET_SHUFFLE_MODE")) {
            this.this$0.onSetShuffleMode(bundle.getInt("android.support.v4.media.session.action.ARGUMENT_SHUFFLE_MODE"));
        } else if (str.equals("android.support.v4.media.session.action.SET_RATING")) {
            this.this$0.onSetRating((RatingCompat) bundle.getParcelable("android.support.v4.media.session.action.ARGUMENT_RATING"), bundle2);
        } else {
            this.this$0.onCustomAction(str, bundle);
        }
    }
}
