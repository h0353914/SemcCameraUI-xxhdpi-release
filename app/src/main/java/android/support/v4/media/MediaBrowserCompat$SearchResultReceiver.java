package android.support.v4.media;

import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.os.ResultReceiver;
import java.util.ArrayList;

class MediaBrowserCompat$SearchResultReceiver extends ResultReceiver {
    private final MediaBrowserCompat$SearchCallback mCallback;
    private final Bundle mExtras;
    private final String mQuery;

    MediaBrowserCompat$SearchResultReceiver(String str, Bundle bundle, MediaBrowserCompat$SearchCallback mediaBrowserCompat$SearchCallback, Handler handler) {
        super(handler);
        this.mQuery = str;
        this.mExtras = bundle;
        this.mCallback = mediaBrowserCompat$SearchCallback;
    }

    @Override // android.support.v4.os.ResultReceiver
    protected void onReceiveResult(int i, Bundle bundle) {
        MediaSessionCompat.ensureClassLoader(bundle);
        if (i != 0 || bundle == null || !bundle.containsKey("search_results")) {
            this.mCallback.onError(this.mQuery, this.mExtras);
            return;
        }
        Parcelable[] parcelableArray = bundle.getParcelableArray("search_results");
        ArrayList arrayList = null;
        if (parcelableArray != null) {
            arrayList = new ArrayList();
            for (Parcelable parcelable : parcelableArray) {
                arrayList.add((MediaBrowserCompat$MediaItem) parcelable);
            }
        }
        this.mCallback.onSearchResult(this.mQuery, this.mExtras, arrayList);
    }
}
