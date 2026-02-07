package android.support.v4.media.session;

import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.v4.media.RatingCompat;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
class MediaControllerCompat$TransportControlsBase extends MediaControllerCompat$TransportControls {
    private IMediaSession mBinder;

    public MediaControllerCompat$TransportControlsBase(IMediaSession iMediaSession) {
        this.mBinder = iMediaSession;
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$TransportControls
    public void prepare() {
        try {
            this.mBinder.prepare();
        } catch (RemoteException e) {
            Log.e("MediaControllerCompat", "Dead object in prepare.", e);
        }
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$TransportControls
    public void prepareFromMediaId(String str, Bundle bundle) {
        try {
            this.mBinder.prepareFromMediaId(str, bundle);
        } catch (RemoteException e) {
            Log.e("MediaControllerCompat", "Dead object in prepareFromMediaId.", e);
        }
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$TransportControls
    public void prepareFromSearch(String str, Bundle bundle) {
        try {
            this.mBinder.prepareFromSearch(str, bundle);
        } catch (RemoteException e) {
            Log.e("MediaControllerCompat", "Dead object in prepareFromSearch.", e);
        }
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$TransportControls
    public void prepareFromUri(Uri uri, Bundle bundle) {
        try {
            this.mBinder.prepareFromUri(uri, bundle);
        } catch (RemoteException e) {
            Log.e("MediaControllerCompat", "Dead object in prepareFromUri.", e);
        }
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$TransportControls
    public void play() {
        try {
            this.mBinder.play();
        } catch (RemoteException e) {
            Log.e("MediaControllerCompat", "Dead object in play.", e);
        }
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$TransportControls
    public void playFromMediaId(String str, Bundle bundle) {
        try {
            this.mBinder.playFromMediaId(str, bundle);
        } catch (RemoteException e) {
            Log.e("MediaControllerCompat", "Dead object in playFromMediaId.", e);
        }
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$TransportControls
    public void playFromSearch(String str, Bundle bundle) {
        try {
            this.mBinder.playFromSearch(str, bundle);
        } catch (RemoteException e) {
            Log.e("MediaControllerCompat", "Dead object in playFromSearch.", e);
        }
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$TransportControls
    public void playFromUri(Uri uri, Bundle bundle) {
        try {
            this.mBinder.playFromUri(uri, bundle);
        } catch (RemoteException e) {
            Log.e("MediaControllerCompat", "Dead object in playFromUri.", e);
        }
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$TransportControls
    public void skipToQueueItem(long j) {
        try {
            this.mBinder.skipToQueueItem(j);
        } catch (RemoteException e) {
            Log.e("MediaControllerCompat", "Dead object in skipToQueueItem.", e);
        }
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$TransportControls
    public void pause() {
        try {
            this.mBinder.pause();
        } catch (RemoteException e) {
            Log.e("MediaControllerCompat", "Dead object in pause.", e);
        }
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$TransportControls
    public void stop() {
        try {
            this.mBinder.stop();
        } catch (RemoteException e) {
            Log.e("MediaControllerCompat", "Dead object in stop.", e);
        }
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$TransportControls
    public void seekTo(long j) {
        try {
            this.mBinder.seekTo(j);
        } catch (RemoteException e) {
            Log.e("MediaControllerCompat", "Dead object in seekTo.", e);
        }
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$TransportControls
    public void fastForward() {
        try {
            this.mBinder.fastForward();
        } catch (RemoteException e) {
            Log.e("MediaControllerCompat", "Dead object in fastForward.", e);
        }
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$TransportControls
    public void skipToNext() {
        try {
            this.mBinder.next();
        } catch (RemoteException e) {
            Log.e("MediaControllerCompat", "Dead object in skipToNext.", e);
        }
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$TransportControls
    public void rewind() {
        try {
            this.mBinder.rewind();
        } catch (RemoteException e) {
            Log.e("MediaControllerCompat", "Dead object in rewind.", e);
        }
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$TransportControls
    public void skipToPrevious() {
        try {
            this.mBinder.previous();
        } catch (RemoteException e) {
            Log.e("MediaControllerCompat", "Dead object in skipToPrevious.", e);
        }
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$TransportControls
    public void setRating(RatingCompat ratingCompat) {
        try {
            this.mBinder.rate(ratingCompat);
        } catch (RemoteException e) {
            Log.e("MediaControllerCompat", "Dead object in setRating.", e);
        }
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$TransportControls
    public void setRating(RatingCompat ratingCompat, Bundle bundle) {
        try {
            this.mBinder.rateWithExtras(ratingCompat, bundle);
        } catch (RemoteException e) {
            Log.e("MediaControllerCompat", "Dead object in setRating.", e);
        }
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$TransportControls
    public void setCaptioningEnabled(boolean z) {
        try {
            this.mBinder.setCaptioningEnabled(z);
        } catch (RemoteException e) {
            Log.e("MediaControllerCompat", "Dead object in setCaptioningEnabled.", e);
        }
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$TransportControls
    public void setRepeatMode(int i) {
        try {
            this.mBinder.setRepeatMode(i);
        } catch (RemoteException e) {
            Log.e("MediaControllerCompat", "Dead object in setRepeatMode.", e);
        }
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$TransportControls
    public void setShuffleMode(int i) {
        try {
            this.mBinder.setShuffleMode(i);
        } catch (RemoteException e) {
            Log.e("MediaControllerCompat", "Dead object in setShuffleMode.", e);
        }
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$TransportControls
    public void sendCustomAction(PlaybackStateCompat$CustomAction playbackStateCompat$CustomAction, Bundle bundle) {
        sendCustomAction(playbackStateCompat$CustomAction.getAction(), bundle);
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$TransportControls
    public void sendCustomAction(String str, Bundle bundle) {
        MediaControllerCompat.validateCustomAction(str, bundle);
        try {
            this.mBinder.sendCustomAction(str, bundle);
        } catch (RemoteException e) {
            Log.e("MediaControllerCompat", "Dead object in sendCustomAction.", e);
        }
    }
}
