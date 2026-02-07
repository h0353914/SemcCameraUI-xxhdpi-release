package android.support.v4.media;

import android.os.Bundle;
import android.os.Handler;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.os.ResultReceiver;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
class MediaBrowserCompat$CustomActionResultReceiver extends ResultReceiver {
    private final String mAction;
    private final MediaBrowserCompat$CustomActionCallback mCallback;
    private final Bundle mExtras;

    MediaBrowserCompat$CustomActionResultReceiver(String str, Bundle bundle, MediaBrowserCompat$CustomActionCallback mediaBrowserCompat$CustomActionCallback, Handler handler) {
        super(handler);
        this.mAction = str;
        this.mExtras = bundle;
        this.mCallback = mediaBrowserCompat$CustomActionCallback;
    }

    @Override // android.support.v4.os.ResultReceiver
    protected void onReceiveResult(int i, Bundle bundle) {
        if (this.mCallback == null) {
        }
        MediaSessionCompat.ensureClassLoader(bundle);
        switch (i) {
            case -1:
                this.mCallback.onError(this.mAction, this.mExtras, bundle);
                break;
            case 0:
                this.mCallback.onResult(this.mAction, this.mExtras, bundle);
                break;
            case 1:
                this.mCallback.onProgressUpdate(this.mAction, this.mExtras, bundle);
                break;
            default:
                Log.w("MediaBrowserCompat", "Unknown result code: " + i + " (extras=" + this.mExtras + ", resultData=" + bundle + ")");
                break;
        }
    }
}
