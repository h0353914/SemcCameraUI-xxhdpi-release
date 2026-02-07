package android.support.v4.media.session;

import android.media.RemoteControlClient$OnPlaybackPositionUpdateListener;

/* JADX INFO: loaded from: classes.dex */
class MediaSessionCompat$MediaSessionImplApi18$1 implements RemoteControlClient$OnPlaybackPositionUpdateListener {
    final /* synthetic */ MediaSessionCompat$MediaSessionImplApi18 this$0;

    MediaSessionCompat$MediaSessionImplApi18$1(MediaSessionCompat$MediaSessionImplApi18 mediaSessionCompat$MediaSessionImplApi18) {
        this.this$0 = mediaSessionCompat$MediaSessionImplApi18;
    }

    @Override // android.media.RemoteControlClient$OnPlaybackPositionUpdateListener
    public void onPlaybackPositionUpdate(long j) {
        this.this$0.postToHandler(18, -1, -1, Long.valueOf(j), null);
    }
}
