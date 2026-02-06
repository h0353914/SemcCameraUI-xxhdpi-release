package android.support.v4.media;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Messenger;
import android.os.Parcel;
import android.support.annotation.RequiresApi;
import android.support.v4.app.BundleCompat;
import android.support.v4.media.session.IMediaSession;
import android.support.v4.media.session.MediaSessionCompat$Token;
import android.support.v4.util.Pair;
import java.util.ArrayList;
import java.util.List;

@RequiresApi(21)
class MediaBrowserServiceCompat$MediaBrowserServiceImplApi21 implements MediaBrowserServiceCompat$MediaBrowserServiceImpl, MediaBrowserServiceCompatApi21$ServiceCompatProxy {
    Messenger mMessenger;
    final List<Bundle> mRootExtrasList = new ArrayList();
    Object mServiceObj;
    final /* synthetic */ MediaBrowserServiceCompat this$0;

    MediaBrowserServiceCompat$MediaBrowserServiceImplApi21(MediaBrowserServiceCompat mediaBrowserServiceCompat) {
        this.this$0 = mediaBrowserServiceCompat;
    }

    @Override // android.support.v4.media.MediaBrowserServiceCompat$MediaBrowserServiceImpl
    public void onCreate() {
        this.mServiceObj = MediaBrowserServiceCompatApi21.createService(this.this$0, this);
        MediaBrowserServiceCompatApi21.onCreate(this.mServiceObj);
    }

    @Override // android.support.v4.media.MediaBrowserServiceCompat$MediaBrowserServiceImpl
    public IBinder onBind(Intent intent) {
        return MediaBrowserServiceCompatApi21.onBind(this.mServiceObj, intent);
    }

    @Override // android.support.v4.media.MediaBrowserServiceCompat$MediaBrowserServiceImpl
    public void setSessionToken(MediaSessionCompat$Token mediaSessionCompat$Token) {
        this.this$0.mHandler.postOrRun(new MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$1(this, mediaSessionCompat$Token));
    }

    @Override // android.support.v4.media.MediaBrowserServiceCompat$MediaBrowserServiceImpl
    public void notifyChildrenChanged(String str, Bundle bundle) {
        notifyChildrenChangedForFramework(str, bundle);
        notifyChildrenChangedForCompat(str, bundle);
    }

    @Override // android.support.v4.media.MediaBrowserServiceCompat$MediaBrowserServiceImpl
    public void notifyChildrenChanged(MediaSessionManager$RemoteUserInfo mediaSessionManager$RemoteUserInfo, String str, Bundle bundle) {
        notifyChildrenChangedForCompat(mediaSessionManager$RemoteUserInfo, str, bundle);
    }

    @Override // android.support.v4.media.MediaBrowserServiceCompatApi21$ServiceCompatProxy
    public MediaBrowserServiceCompatApi21$BrowserRoot onGetRoot(String str, int i, Bundle bundle) {
        Bundle extras;
        if (bundle == null || bundle.getInt("extra_client_version", 0) == 0) {
            extras = null;
        } else {
            bundle.remove("extra_client_version");
            this.mMessenger = new Messenger(this.this$0.mHandler);
            extras = new Bundle();
            extras.putInt("extra_service_version", 2);
            BundleCompat.putBinder(extras, "extra_messenger", this.mMessenger.getBinder());
            if (this.this$0.mSession != null) {
                IMediaSession extraBinder = this.this$0.mSession.getExtraBinder();
                BundleCompat.putBinder(extras, "extra_session_binder", extraBinder == null ? null : extraBinder.asBinder());
            } else {
                this.mRootExtrasList.add(extras);
            }
        }
        this.this$0.mCurConnection = new MediaBrowserServiceCompat$ConnectionRecord(this.this$0, str, -1, i, bundle, null);
        MediaBrowserServiceCompat$BrowserRoot mediaBrowserServiceCompat$BrowserRootOnGetRoot = this.this$0.onGetRoot(str, i, bundle);
        this.this$0.mCurConnection = null;
        if (mediaBrowserServiceCompat$BrowserRootOnGetRoot == null) {
            return null;
        }
        if (extras == null) {
            extras = mediaBrowserServiceCompat$BrowserRootOnGetRoot.getExtras();
        } else if (mediaBrowserServiceCompat$BrowserRootOnGetRoot.getExtras() != null) {
            extras.putAll(mediaBrowserServiceCompat$BrowserRootOnGetRoot.getExtras());
        }
        return new MediaBrowserServiceCompatApi21$BrowserRoot(mediaBrowserServiceCompat$BrowserRootOnGetRoot.getRootId(), extras);
    }

    @Override // android.support.v4.media.MediaBrowserServiceCompatApi21$ServiceCompatProxy
    public void onLoadChildren(String str, MediaBrowserServiceCompatApi21$ResultWrapper<List<Parcel>> mediaBrowserServiceCompatApi21$ResultWrapper) {
        this.this$0.onLoadChildren(str, new MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$2(this, str, mediaBrowserServiceCompatApi21$ResultWrapper));
    }

    void notifyChildrenChangedForFramework(String str, Bundle bundle) {
        MediaBrowserServiceCompatApi21.notifyChildrenChanged(this.mServiceObj, str);
    }

    void notifyChildrenChangedForCompat(String str, Bundle bundle) {
        this.this$0.mHandler.post(new MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$3(this, str, bundle));
    }

    void notifyChildrenChangedForCompat(MediaSessionManager$RemoteUserInfo mediaSessionManager$RemoteUserInfo, String str, Bundle bundle) {
        this.this$0.mHandler.post(new MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$4(this, mediaSessionManager$RemoteUserInfo, str, bundle));
    }

    void notifyChildrenChangedForCompatOnHandler(MediaBrowserServiceCompat$ConnectionRecord mediaBrowserServiceCompat$ConnectionRecord, String str, Bundle bundle) {
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
        if (this.mMessenger == null) {
            return null;
        }
        if (this.this$0.mCurConnection == null) {
            throw new IllegalStateException("This should be called inside of onGetRoot, onLoadChildren, onLoadItem, onSearch, or onCustomAction methods");
        }
        if (this.this$0.mCurConnection.rootHints == null) {
            return null;
        }
        return new Bundle(this.this$0.mCurConnection.rootHints);
    }

    @Override // android.support.v4.media.MediaBrowserServiceCompat$MediaBrowserServiceImpl
    public MediaSessionManager$RemoteUserInfo getCurrentBrowserInfo() {
        if (this.this$0.mCurConnection == null) {
            throw new IllegalStateException("This should be called inside of onGetRoot, onLoadChildren, onLoadItem, onSearch, or onCustomAction methods");
        }
        return this.this$0.mCurConnection.browserInfo;
    }
}
