package android.support.v4.media;

import android.os.RemoteException;
import android.support.v4.media.session.MediaSessionCompat$Token;
import android.util.Log;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
class MediaBrowserServiceCompat$MediaBrowserServiceImplBase$1 implements Runnable {
    final /* synthetic */ MediaBrowserServiceCompat$MediaBrowserServiceImplBase this$1;
    final /* synthetic */ MediaSessionCompat$Token val$token;

    MediaBrowserServiceCompat$MediaBrowserServiceImplBase$1(MediaBrowserServiceCompat$MediaBrowserServiceImplBase mediaBrowserServiceCompat$MediaBrowserServiceImplBase, MediaSessionCompat$Token mediaSessionCompat$Token) {
        this.this$1 = mediaBrowserServiceCompat$MediaBrowserServiceImplBase;
        this.val$token = mediaSessionCompat$Token;
    }

    @Override // java.lang.Runnable
    public void run() {
        Iterator<MediaBrowserServiceCompat$ConnectionRecord> it = this.this$1.this$0.mConnections.values().iterator();
        while (it.hasNext()) {
            MediaBrowserServiceCompat$ConnectionRecord next = it.next();
            try {
                next.callbacks.onConnect(next.root.getRootId(), this.val$token, next.root.getExtras());
            } catch (RemoteException unused) {
                Log.w("MBServiceCompat", "Connection for " + next.pkg + " is no longer valid.");
                it.remove();
            }
        }
    }
}
