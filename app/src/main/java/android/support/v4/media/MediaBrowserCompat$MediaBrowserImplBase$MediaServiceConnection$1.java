package android.support.v4.media;

import android.content.ComponentName;
import android.os.IBinder;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
class MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$1 implements Runnable {
    final /* synthetic */ MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection this$1;
    final /* synthetic */ IBinder val$binder;
    final /* synthetic */ ComponentName val$name;

    MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$1(MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection mediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection, ComponentName componentName, IBinder iBinder) {
        this.this$1 = mediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;
        this.val$name = componentName;
        this.val$binder = iBinder;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (MediaBrowserCompat.DEBUG) {
            Log.d("MediaBrowserCompat", "MediaServiceConnection.onServiceConnected name=" + this.val$name + " binder=" + this.val$binder);
            this.this$1.this$0.dump();
        }
        if (this.this$1.isCurrent("onServiceConnected")) {
            this.this$1.this$0.mServiceBinderWrapper = new MediaBrowserCompat$ServiceBinderWrapper(this.val$binder, this.this$1.this$0.mRootHints);
            this.this$1.this$0.mCallbacksMessenger = new Messenger(this.this$1.this$0.mHandler);
            this.this$1.this$0.mHandler.setCallbacksMessenger(this.this$1.this$0.mCallbacksMessenger);
            this.this$1.this$0.mState = 2;
            try {
                if (MediaBrowserCompat.DEBUG) {
                    Log.d("MediaBrowserCompat", "ServiceCallbacks.onConnect...");
                    this.this$1.this$0.dump();
                }
                this.this$1.this$0.mServiceBinderWrapper.connect(this.this$1.this$0.mContext, this.this$1.this$0.mCallbacksMessenger);
            } catch (RemoteException unused) {
                Log.w("MediaBrowserCompat", "RemoteException during connect for " + this.this$1.this$0.mServiceComponent);
                if (MediaBrowserCompat.DEBUG) {
                    Log.d("MediaBrowserCompat", "ServiceCallbacks.onConnect...");
                    this.this$1.this$0.dump();
                }
            }
        }
    }
}
