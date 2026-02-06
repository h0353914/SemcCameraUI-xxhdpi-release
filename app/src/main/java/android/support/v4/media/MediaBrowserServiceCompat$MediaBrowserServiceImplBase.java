package android.support.v4.media;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Messenger;
import android.support.annotation.NonNull;
import android.support.v4.media.session.MediaSessionCompat$Token;
import android.support.v4.util.Pair;
import java.util.List;

class MediaBrowserServiceCompat$MediaBrowserServiceImplBase implements MediaBrowserServiceCompat$MediaBrowserServiceImpl {
    private Messenger mMessenger;
    final /* synthetic */ MediaBrowserServiceCompat this$0;

    MediaBrowserServiceCompat$MediaBrowserServiceImplBase(MediaBrowserServiceCompat mediaBrowserServiceCompat) {
        this.this$0 = mediaBrowserServiceCompat;
    }

    @Override // android.support.v4.media.MediaBrowserServiceCompat$MediaBrowserServiceImpl
    public void onCreate() {
        this.mMessenger = new Messenger(this.this$0.mHandler);
    }

    @Override // android.support.v4.media.MediaBrowserServiceCompat$MediaBrowserServiceImpl
    public IBinder onBind(Intent intent) {
        if ("android.media.browse.MediaBrowserService".equals(intent.getAction())) {
            return this.mMessenger.getBinder();
        }
        return null;
    }

    @Override // android.support.v4.media.MediaBrowserServiceCompat$MediaBrowserServiceImpl
    public void setSessionToken(MediaSessionCompat$Token mediaSessionCompat$Token) {
        this.this$0.mHandler.post(new MediaBrowserServiceCompat$MediaBrowserServiceImplBase$1(this, mediaSessionCompat$Token));
    }

    @Override // android.support.v4.media.MediaBrowserServiceCompat$MediaBrowserServiceImpl
    public void notifyChildrenChanged(@NonNull String str, Bundle bundle) {
        this.this$0.mHandler.post(new MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2(this, str, bundle));
    }

    @Override // android.support.v4.media.MediaBrowserServiceCompat$MediaBrowserServiceImpl
    public void notifyChildrenChanged(@NonNull MediaSessionManager$RemoteUserInfo mediaSessionManager$RemoteUserInfo, @NonNull String str, Bundle bundle) {
        this.this$0.mHandler.post(new MediaBrowserServiceCompat$MediaBrowserServiceImplBase$3(this, mediaSessionManager$RemoteUserInfo, str, bundle));
    }

    void notifyChildrenChangedOnHandler(MediaBrowserServiceCompat$ConnectionRecord mediaBrowserServiceCompat$ConnectionRecord, String str, Bundle bundle) {
        List<Pair<IBinder, Bundle>> list = mediaBrowserServiceCompat$ConnectionRecord.subscriptions.get(str);
        if (list != null) {
            for (Pair<IBinder, Bundle> pair : list) {
                if (MediaBrowserCompatUtils.hasDuplicatedItems(bundle, pair.second)) {
                    this.this$0.performLoadChildren(str, mediaBrowserServiceCompat$ConnectionRecord, pair.second, bundle);
                }
            }
        }
    }

    @Override // android.support.v4.media.MediaBrowserServiceCompat$MediaBrowserServiceImpl
    public Bundle getBrowserRootHints() {
        if (this.this$0.mCurConnection == null) {
            throw new IllegalStateException("This should be called inside of onLoadChildren, onLoadItem, onSearch, or onCustomAction methods");
        }
        if (this.this$0.mCurConnection.rootHints == null) {
            return null;
        }
        return new Bundle(this.this$0.mCurConnection.rootHints);
    }

    @Override // android.support.v4.media.MediaBrowserServiceCompat$MediaBrowserServiceImpl
    public MediaSessionManager$RemoteUserInfo getCurrentBrowserInfo() {
        if (this.this$0.mCurConnection == null) {
            throw new IllegalStateException("This should be called inside of onLoadChildren, onLoadItem, onSearch, or onCustomAction methods");
        }
        return this.this$0.mCurConnection.browserInfo;
    }
}
