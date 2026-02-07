package android.support.v4.media;

import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
class MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$4 implements Runnable {
    final /* synthetic */ MediaBrowserServiceCompat$MediaBrowserServiceImplApi21 this$1;
    final /* synthetic */ Bundle val$options;
    final /* synthetic */ String val$parentId;
    final /* synthetic */ MediaSessionManager$RemoteUserInfo val$remoteUserInfo;

    MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$4(MediaBrowserServiceCompat$MediaBrowserServiceImplApi21 mediaBrowserServiceCompat$MediaBrowserServiceImplApi21, MediaSessionManager$RemoteUserInfo mediaSessionManager$RemoteUserInfo, String str, Bundle bundle) {
        this.this$1 = mediaBrowserServiceCompat$MediaBrowserServiceImplApi21;
        this.val$remoteUserInfo = mediaSessionManager$RemoteUserInfo;
        this.val$parentId = str;
        this.val$options = bundle;
    }

    @Override // java.lang.Runnable
    public void run() {
        for (int i = 0; i < this.this$1.this$0.mConnections.size(); i++) {
            MediaBrowserServiceCompat$ConnectionRecord mediaBrowserServiceCompat$ConnectionRecordValueAt = this.this$1.this$0.mConnections.valueAt(i);
            if (mediaBrowserServiceCompat$ConnectionRecordValueAt.browserInfo.equals(this.val$remoteUserInfo)) {
                this.this$1.notifyChildrenChangedForCompatOnHandler(mediaBrowserServiceCompat$ConnectionRecordValueAt, this.val$parentId, this.val$options);
            }
        }
    }
}
