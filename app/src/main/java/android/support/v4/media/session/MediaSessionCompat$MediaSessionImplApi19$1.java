package android.support.v4.media.session;

import android.media.Rating;
import android.media.RemoteControlClient$OnMetadataUpdateListener;
import android.support.v4.media.RatingCompat;

/* JADX INFO: loaded from: classes.dex */
class MediaSessionCompat$MediaSessionImplApi19$1 implements RemoteControlClient$OnMetadataUpdateListener {
    final /* synthetic */ MediaSessionCompat$MediaSessionImplApi19 this$0;

    MediaSessionCompat$MediaSessionImplApi19$1(MediaSessionCompat$MediaSessionImplApi19 mediaSessionCompat$MediaSessionImplApi19) {
        this.this$0 = mediaSessionCompat$MediaSessionImplApi19;
    }

    @Override // android.media.RemoteControlClient$OnMetadataUpdateListener
    public void onMetadataUpdate(int i, Object obj) {
        if (i == 268435457 && (obj instanceof Rating)) {
            this.this$0.postToHandler(19, -1, -1, RatingCompat.fromRating(obj), null);
        }
    }
}
