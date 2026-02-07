package android.support.v4.media;

import android.content.Intent;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
class MediaBrowserCompat$MediaBrowserImplBase$1 implements Runnable {
    final /* synthetic */ MediaBrowserCompat$MediaBrowserImplBase this$0;

    MediaBrowserCompat$MediaBrowserImplBase$1(MediaBrowserCompat$MediaBrowserImplBase mediaBrowserCompat$MediaBrowserImplBase) {
        this.this$0 = mediaBrowserCompat$MediaBrowserImplBase;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean zBindService;
        if (this.this$0.mState == 0) {
            return;
        }
        this.this$0.mState = 2;
        if (MediaBrowserCompat.DEBUG && this.this$0.mServiceConnection != null) {
            throw new RuntimeException("mServiceConnection should be null. Instead it is " + this.this$0.mServiceConnection);
        }
        if (this.this$0.mServiceBinderWrapper != null) {
            throw new RuntimeException("mServiceBinderWrapper should be null. Instead it is " + this.this$0.mServiceBinderWrapper);
        }
        if (this.this$0.mCallbacksMessenger != null) {
            throw new RuntimeException("mCallbacksMessenger should be null. Instead it is " + this.this$0.mCallbacksMessenger);
        }
        Intent intent = new Intent("android.media.browse.MediaBrowserService");
        intent.setComponent(this.this$0.mServiceComponent);
        this.this$0.mServiceConnection = new MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection(this.this$0);
        try {
            zBindService = this.this$0.mContext.bindService(intent, this.this$0.mServiceConnection, 1);
        } catch (Exception unused) {
            Log.e("MediaBrowserCompat", "Failed binding to service " + this.this$0.mServiceComponent);
            zBindService = false;
        }
        if (!zBindService) {
            this.this$0.forceCloseConnection();
            this.this$0.mCallback.onConnectionFailed();
        }
        if (MediaBrowserCompat.DEBUG) {
            Log.d("MediaBrowserCompat", "connect...");
            this.this$0.dump();
        }
    }
}
