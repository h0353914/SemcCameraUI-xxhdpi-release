package android.support.v4.media;

import android.content.ComponentName;
import android.content.Context;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.support.v4.media.session.MediaSessionCompat$Token;
import android.text.TextUtils;
import android.util.Log;

public final class MediaBrowserCompat {
    public static final String CUSTOM_ACTION_DOWNLOAD = "android.support.v4.media.action.DOWNLOAD";
    public static final String CUSTOM_ACTION_REMOVE_DOWNLOADED_FILE = "android.support.v4.media.action.REMOVE_DOWNLOADED_FILE";
    static final boolean DEBUG = Log.isLoggable("MediaBrowserCompat", 3);
    public static final String EXTRA_DOWNLOAD_PROGRESS = "android.media.browse.extra.DOWNLOAD_PROGRESS";
    public static final String EXTRA_MEDIA_ID = "android.media.browse.extra.MEDIA_ID";
    public static final String EXTRA_PAGE = "android.media.browse.extra.PAGE";
    public static final String EXTRA_PAGE_SIZE = "android.media.browse.extra.PAGE_SIZE";
    static final String TAG = "MediaBrowserCompat";
    private final MediaBrowserCompat$MediaBrowserImpl mImpl;

    public MediaBrowserCompat(Context context, ComponentName componentName, MediaBrowserCompat$ConnectionCallback mediaBrowserCompat$ConnectionCallback, Bundle bundle) {
        if (Build$VERSION.SDK_INT >= 26) {
            this.mImpl = new MediaBrowserCompat$MediaBrowserImplApi26(context, componentName, mediaBrowserCompat$ConnectionCallback, bundle);
            return;
        }
        if (Build$VERSION.SDK_INT >= 23) {
            this.mImpl = new MediaBrowserCompat$MediaBrowserImplApi23(context, componentName, mediaBrowserCompat$ConnectionCallback, bundle);
        } else if (Build$VERSION.SDK_INT >= 21) {
            this.mImpl = new MediaBrowserCompat$MediaBrowserImplApi21(context, componentName, mediaBrowserCompat$ConnectionCallback, bundle);
        } else {
            this.mImpl = new MediaBrowserCompat$MediaBrowserImplBase(context, componentName, mediaBrowserCompat$ConnectionCallback, bundle);
        }
    }

    public void connect() {
        this.mImpl.connect();
    }

    public void disconnect() {
        this.mImpl.disconnect();
    }

    public boolean isConnected() {
        return this.mImpl.isConnected();
    }

    @NonNull
    public ComponentName getServiceComponent() {
        return this.mImpl.getServiceComponent();
    }

    @NonNull
    public String getRoot() {
        return this.mImpl.getRoot();
    }

    @Nullable
    public Bundle getExtras() {
        return this.mImpl.getExtras();
    }

    @NonNull
    public MediaSessionCompat$Token getSessionToken() {
        return this.mImpl.getSessionToken();
    }

    public void subscribe(@NonNull String str, @NonNull MediaBrowserCompat$SubscriptionCallback mediaBrowserCompat$SubscriptionCallback) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("parentId is empty");
        }
        if (mediaBrowserCompat$SubscriptionCallback == null) {
            throw new IllegalArgumentException("callback is null");
        }
        this.mImpl.subscribe(str, null, mediaBrowserCompat$SubscriptionCallback);
    }

    public void subscribe(@NonNull String str, @NonNull Bundle bundle, @NonNull MediaBrowserCompat$SubscriptionCallback mediaBrowserCompat$SubscriptionCallback) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("parentId is empty");
        }
        if (mediaBrowserCompat$SubscriptionCallback == null) {
            throw new IllegalArgumentException("callback is null");
        }
        if (bundle == null) {
            throw new IllegalArgumentException("options are null");
        }
        this.mImpl.subscribe(str, bundle, mediaBrowserCompat$SubscriptionCallback);
    }

    public void unsubscribe(@NonNull String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("parentId is empty");
        }
        this.mImpl.unsubscribe(str, null);
    }

    public void unsubscribe(@NonNull String str, @NonNull MediaBrowserCompat$SubscriptionCallback mediaBrowserCompat$SubscriptionCallback) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("parentId is empty");
        }
        if (mediaBrowserCompat$SubscriptionCallback == null) {
            throw new IllegalArgumentException("callback is null");
        }
        this.mImpl.unsubscribe(str, mediaBrowserCompat$SubscriptionCallback);
    }

    public void getItem(@NonNull String str, @NonNull MediaBrowserCompat$ItemCallback mediaBrowserCompat$ItemCallback) {
        this.mImpl.getItem(str, mediaBrowserCompat$ItemCallback);
    }

    public void search(@NonNull String str, Bundle bundle, @NonNull MediaBrowserCompat$SearchCallback mediaBrowserCompat$SearchCallback) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("query cannot be empty");
        }
        if (mediaBrowserCompat$SearchCallback == null) {
            throw new IllegalArgumentException("callback cannot be null");
        }
        this.mImpl.search(str, bundle, mediaBrowserCompat$SearchCallback);
    }

    public void sendCustomAction(@NonNull String str, Bundle bundle, @Nullable MediaBrowserCompat$CustomActionCallback mediaBrowserCompat$CustomActionCallback) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("action cannot be empty");
        }
        this.mImpl.sendCustomAction(str, bundle, mediaBrowserCompat$CustomActionCallback);
    }

    @Nullable
    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public Bundle getNotifyChildrenChangedOptions() {
        return this.mImpl.getNotifyChildrenChangedOptions();
    }
}
