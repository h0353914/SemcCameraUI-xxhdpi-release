package android.support.v4.media.session;

import android.net.Uri;
import android.os.Bundle;
import android.support.v4.media.RatingCompat;

class MediaControllerCompat$TransportControlsApi21 extends MediaControllerCompat$TransportControls {
    protected final Object mControlsObj;

    public MediaControllerCompat$TransportControlsApi21(Object obj) {
        this.mControlsObj = obj;
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$TransportControls
    public void prepare() {
        sendCustomAction("android.support.v4.media.session.action.PREPARE", (Bundle) null);
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$TransportControls
    public void prepareFromMediaId(String str, Bundle bundle) {
        Bundle bundle2 = new Bundle();
        bundle2.putString("android.support.v4.media.session.action.ARGUMENT_MEDIA_ID", str);
        bundle2.putBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS", bundle);
        sendCustomAction("android.support.v4.media.session.action.PREPARE_FROM_MEDIA_ID", bundle2);
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$TransportControls
    public void prepareFromSearch(String str, Bundle bundle) {
        Bundle bundle2 = new Bundle();
        bundle2.putString("android.support.v4.media.session.action.ARGUMENT_QUERY", str);
        bundle2.putBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS", bundle);
        sendCustomAction("android.support.v4.media.session.action.PREPARE_FROM_SEARCH", bundle2);
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$TransportControls
    public void prepareFromUri(Uri uri, Bundle bundle) {
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable("android.support.v4.media.session.action.ARGUMENT_URI", uri);
        bundle2.putBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS", bundle);
        sendCustomAction("android.support.v4.media.session.action.PREPARE_FROM_URI", bundle2);
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$TransportControls
    public void play() {
        MediaControllerCompatApi21$TransportControls.play(this.mControlsObj);
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$TransportControls
    public void pause() {
        MediaControllerCompatApi21$TransportControls.pause(this.mControlsObj);
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$TransportControls
    public void stop() {
        MediaControllerCompatApi21$TransportControls.stop(this.mControlsObj);
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$TransportControls
    public void seekTo(long j) {
        MediaControllerCompatApi21$TransportControls.seekTo(this.mControlsObj, j);
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$TransportControls
    public void fastForward() {
        MediaControllerCompatApi21$TransportControls.fastForward(this.mControlsObj);
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$TransportControls
    public void rewind() {
        MediaControllerCompatApi21$TransportControls.rewind(this.mControlsObj);
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$TransportControls
    public void skipToNext() {
        MediaControllerCompatApi21$TransportControls.skipToNext(this.mControlsObj);
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$TransportControls
    public void skipToPrevious() {
        MediaControllerCompatApi21$TransportControls.skipToPrevious(this.mControlsObj);
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$TransportControls
    public void setRating(RatingCompat ratingCompat) {
        MediaControllerCompatApi21$TransportControls.setRating(this.mControlsObj, ratingCompat != null ? ratingCompat.getRating() : null);
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$TransportControls
    public void setRating(RatingCompat ratingCompat, Bundle bundle) {
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable("android.support.v4.media.session.action.ARGUMENT_RATING", ratingCompat);
        bundle2.putBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS", bundle);
        sendCustomAction("android.support.v4.media.session.action.SET_RATING", bundle2);
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$TransportControls
    public void setCaptioningEnabled(boolean z) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("android.support.v4.media.session.action.ARGUMENT_CAPTIONING_ENABLED", z);
        sendCustomAction("android.support.v4.media.session.action.SET_CAPTIONING_ENABLED", bundle);
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$TransportControls
    public void setRepeatMode(int i) {
        Bundle bundle = new Bundle();
        bundle.putInt("android.support.v4.media.session.action.ARGUMENT_REPEAT_MODE", i);
        sendCustomAction("android.support.v4.media.session.action.SET_REPEAT_MODE", bundle);
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$TransportControls
    public void setShuffleMode(int i) {
        Bundle bundle = new Bundle();
        bundle.putInt("android.support.v4.media.session.action.ARGUMENT_SHUFFLE_MODE", i);
        sendCustomAction("android.support.v4.media.session.action.SET_SHUFFLE_MODE", bundle);
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$TransportControls
    public void playFromMediaId(String str, Bundle bundle) {
        MediaControllerCompatApi21$TransportControls.playFromMediaId(this.mControlsObj, str, bundle);
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$TransportControls
    public void playFromSearch(String str, Bundle bundle) {
        MediaControllerCompatApi21$TransportControls.playFromSearch(this.mControlsObj, str, bundle);
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$TransportControls
    public void playFromUri(Uri uri, Bundle bundle) {
        if (uri == null || Uri.EMPTY.equals(uri)) {
            throw new IllegalArgumentException("You must specify a non-empty Uri for playFromUri.");
        }
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable("android.support.v4.media.session.action.ARGUMENT_URI", uri);
        bundle2.putBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS", bundle);
        sendCustomAction("android.support.v4.media.session.action.PLAY_FROM_URI", bundle2);
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$TransportControls
    public void skipToQueueItem(long j) {
        MediaControllerCompatApi21$TransportControls.skipToQueueItem(this.mControlsObj, j);
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$TransportControls
    public void sendCustomAction(PlaybackStateCompat$CustomAction playbackStateCompat$CustomAction, Bundle bundle) {
        MediaControllerCompat.validateCustomAction(playbackStateCompat$CustomAction.getAction(), bundle);
        MediaControllerCompatApi21$TransportControls.sendCustomAction(this.mControlsObj, playbackStateCompat$CustomAction.getAction(), bundle);
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$TransportControls
    public void sendCustomAction(String str, Bundle bundle) {
        MediaControllerCompat.validateCustomAction(str, bundle);
        MediaControllerCompatApi21$TransportControls.sendCustomAction(this.mControlsObj, str, bundle);
    }
}
