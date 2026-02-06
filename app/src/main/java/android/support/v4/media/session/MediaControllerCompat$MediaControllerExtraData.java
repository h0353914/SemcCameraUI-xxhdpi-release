package android.support.v4.media.session;

import android.support.v4.app.SupportActivity$ExtraData;

class MediaControllerCompat$MediaControllerExtraData extends SupportActivity$ExtraData {
    private final MediaControllerCompat mMediaController;

    MediaControllerCompat$MediaControllerExtraData(MediaControllerCompat mediaControllerCompat) {
        this.mMediaController = mediaControllerCompat;
    }

    MediaControllerCompat getMediaController() {
        return this.mMediaController;
    }
}
