package android.support.v4.media;

import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.os.ResultReceiver;

class MediaBrowserCompat$ItemReceiver extends ResultReceiver {
    private final MediaBrowserCompat$ItemCallback mCallback;
    private final String mMediaId;

    MediaBrowserCompat$ItemReceiver(String str, MediaBrowserCompat$ItemCallback mediaBrowserCompat$ItemCallback, Handler handler) {
        super(handler);
        this.mMediaId = str;
        this.mCallback = mediaBrowserCompat$ItemCallback;
    }

    @Override // android.support.v4.os.ResultReceiver
    protected void onReceiveResult(int i, Bundle bundle) {
        MediaSessionCompat.ensureClassLoader(bundle);
        if (i != 0 || bundle == null || !bundle.containsKey("media_item")) {
            this.mCallback.onError(this.mMediaId);
            return;
        }
        Parcelable parcelable = bundle.getParcelable("media_item");
        if (parcelable == null || (parcelable instanceof MediaBrowserCompat$MediaItem)) {
            this.mCallback.onItemLoaded((MediaBrowserCompat$MediaItem) parcelable);
        } else {
            this.mCallback.onError(this.mMediaId);
        }
    }
}
