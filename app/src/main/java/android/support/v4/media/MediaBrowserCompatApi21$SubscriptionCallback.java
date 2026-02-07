package android.support.v4.media;

import android.support.annotation.NonNull;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
interface MediaBrowserCompatApi21$SubscriptionCallback {
    void onChildrenLoaded(@NonNull String str, List<?> list);

    void onError(@NonNull String str);
}
