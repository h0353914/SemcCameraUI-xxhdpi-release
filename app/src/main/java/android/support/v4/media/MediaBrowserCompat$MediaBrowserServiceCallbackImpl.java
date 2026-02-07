package android.support.v4.media;

import android.os.Bundle;
import android.os.Messenger;
import android.support.v4.media.session.MediaSessionCompat$Token;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
interface MediaBrowserCompat$MediaBrowserServiceCallbackImpl {
    void onConnectionFailed(Messenger messenger);

    void onLoadChildren(Messenger messenger, String str, List list, Bundle bundle, Bundle bundle2);

    void onServiceConnected(Messenger messenger, String str, MediaSessionCompat$Token mediaSessionCompat$Token, Bundle bundle);
}
