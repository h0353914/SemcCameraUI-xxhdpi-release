package android.support.v4.media;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.os.IBinder;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.support.v4.media.session.MediaSessionCompat$Token;
import android.support.v4.os.ResultReceiver;
import android.support.v4.util.ArrayMap;
import android.support.v4.util.Pair;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public abstract class MediaBrowserServiceCompat extends Service {
    static final boolean DEBUG = Log.isLoggable("MBServiceCompat", 3);
    private static final float EPSILON = 1.0E-5f;

    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public static final String KEY_MEDIA_ITEM = "media_item";

    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public static final String KEY_SEARCH_RESULTS = "search_results";

    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public static final int RESULT_ERROR = -1;
    static final int RESULT_FLAG_ON_LOAD_ITEM_NOT_IMPLEMENTED = 2;
    static final int RESULT_FLAG_ON_SEARCH_NOT_IMPLEMENTED = 4;
    static final int RESULT_FLAG_OPTION_NOT_HANDLED = 1;

    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public static final int RESULT_OK = 0;

    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public static final int RESULT_PROGRESS_UPDATE = 1;
    public static final String SERVICE_INTERFACE = "android.media.browse.MediaBrowserService";
    static final String TAG = "MBServiceCompat";
    MediaBrowserServiceCompat$ConnectionRecord mCurConnection;
    private MediaBrowserServiceCompat$MediaBrowserServiceImpl mImpl;
    MediaSessionCompat$Token mSession;
    final ArrayMap<IBinder, MediaBrowserServiceCompat$ConnectionRecord> mConnections = new ArrayMap<>();
    final MediaBrowserServiceCompat$ServiceHandler mHandler = new MediaBrowserServiceCompat$ServiceHandler(this);

    @Override // android.app.Service
    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    @Nullable
    public abstract MediaBrowserServiceCompat$BrowserRoot onGetRoot(@NonNull String str, int i, @Nullable Bundle bundle);

    public abstract void onLoadChildren(@NonNull String str, @NonNull MediaBrowserServiceCompat$Result<List<MediaBrowserCompat$MediaItem>> mediaBrowserServiceCompat$Result);

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public void onSubscribe(String str, Bundle bundle) {
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public void onUnsubscribe(String str) {
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public void attachToBaseContext(Context context) {
        attachBaseContext(context);
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        if (Build$VERSION.SDK_INT >= 28) {
            this.mImpl = new MediaBrowserServiceCompat$MediaBrowserServiceImplApi28(this);
        } else if (Build$VERSION.SDK_INT >= 26) {
            this.mImpl = new MediaBrowserServiceCompat$MediaBrowserServiceImplApi26(this);
        } else if (Build$VERSION.SDK_INT >= 23) {
            this.mImpl = new MediaBrowserServiceCompat$MediaBrowserServiceImplApi23(this);
        } else if (Build$VERSION.SDK_INT >= 21) {
            this.mImpl = new MediaBrowserServiceCompat$MediaBrowserServiceImplApi21(this);
        } else {
            this.mImpl = new MediaBrowserServiceCompat$MediaBrowserServiceImplBase(this);
        }
        this.mImpl.onCreate();
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.mImpl.onBind(intent);
    }

    public void onLoadChildren(@NonNull String str, @NonNull MediaBrowserServiceCompat$Result<List<MediaBrowserCompat$MediaItem>> mediaBrowserServiceCompat$Result, @NonNull Bundle bundle) {
        mediaBrowserServiceCompat$Result.setFlags(1);
        onLoadChildren(str, mediaBrowserServiceCompat$Result);
    }

    public void onLoadItem(String str, @NonNull MediaBrowserServiceCompat$Result<MediaBrowserCompat$MediaItem> mediaBrowserServiceCompat$Result) {
        mediaBrowserServiceCompat$Result.setFlags(2);
        mediaBrowserServiceCompat$Result.sendResult(null);
    }

    public void onSearch(@NonNull String str, Bundle bundle, @NonNull MediaBrowserServiceCompat$Result<List<MediaBrowserCompat$MediaItem>> mediaBrowserServiceCompat$Result) {
        mediaBrowserServiceCompat$Result.setFlags(4);
        mediaBrowserServiceCompat$Result.sendResult(null);
    }

    public void onCustomAction(@NonNull String str, Bundle bundle, @NonNull MediaBrowserServiceCompat$Result<Bundle> mediaBrowserServiceCompat$Result) {
        mediaBrowserServiceCompat$Result.sendError(null);
    }

    public void setSessionToken(MediaSessionCompat$Token mediaSessionCompat$Token) {
        if (mediaSessionCompat$Token == null) {
            throw new IllegalArgumentException("Session token may not be null.");
        }
        if (this.mSession != null) {
            throw new IllegalStateException("The session token has already been set.");
        }
        this.mSession = mediaSessionCompat$Token;
        this.mImpl.setSessionToken(mediaSessionCompat$Token);
    }

    @Nullable
    public MediaSessionCompat$Token getSessionToken() {
        return this.mSession;
    }

    public final Bundle getBrowserRootHints() {
        return this.mImpl.getBrowserRootHints();
    }

    @NonNull
    public final MediaSessionManager$RemoteUserInfo getCurrentBrowserInfo() {
        return this.mImpl.getCurrentBrowserInfo();
    }

    public void notifyChildrenChanged(@NonNull String str) {
        if (str == null) {
            throw new IllegalArgumentException("parentId cannot be null in notifyChildrenChanged");
        }
        this.mImpl.notifyChildrenChanged(str, null);
    }

    public void notifyChildrenChanged(@NonNull String str, @NonNull Bundle bundle) {
        if (str == null) {
            throw new IllegalArgumentException("parentId cannot be null in notifyChildrenChanged");
        }
        if (bundle == null) {
            throw new IllegalArgumentException("options cannot be null in notifyChildrenChanged");
        }
        this.mImpl.notifyChildrenChanged(str, bundle);
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public void notifyChildrenChanged(@NonNull MediaSessionManager$RemoteUserInfo mediaSessionManager$RemoteUserInfo, @NonNull String str, @NonNull Bundle bundle) {
        if (mediaSessionManager$RemoteUserInfo == null) {
            throw new IllegalArgumentException("remoteUserInfo cannot be null in notifyChildrenChanged");
        }
        if (str == null) {
            throw new IllegalArgumentException("parentId cannot be null in notifyChildrenChanged");
        }
        if (bundle == null) {
            throw new IllegalArgumentException("options cannot be null in notifyChildrenChanged");
        }
        this.mImpl.notifyChildrenChanged(mediaSessionManager$RemoteUserInfo, str, bundle);
    }

    boolean isValidPackage(String str, int i) {
        if (str == null) {
            return false;
        }
        for (String str2 : getPackageManager().getPackagesForUid(i)) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    void addSubscription(String str, MediaBrowserServiceCompat$ConnectionRecord mediaBrowserServiceCompat$ConnectionRecord, IBinder iBinder, Bundle bundle) {
        List<Pair<IBinder, Bundle>> arrayList = mediaBrowserServiceCompat$ConnectionRecord.subscriptions.get(str);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
        }
        for (Pair<IBinder, Bundle> pair : arrayList) {
            if (iBinder == pair.first && MediaBrowserCompatUtils.areSameOptions(bundle, pair.second)) {
                return;
            }
        }
        arrayList.add(new Pair<>(iBinder, bundle));
        mediaBrowserServiceCompat$ConnectionRecord.subscriptions.put(str, arrayList);
        performLoadChildren(str, mediaBrowserServiceCompat$ConnectionRecord, bundle, null);
        this.mCurConnection = mediaBrowserServiceCompat$ConnectionRecord;
        onSubscribe(str, bundle);
        this.mCurConnection = null;
    }

    boolean removeSubscription(String str, MediaBrowserServiceCompat$ConnectionRecord mediaBrowserServiceCompat$ConnectionRecord, IBinder iBinder) {
        boolean z = false;
        try {
            if (iBinder == null) {
                if (mediaBrowserServiceCompat$ConnectionRecord.subscriptions.remove(str) != null) {
                    z = true;
                }
            } else {
                List<Pair<IBinder, Bundle>> list = mediaBrowserServiceCompat$ConnectionRecord.subscriptions.get(str);
                if (list != null) {
                    Iterator<Pair<IBinder, Bundle>> it = list.iterator();
                    while (it.hasNext()) {
                        if (iBinder == it.next().first) {
                            it.remove();
                            z = true;
                        }
                    }
                    if (list.size() == 0) {
                        mediaBrowserServiceCompat$ConnectionRecord.subscriptions.remove(str);
                    }
                }
            }
            return z;
        } finally {
            this.mCurConnection = mediaBrowserServiceCompat$ConnectionRecord;
            onUnsubscribe(str);
            this.mCurConnection = null;
        }
    }

    void performLoadChildren(String str, MediaBrowserServiceCompat$ConnectionRecord mediaBrowserServiceCompat$ConnectionRecord, Bundle bundle, Bundle bundle2) {
        MediaBrowserServiceCompat$1 mediaBrowserServiceCompat$1 = new MediaBrowserServiceCompat$1(this, str, mediaBrowserServiceCompat$ConnectionRecord, str, bundle, bundle2);
        this.mCurConnection = mediaBrowserServiceCompat$ConnectionRecord;
        if (bundle == null) {
            onLoadChildren(str, mediaBrowserServiceCompat$1);
        } else {
            onLoadChildren(str, mediaBrowserServiceCompat$1, bundle);
        }
        this.mCurConnection = null;
        if (mediaBrowserServiceCompat$1.isDone()) {
            return;
        }
        throw new IllegalStateException("onLoadChildren must call detach() or sendResult() before returning for package=" + mediaBrowserServiceCompat$ConnectionRecord.pkg + " id=" + str);
    }

    List<MediaBrowserCompat$MediaItem> applyOptions(List<MediaBrowserCompat$MediaItem> list, Bundle bundle) {
        if (list == null) {
            return null;
        }
        int i = bundle.getInt("android.media.browse.extra.PAGE", -1);
        int i2 = bundle.getInt("android.media.browse.extra.PAGE_SIZE", -1);
        if (i == -1 && i2 == -1) {
            return list;
        }
        int i3 = i2 * i;
        int size = i3 + i2;
        if (i < 0 || i2 < 1 || i3 >= list.size()) {
            return Collections.emptyList();
        }
        if (size > list.size()) {
            size = list.size();
        }
        return list.subList(i3, size);
    }

    void performLoadItem(String str, MediaBrowserServiceCompat$ConnectionRecord mediaBrowserServiceCompat$ConnectionRecord, ResultReceiver resultReceiver) {
        MediaBrowserServiceCompat$2 mediaBrowserServiceCompat$2 = new MediaBrowserServiceCompat$2(this, str, resultReceiver);
        this.mCurConnection = mediaBrowserServiceCompat$ConnectionRecord;
        onLoadItem(str, mediaBrowserServiceCompat$2);
        this.mCurConnection = null;
        if (mediaBrowserServiceCompat$2.isDone()) {
            return;
        }
        throw new IllegalStateException("onLoadItem must call detach() or sendResult() before returning for id=" + str);
    }

    void performSearch(String str, Bundle bundle, MediaBrowserServiceCompat$ConnectionRecord mediaBrowserServiceCompat$ConnectionRecord, ResultReceiver resultReceiver) {
        MediaBrowserServiceCompat$3 mediaBrowserServiceCompat$3 = new MediaBrowserServiceCompat$3(this, str, resultReceiver);
        this.mCurConnection = mediaBrowserServiceCompat$ConnectionRecord;
        onSearch(str, bundle, mediaBrowserServiceCompat$3);
        this.mCurConnection = null;
        if (mediaBrowserServiceCompat$3.isDone()) {
            return;
        }
        throw new IllegalStateException("onSearch must call detach() or sendResult() before returning for query=" + str);
    }

    void performCustomAction(String str, Bundle bundle, MediaBrowserServiceCompat$ConnectionRecord mediaBrowserServiceCompat$ConnectionRecord, ResultReceiver resultReceiver) {
        MediaBrowserServiceCompat$4 mediaBrowserServiceCompat$4 = new MediaBrowserServiceCompat$4(this, str, resultReceiver);
        this.mCurConnection = mediaBrowserServiceCompat$ConnectionRecord;
        onCustomAction(str, bundle, mediaBrowserServiceCompat$4);
        this.mCurConnection = null;
        if (mediaBrowserServiceCompat$4.isDone()) {
            return;
        }
        throw new IllegalStateException("onCustomAction must call detach() or sendResult() or sendError() before returning for action=" + str + " extras=" + bundle);
    }
}
