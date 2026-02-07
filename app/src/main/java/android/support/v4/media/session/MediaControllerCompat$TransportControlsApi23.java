package android.support.v4.media.session;

import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.RequiresApi;

/* JADX INFO: loaded from: classes.dex */
@RequiresApi(23)
class MediaControllerCompat$TransportControlsApi23 extends MediaControllerCompat$TransportControlsApi21 {
    public MediaControllerCompat$TransportControlsApi23(Object obj) {
        super(obj);
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$TransportControlsApi21, android.support.v4.media.session.MediaControllerCompat$TransportControls
    public void playFromUri(Uri uri, Bundle bundle) {
        MediaControllerCompatApi23$TransportControls.playFromUri(this.mControlsObj, uri, bundle);
    }
}
