package android.support.v4.media;

import android.content.ComponentName;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
class MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$2 implements Runnable {
    final /* synthetic */ MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection this$1;
    final /* synthetic */ ComponentName val$name;

    MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$2(MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection mediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection, ComponentName componentName) {
        this.this$1 = mediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;
        this.val$name = componentName;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (MediaBrowserCompat.DEBUG) {
            Log.d("MediaBrowserCompat", "MediaServiceConnection.onServiceDisconnected name=" + this.val$name + " this=" + this + " mServiceConnection=" + this.this$1.this$0.mServiceConnection);
            this.this$1.this$0.dump();
        }
        if (this.this$1.isCurrent("onServiceDisconnected")) {
            this.this$1.this$0.mServiceBinderWrapper = null;
            this.this$1.this$0.mCallbacksMessenger = null;
            this.this$1.this$0.mHandler.setCallbacksMessenger(null);
            this.this$1.this$0.mState = 4;
            this.this$1.this$0.mCallback.onConnectionSuspended();
        }
    }
}
