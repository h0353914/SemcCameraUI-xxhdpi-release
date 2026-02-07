package android.support.v4.media.session;

import android.content.Intent;
import android.media.Rating;
import android.media.session.MediaSession$Callback;
import android.os.Bundle;
import android.os.ResultReceiver;
import android.support.v4.media.session.MediaSessionCompatApi21$Callback;

/* JADX INFO: loaded from: classes.dex */
class MediaSessionCompatApi21$CallbackProxy<T extends MediaSessionCompatApi21$Callback> extends MediaSession$Callback {
    protected final T mCallback;

    public MediaSessionCompatApi21$CallbackProxy(T t) {
        this.mCallback = t;
    }

    @Override // android.media.session.MediaSession$Callback
    public void onCommand(String str, Bundle bundle, ResultReceiver resultReceiver) {
        MediaSessionCompat.ensureClassLoader(bundle);
        this.mCallback.onCommand(str, bundle, resultReceiver);
    }

    @Override // android.media.session.MediaSession$Callback
    public boolean onMediaButtonEvent(Intent intent) {
        return this.mCallback.onMediaButtonEvent(intent) || super.onMediaButtonEvent(intent);
    }

    @Override // android.media.session.MediaSession$Callback
    public void onPlay() {
        this.mCallback.onPlay();
    }

    @Override // android.media.session.MediaSession$Callback
    public void onPlayFromMediaId(String str, Bundle bundle) {
        MediaSessionCompat.ensureClassLoader(bundle);
        this.mCallback.onPlayFromMediaId(str, bundle);
    }

    @Override // android.media.session.MediaSession$Callback
    public void onPlayFromSearch(String str, Bundle bundle) {
        MediaSessionCompat.ensureClassLoader(bundle);
        this.mCallback.onPlayFromSearch(str, bundle);
    }

    @Override // android.media.session.MediaSession$Callback
    public void onSkipToQueueItem(long j) {
        this.mCallback.onSkipToQueueItem(j);
    }

    @Override // android.media.session.MediaSession$Callback
    public void onPause() {
        this.mCallback.onPause();
    }

    @Override // android.media.session.MediaSession$Callback
    public void onSkipToNext() {
        this.mCallback.onSkipToNext();
    }

    @Override // android.media.session.MediaSession$Callback
    public void onSkipToPrevious() {
        this.mCallback.onSkipToPrevious();
    }

    @Override // android.media.session.MediaSession$Callback
    public void onFastForward() {
        this.mCallback.onFastForward();
    }

    @Override // android.media.session.MediaSession$Callback
    public void onRewind() {
        this.mCallback.onRewind();
    }

    @Override // android.media.session.MediaSession$Callback
    public void onStop() {
        this.mCallback.onStop();
    }

    @Override // android.media.session.MediaSession$Callback
    public void onSeekTo(long j) {
        this.mCallback.onSeekTo(j);
    }

    @Override // android.media.session.MediaSession$Callback
    public void onSetRating(Rating rating) {
        this.mCallback.onSetRating(rating);
    }

    @Override // android.media.session.MediaSession$Callback
    public void onCustomAction(String str, Bundle bundle) {
        MediaSessionCompat.ensureClassLoader(bundle);
        this.mCallback.onCustomAction(str, bundle);
    }
}
