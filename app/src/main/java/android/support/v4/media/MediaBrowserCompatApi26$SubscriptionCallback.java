package android.support.v4.media;

import android.os.Bundle;
import android.support.annotation.NonNull;
import java.util.List;

interface MediaBrowserCompatApi26$SubscriptionCallback extends MediaBrowserCompatApi21$SubscriptionCallback {
    void onChildrenLoaded(@NonNull String str, List<?> list, @NonNull Bundle bundle);

    void onError(@NonNull String str, @NonNull Bundle bundle);
}
