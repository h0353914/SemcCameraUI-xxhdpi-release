package android.support.v4.media;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
class MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection implements ServiceConnection {
    final /* synthetic */ MediaBrowserCompat$MediaBrowserImplBase this$0;

    MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection(MediaBrowserCompat$MediaBrowserImplBase mediaBrowserCompat$MediaBrowserImplBase) {
        this.this$0 = mediaBrowserCompat$MediaBrowserImplBase;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        postOrRun(new MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$1(this, componentName, iBinder));
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        postOrRun(new MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$2(this, componentName));
    }

    private void postOrRun(Runnable runnable) {
        if (Thread.currentThread() == this.this$0.mHandler.getLooper().getThread()) {
            runnable.run();
        } else {
            this.this$0.mHandler.post(runnable);
        }
    }

    boolean isCurrent(String str) {
        if (this.this$0.mServiceConnection == this && this.this$0.mState != 0 && this.this$0.mState != 1) {
            return true;
        }
        if (this.this$0.mState == 0 || this.this$0.mState == 1) {
            return false;
        }
        Log.i("MediaBrowserCompat", str + " for " + this.this$0.mServiceComponent + " with mServiceConnection=" + this.this$0.mServiceConnection + " this=" + this);
        return false;
    }
}
