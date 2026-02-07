package android.support.v4.media.session;

import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.RequiresApi;

/* JADX INFO: loaded from: classes.dex */
@RequiresApi(23)
class MediaSessionCompat$Callback$StubApi23 extends MediaSessionCompat$Callback$StubApi21 implements MediaSessionCompatApi23$Callback {
    final /* synthetic */ MediaSessionCompat$Callback this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MediaSessionCompat$Callback$StubApi23(MediaSessionCompat$Callback mediaSessionCompat$Callback) {
        super(mediaSessionCompat$Callback);
        this.this$0 = mediaSessionCompat$Callback;
    }

    @Override // android.support.v4.media.session.MediaSessionCompatApi23$Callback
    public void onPlayFromUri(Uri uri, Bundle bundle) {
        this.this$0.onPlayFromUri(uri, bundle);
    }
}
