package android.support.v4.media.session;

import android.net.Uri;
import android.os.Bundle;
import android.support.v4.media.RatingCompat;

/* JADX INFO: loaded from: classes.dex */
public abstract class MediaControllerCompat$TransportControls {
    public static final String EXTRA_LEGACY_STREAM_TYPE = "android.media.session.extra.LEGACY_STREAM_TYPE";

    public abstract void fastForward();

    public abstract void pause();

    public abstract void play();

    public abstract void playFromMediaId(String str, Bundle bundle);

    public abstract void playFromSearch(String str, Bundle bundle);

    public abstract void playFromUri(Uri uri, Bundle bundle);

    public abstract void prepare();

    public abstract void prepareFromMediaId(String str, Bundle bundle);

    public abstract void prepareFromSearch(String str, Bundle bundle);

    public abstract void prepareFromUri(Uri uri, Bundle bundle);

    public abstract void rewind();

    public abstract void seekTo(long j);

    public abstract void sendCustomAction(PlaybackStateCompat$CustomAction playbackStateCompat$CustomAction, Bundle bundle);

    public abstract void sendCustomAction(String str, Bundle bundle);

    public abstract void setCaptioningEnabled(boolean z);

    public abstract void setRating(RatingCompat ratingCompat);

    public abstract void setRating(RatingCompat ratingCompat, Bundle bundle);

    public abstract void setRepeatMode(int i);

    public abstract void setShuffleMode(int i);

    public abstract void skipToNext();

    public abstract void skipToPrevious();

    public abstract void skipToQueueItem(long j);

    public abstract void stop();

    MediaControllerCompat$TransportControls() {
    }
}
