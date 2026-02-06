package android.support.v4.media;

import android.os.Bundle;
import android.os.IBinder;
import android.support.v4.os.ResultReceiver;
import android.text.TextUtils;

class MediaBrowserServiceCompat$ServiceBinderImpl {
    final /* synthetic */ MediaBrowserServiceCompat this$0;

    MediaBrowserServiceCompat$ServiceBinderImpl(MediaBrowserServiceCompat mediaBrowserServiceCompat) {
        this.this$0 = mediaBrowserServiceCompat;
    }

    public void connect(String str, int i, int i2, Bundle bundle, MediaBrowserServiceCompat$ServiceCallbacks mediaBrowserServiceCompat$ServiceCallbacks) {
        if (!this.this$0.isValidPackage(str, i2)) {
            throw new IllegalArgumentException("Package/uid mismatch: uid=" + i2 + " package=" + str);
        }
        this.this$0.mHandler.postOrRun(new MediaBrowserServiceCompat$ServiceBinderImpl$1(this, mediaBrowserServiceCompat$ServiceCallbacks, str, i, i2, bundle));
    }

    public void disconnect(MediaBrowserServiceCompat$ServiceCallbacks mediaBrowserServiceCompat$ServiceCallbacks) {
        this.this$0.mHandler.postOrRun(new MediaBrowserServiceCompat$ServiceBinderImpl$2(this, mediaBrowserServiceCompat$ServiceCallbacks));
    }

    public void addSubscription(String str, IBinder iBinder, Bundle bundle, MediaBrowserServiceCompat$ServiceCallbacks mediaBrowserServiceCompat$ServiceCallbacks) {
        this.this$0.mHandler.postOrRun(new MediaBrowserServiceCompat$ServiceBinderImpl$3(this, mediaBrowserServiceCompat$ServiceCallbacks, str, iBinder, bundle));
    }

    public void removeSubscription(String str, IBinder iBinder, MediaBrowserServiceCompat$ServiceCallbacks mediaBrowserServiceCompat$ServiceCallbacks) {
        this.this$0.mHandler.postOrRun(new MediaBrowserServiceCompat$ServiceBinderImpl$4(this, mediaBrowserServiceCompat$ServiceCallbacks, str, iBinder));
    }

    public void getMediaItem(String str, ResultReceiver resultReceiver, MediaBrowserServiceCompat$ServiceCallbacks mediaBrowserServiceCompat$ServiceCallbacks) {
        if (TextUtils.isEmpty(str) || resultReceiver == null) {
            return;
        }
        this.this$0.mHandler.postOrRun(new MediaBrowserServiceCompat$ServiceBinderImpl$5(this, mediaBrowserServiceCompat$ServiceCallbacks, str, resultReceiver));
    }

    public void registerCallbacks(MediaBrowserServiceCompat$ServiceCallbacks mediaBrowserServiceCompat$ServiceCallbacks, String str, int i, int i2, Bundle bundle) {
        this.this$0.mHandler.postOrRun(new MediaBrowserServiceCompat$ServiceBinderImpl$6(this, mediaBrowserServiceCompat$ServiceCallbacks, str, i, i2, bundle));
    }

    public void unregisterCallbacks(MediaBrowserServiceCompat$ServiceCallbacks mediaBrowserServiceCompat$ServiceCallbacks) {
        this.this$0.mHandler.postOrRun(new MediaBrowserServiceCompat$ServiceBinderImpl$7(this, mediaBrowserServiceCompat$ServiceCallbacks));
    }

    public void search(String str, Bundle bundle, ResultReceiver resultReceiver, MediaBrowserServiceCompat$ServiceCallbacks mediaBrowserServiceCompat$ServiceCallbacks) {
        if (TextUtils.isEmpty(str) || resultReceiver == null) {
            return;
        }
        this.this$0.mHandler.postOrRun(new MediaBrowserServiceCompat$ServiceBinderImpl$8(this, mediaBrowserServiceCompat$ServiceCallbacks, str, bundle, resultReceiver));
    }

    public void sendCustomAction(String str, Bundle bundle, ResultReceiver resultReceiver, MediaBrowserServiceCompat$ServiceCallbacks mediaBrowserServiceCompat$ServiceCallbacks) {
        if (TextUtils.isEmpty(str) || resultReceiver == null) {
            return;
        }
        this.this$0.mHandler.postOrRun(new MediaBrowserServiceCompat$ServiceBinderImpl$9(this, mediaBrowserServiceCompat$ServiceCallbacks, str, bundle, resultReceiver));
    }
}
