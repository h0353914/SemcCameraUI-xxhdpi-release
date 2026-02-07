package android.support.v4.media;

import android.os.RemoteException;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
class MediaBrowserCompat$MediaBrowserImplBase$2 implements Runnable {
    final /* synthetic */ MediaBrowserCompat$MediaBrowserImplBase this$0;

    MediaBrowserCompat$MediaBrowserImplBase$2(MediaBrowserCompat$MediaBrowserImplBase mediaBrowserCompat$MediaBrowserImplBase) {
        this.this$0 = mediaBrowserCompat$MediaBrowserImplBase;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.this$0.mCallbacksMessenger != null) {
            try {
                this.this$0.mServiceBinderWrapper.disconnect(this.this$0.mCallbacksMessenger);
            } catch (RemoteException unused) {
                Log.w("MediaBrowserCompat", "RemoteException during connect for " + this.this$0.mServiceComponent);
            }
        }
        int i = this.this$0.mState;
        this.this$0.forceCloseConnection();
        if (i != 0) {
            this.this$0.mState = i;
        }
        if (MediaBrowserCompat.DEBUG) {
            Log.d("MediaBrowserCompat", "disconnect...");
            this.this$0.dump();
        }
    }
}
