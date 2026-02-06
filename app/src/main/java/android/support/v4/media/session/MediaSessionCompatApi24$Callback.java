package android.support.v4.media.session;

import android.net.Uri;
import android.os.Bundle;

public interface MediaSessionCompatApi24$Callback extends MediaSessionCompatApi23$Callback {
    void onPrepare();

    void onPrepareFromMediaId(String str, Bundle bundle);

    void onPrepareFromSearch(String str, Bundle bundle);

    void onPrepareFromUri(Uri uri, Bundle bundle);
}
