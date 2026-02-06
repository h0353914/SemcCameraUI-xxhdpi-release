package android.support.v4.media;

import android.os.Parcel;
import android.support.annotation.NonNull;

interface MediaBrowserCompatApi23$ItemCallback {
    void onError(@NonNull String str);

    void onItemLoaded(Parcel parcel);
}
