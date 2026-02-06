package android.support.v4.media;

import android.os.Bundle;
import android.os.IBinder;
import java.util.Iterator;

class MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$3 implements Runnable {
    final /* synthetic */ MediaBrowserServiceCompat$MediaBrowserServiceImplApi21 this$1;
    final /* synthetic */ Bundle val$options;
    final /* synthetic */ String val$parentId;

    MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$3(MediaBrowserServiceCompat$MediaBrowserServiceImplApi21 mediaBrowserServiceCompat$MediaBrowserServiceImplApi21, String str, Bundle bundle) {
        this.this$1 = mediaBrowserServiceCompat$MediaBrowserServiceImplApi21;
        this.val$parentId = str;
        this.val$options = bundle;
    }

    @Override // java.lang.Runnable
    public void run() {
        Iterator<IBinder> it = this.this$1.this$0.mConnections.keySet().iterator();
        while (it.hasNext()) {
            this.this$1.notifyChildrenChangedForCompatOnHandler(this.this$1.this$0.mConnections.get(it.next()), this.val$parentId, this.val$options);
        }
    }
}
