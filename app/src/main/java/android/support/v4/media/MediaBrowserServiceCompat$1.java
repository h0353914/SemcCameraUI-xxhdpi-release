package android.support.v4.media;

import android.os.Bundle;
import android.os.RemoteException;
import android.util.Log;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class MediaBrowserServiceCompat$1 extends MediaBrowserServiceCompat$Result<List<MediaBrowserCompat$MediaItem>> {
    final /* synthetic */ MediaBrowserServiceCompat this$0;
    final /* synthetic */ MediaBrowserServiceCompat$ConnectionRecord val$connection;
    final /* synthetic */ Bundle val$notifyChildrenChangedOptions;
    final /* synthetic */ String val$parentId;
    final /* synthetic */ Bundle val$subscribeOptions;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MediaBrowserServiceCompat$1(MediaBrowserServiceCompat mediaBrowserServiceCompat, Object obj, MediaBrowserServiceCompat$ConnectionRecord mediaBrowserServiceCompat$ConnectionRecord, String str, Bundle bundle, Bundle bundle2) {
        super(obj);
        this.this$0 = mediaBrowserServiceCompat;
        this.val$connection = mediaBrowserServiceCompat$ConnectionRecord;
        this.val$parentId = str;
        this.val$subscribeOptions = bundle;
        this.val$notifyChildrenChangedOptions = bundle2;
    }

    @Override // android.support.v4.media.MediaBrowserServiceCompat$Result
    /* bridge */ /* synthetic */ void onResultSent(List<MediaBrowserCompat$MediaItem> list) {
        onResultSent2(list);
    }

    /* JADX INFO: renamed from: onResultSent, reason: avoid collision after fix types in other method */
    void onResultSent2(List<MediaBrowserCompat$MediaItem> list) {
        if (this.this$0.mConnections.get(this.val$connection.callbacks.asBinder()) != this.val$connection) {
            if (MediaBrowserServiceCompat.DEBUG) {
                Log.d("MBServiceCompat", "Not sending onLoadChildren result for connection that has been disconnected. pkg=" + this.val$connection.pkg + " id=" + this.val$parentId);
                return;
            }
            return;
        }
        if ((getFlags() & 1) != 0) {
            list = this.this$0.applyOptions(list, this.val$subscribeOptions);
        }
        try {
            this.val$connection.callbacks.onLoadChildren(this.val$parentId, list, this.val$subscribeOptions, this.val$notifyChildrenChangedOptions);
        } catch (RemoteException unused) {
            Log.w("MBServiceCompat", "Calling onLoadChildren() failed for id=" + this.val$parentId + " package=" + this.val$connection.pkg);
        }
    }
}
