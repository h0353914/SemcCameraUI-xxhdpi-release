package android.support.v4.media.session;

import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.RequiresApi;

/* JADX INFO: loaded from: classes.dex */
@RequiresApi(24)
class MediaControllerCompat$TransportControlsApi24 extends MediaControllerCompat$TransportControlsApi23 {
    public MediaControllerCompat$TransportControlsApi24(Object obj) {
        super(obj);
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$TransportControlsApi21, android.support.v4.media.session.MediaControllerCompat$TransportControls
    public void prepare() {
        MediaControllerCompatApi24$TransportControls.prepare(this.mControlsObj);
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$TransportControlsApi21, android.support.v4.media.session.MediaControllerCompat$TransportControls
    public void prepareFromMediaId(String str, Bundle bundle) {
        MediaControllerCompatApi24$TransportControls.prepareFromMediaId(this.mControlsObj, str, bundle);
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$TransportControlsApi21, android.support.v4.media.session.MediaControllerCompat$TransportControls
    public void prepareFromSearch(String str, Bundle bundle) {
        MediaControllerCompatApi24$TransportControls.prepareFromSearch(this.mControlsObj, str, bundle);
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$TransportControlsApi21, android.support.v4.media.session.MediaControllerCompat$TransportControls
    public void prepareFromUri(Uri uri, Bundle bundle) {
        MediaControllerCompatApi24$TransportControls.prepareFromUri(this.mControlsObj, uri, bundle);
    }
}
