package android.support.v4.media;

import android.content.ComponentName;
import android.content.Context;
import android.os.Bundle;
import android.os.Messenger;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.media.session.MediaSessionCompat$Token;
import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import android.util.Log;
import java.util.List;
import java.util.Map$Entry;

/* JADX INFO: loaded from: classes.dex */
class MediaBrowserCompat$MediaBrowserImplBase implements MediaBrowserCompat$MediaBrowserImpl, MediaBrowserCompat$MediaBrowserServiceCallbackImpl {
    static final int CONNECT_STATE_CONNECTED = 3;
    static final int CONNECT_STATE_CONNECTING = 2;
    static final int CONNECT_STATE_DISCONNECTED = 1;
    static final int CONNECT_STATE_DISCONNECTING = 0;
    static final int CONNECT_STATE_SUSPENDED = 4;
    final MediaBrowserCompat$ConnectionCallback mCallback;
    Messenger mCallbacksMessenger;
    final Context mContext;
    private Bundle mExtras;
    private MediaSessionCompat$Token mMediaSessionToken;
    private Bundle mNotifyChildrenChangedOptions;
    final Bundle mRootHints;
    private String mRootId;
    MediaBrowserCompat$ServiceBinderWrapper mServiceBinderWrapper;
    final ComponentName mServiceComponent;
    MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection mServiceConnection;
    final MediaBrowserCompat$CallbackHandler mHandler = new MediaBrowserCompat$CallbackHandler(this);
    private final ArrayMap<String, MediaBrowserCompat$Subscription> mSubscriptions = new ArrayMap<>();
    int mState = 1;

    public MediaBrowserCompat$MediaBrowserImplBase(Context context, ComponentName componentName, MediaBrowserCompat$ConnectionCallback mediaBrowserCompat$ConnectionCallback, Bundle bundle) {
        if (context == null) {
            throw new IllegalArgumentException("context must not be null");
        }
        if (componentName == null) {
            throw new IllegalArgumentException("service component must not be null");
        }
        if (mediaBrowserCompat$ConnectionCallback == null) {
            throw new IllegalArgumentException("connection callback must not be null");
        }
        this.mContext = context;
        this.mServiceComponent = componentName;
        this.mCallback = mediaBrowserCompat$ConnectionCallback;
        this.mRootHints = bundle == null ? null : new Bundle(bundle);
    }

    @Override // android.support.v4.media.MediaBrowserCompat$MediaBrowserImpl
    public void connect() {
        if (this.mState != 0 && this.mState != 1) {
            throw new IllegalStateException("connect() called while neigther disconnecting nor disconnected (state=" + getStateLabel(this.mState) + ")");
        }
        this.mState = 2;
        this.mHandler.post(new MediaBrowserCompat$MediaBrowserImplBase$1(this));
    }

    @Override // android.support.v4.media.MediaBrowserCompat$MediaBrowserImpl
    public void disconnect() {
        this.mState = 0;
        this.mHandler.post(new MediaBrowserCompat$MediaBrowserImplBase$2(this));
    }

    void forceCloseConnection() {
        if (this.mServiceConnection != null) {
            this.mContext.unbindService(this.mServiceConnection);
        }
        this.mState = 1;
        this.mServiceConnection = null;
        this.mServiceBinderWrapper = null;
        this.mCallbacksMessenger = null;
        this.mHandler.setCallbacksMessenger(null);
        this.mRootId = null;
        this.mMediaSessionToken = null;
    }

    @Override // android.support.v4.media.MediaBrowserCompat$MediaBrowserImpl
    public boolean isConnected() {
        return this.mState == 3;
    }

    @Override // android.support.v4.media.MediaBrowserCompat$MediaBrowserImpl
    @NonNull
    public ComponentName getServiceComponent() {
        if (!isConnected()) {
            throw new IllegalStateException("getServiceComponent() called while not connected (state=" + this.mState + ")");
        }
        return this.mServiceComponent;
    }

    @Override // android.support.v4.media.MediaBrowserCompat$MediaBrowserImpl
    @NonNull
    public String getRoot() {
        if (!isConnected()) {
            throw new IllegalStateException("getRoot() called while not connected(state=" + getStateLabel(this.mState) + ")");
        }
        return this.mRootId;
    }

    @Override // android.support.v4.media.MediaBrowserCompat$MediaBrowserImpl
    @Nullable
    public Bundle getExtras() {
        if (!isConnected()) {
            throw new IllegalStateException("getExtras() called while not connected (state=" + getStateLabel(this.mState) + ")");
        }
        return this.mExtras;
    }

    @Override // android.support.v4.media.MediaBrowserCompat$MediaBrowserImpl
    @NonNull
    public MediaSessionCompat$Token getSessionToken() {
        if (!isConnected()) {
            throw new IllegalStateException("getSessionToken() called while not connected(state=" + this.mState + ")");
        }
        return this.mMediaSessionToken;
    }

    @Override // android.support.v4.media.MediaBrowserCompat$MediaBrowserImpl
    public void subscribe(@NonNull String str, Bundle bundle, @NonNull MediaBrowserCompat$SubscriptionCallback mediaBrowserCompat$SubscriptionCallback) {
        MediaBrowserCompat$Subscription mediaBrowserCompat$Subscription = this.mSubscriptions.get(str);
        if (mediaBrowserCompat$Subscription == null) {
            mediaBrowserCompat$Subscription = new MediaBrowserCompat$Subscription();
            this.mSubscriptions.put(str, mediaBrowserCompat$Subscription);
        }
        Bundle bundle2 = bundle == null ? null : new Bundle(bundle);
        mediaBrowserCompat$Subscription.putCallback(bundle2, mediaBrowserCompat$SubscriptionCallback);
        if (isConnected()) {
            try {
                this.mServiceBinderWrapper.addSubscription(str, mediaBrowserCompat$SubscriptionCallback.mToken, bundle2, this.mCallbacksMessenger);
            } catch (RemoteException unused) {
                Log.d("MediaBrowserCompat", "addSubscription failed with RemoteException parentId=" + str);
            }
        }
    }

    @Override // android.support.v4.media.MediaBrowserCompat$MediaBrowserImpl
    public void unsubscribe(@NonNull String str, MediaBrowserCompat$SubscriptionCallback mediaBrowserCompat$SubscriptionCallback) {
        MediaBrowserCompat$Subscription mediaBrowserCompat$Subscription = this.mSubscriptions.get(str);
        if (mediaBrowserCompat$Subscription == null) {
            return;
        }
        try {
            if (mediaBrowserCompat$SubscriptionCallback == null) {
                if (isConnected()) {
                    this.mServiceBinderWrapper.removeSubscription(str, null, this.mCallbacksMessenger);
                }
            } else {
                List<MediaBrowserCompat$SubscriptionCallback> callbacks = mediaBrowserCompat$Subscription.getCallbacks();
                List<Bundle> optionsList = mediaBrowserCompat$Subscription.getOptionsList();
                for (int size = callbacks.size() - 1; size >= 0; size--) {
                    if (callbacks.get(size) == mediaBrowserCompat$SubscriptionCallback) {
                        if (isConnected()) {
                            this.mServiceBinderWrapper.removeSubscription(str, mediaBrowserCompat$SubscriptionCallback.mToken, this.mCallbacksMessenger);
                        }
                        callbacks.remove(size);
                        optionsList.remove(size);
                    }
                }
            }
        } catch (RemoteException unused) {
            Log.d("MediaBrowserCompat", "removeSubscription failed with RemoteException parentId=" + str);
        }
        if (mediaBrowserCompat$Subscription.isEmpty() || mediaBrowserCompat$SubscriptionCallback == null) {
            this.mSubscriptions.remove(str);
        }
    }

    @Override // android.support.v4.media.MediaBrowserCompat$MediaBrowserImpl
    public void getItem(@NonNull String str, @NonNull MediaBrowserCompat$ItemCallback mediaBrowserCompat$ItemCallback) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("mediaId is empty");
        }
        if (mediaBrowserCompat$ItemCallback == null) {
            throw new IllegalArgumentException("cb is null");
        }
        if (!isConnected()) {
            Log.i("MediaBrowserCompat", "Not connected, unable to retrieve the MediaItem.");
            this.mHandler.post(new MediaBrowserCompat$MediaBrowserImplBase$3(this, mediaBrowserCompat$ItemCallback, str));
            return;
        }
        try {
            this.mServiceBinderWrapper.getMediaItem(str, new MediaBrowserCompat$ItemReceiver(str, mediaBrowserCompat$ItemCallback, this.mHandler), this.mCallbacksMessenger);
        } catch (RemoteException unused) {
            Log.i("MediaBrowserCompat", "Remote error getting media item: " + str);
            this.mHandler.post(new MediaBrowserCompat$MediaBrowserImplBase$4(this, mediaBrowserCompat$ItemCallback, str));
        }
    }

    @Override // android.support.v4.media.MediaBrowserCompat$MediaBrowserImpl
    public void search(@NonNull String str, Bundle bundle, @NonNull MediaBrowserCompat$SearchCallback mediaBrowserCompat$SearchCallback) {
        if (!isConnected()) {
            throw new IllegalStateException("search() called while not connected (state=" + getStateLabel(this.mState) + ")");
        }
        try {
            this.mServiceBinderWrapper.search(str, bundle, new MediaBrowserCompat$SearchResultReceiver(str, bundle, mediaBrowserCompat$SearchCallback, this.mHandler), this.mCallbacksMessenger);
        } catch (RemoteException e) {
            Log.i("MediaBrowserCompat", "Remote error searching items with query: " + str, e);
            this.mHandler.post(new MediaBrowserCompat$MediaBrowserImplBase$5(this, mediaBrowserCompat$SearchCallback, str, bundle));
        }
    }

    @Override // android.support.v4.media.MediaBrowserCompat$MediaBrowserImpl
    public void sendCustomAction(@NonNull String str, Bundle bundle, @Nullable MediaBrowserCompat$CustomActionCallback mediaBrowserCompat$CustomActionCallback) {
        if (!isConnected()) {
            throw new IllegalStateException("Cannot send a custom action (" + str + ") with extras " + bundle + " because the browser is not connected to the service.");
        }
        try {
            this.mServiceBinderWrapper.sendCustomAction(str, bundle, new MediaBrowserCompat$CustomActionResultReceiver(str, bundle, mediaBrowserCompat$CustomActionCallback, this.mHandler), this.mCallbacksMessenger);
        } catch (RemoteException e) {
            Log.i("MediaBrowserCompat", "Remote error sending a custom action: action=" + str + ", extras=" + bundle, e);
            if (mediaBrowserCompat$CustomActionCallback != null) {
                this.mHandler.post(new MediaBrowserCompat$MediaBrowserImplBase$6(this, mediaBrowserCompat$CustomActionCallback, str, bundle));
            }
        }
    }

    @Override // android.support.v4.media.MediaBrowserCompat$MediaBrowserServiceCallbackImpl
    public void onServiceConnected(Messenger messenger, String str, MediaSessionCompat$Token mediaSessionCompat$Token, Bundle bundle) {
        if (isCurrent(messenger, "onConnect")) {
            if (this.mState != 2) {
                Log.w("MediaBrowserCompat", "onConnect from service while mState=" + getStateLabel(this.mState) + "... ignoring");
                return;
            }
            this.mRootId = str;
            this.mMediaSessionToken = mediaSessionCompat$Token;
            this.mExtras = bundle;
            this.mState = 3;
            if (MediaBrowserCompat.DEBUG) {
                Log.d("MediaBrowserCompat", "ServiceCallbacks.onConnect...");
                dump();
            }
            this.mCallback.onConnected();
            try {
                for (Map$Entry<String, MediaBrowserCompat$Subscription> map$Entry : this.mSubscriptions.entrySet()) {
                    String key = map$Entry.getKey();
                    MediaBrowserCompat$Subscription value = map$Entry.getValue();
                    List<MediaBrowserCompat$SubscriptionCallback> callbacks = value.getCallbacks();
                    List<Bundle> optionsList = value.getOptionsList();
                    for (int i = 0; i < callbacks.size(); i++) {
                        this.mServiceBinderWrapper.addSubscription(key, callbacks.get(i).mToken, optionsList.get(i), this.mCallbacksMessenger);
                    }
                }
            } catch (RemoteException unused) {
                Log.d("MediaBrowserCompat", "addSubscription failed with RemoteException.");
            }
        }
    }

    @Override // android.support.v4.media.MediaBrowserCompat$MediaBrowserServiceCallbackImpl
    public void onConnectionFailed(Messenger messenger) {
        Log.e("MediaBrowserCompat", "onConnectFailed for " + this.mServiceComponent);
        if (isCurrent(messenger, "onConnectFailed")) {
            if (this.mState != 2) {
                Log.w("MediaBrowserCompat", "onConnect from service while mState=" + getStateLabel(this.mState) + "... ignoring");
                return;
            }
            forceCloseConnection();
            this.mCallback.onConnectionFailed();
        }
    }

    @Override // android.support.v4.media.MediaBrowserCompat$MediaBrowserServiceCallbackImpl
    public void onLoadChildren(Messenger messenger, String str, List list, Bundle bundle, Bundle bundle2) {
        if (isCurrent(messenger, "onLoadChildren")) {
            if (MediaBrowserCompat.DEBUG) {
                Log.d("MediaBrowserCompat", "onLoadChildren for " + this.mServiceComponent + " id=" + str);
            }
            MediaBrowserCompat$Subscription mediaBrowserCompat$Subscription = this.mSubscriptions.get(str);
            if (mediaBrowserCompat$Subscription == null) {
                if (MediaBrowserCompat.DEBUG) {
                    Log.d("MediaBrowserCompat", "onLoadChildren for id that isn't subscribed id=" + str);
                    return;
                }
                return;
            }
            MediaBrowserCompat$SubscriptionCallback callback = mediaBrowserCompat$Subscription.getCallback(bundle);
            if (callback != null) {
                if (bundle == null) {
                    if (list == null) {
                        callback.onError(str);
                        return;
                    }
                    this.mNotifyChildrenChangedOptions = bundle2;
                    callback.onChildrenLoaded(str, list);
                    this.mNotifyChildrenChangedOptions = null;
                    return;
                }
                if (list == null) {
                    callback.onError(str, bundle);
                    return;
                }
                this.mNotifyChildrenChangedOptions = bundle2;
                callback.onChildrenLoaded(str, list, bundle);
                this.mNotifyChildrenChangedOptions = null;
            }
        }
    }

    @Override // android.support.v4.media.MediaBrowserCompat$MediaBrowserImpl
    public Bundle getNotifyChildrenChangedOptions() {
        return this.mNotifyChildrenChangedOptions;
    }

    private static String getStateLabel(int i) {
        switch (i) {
            case 0:
                return "CONNECT_STATE_DISCONNECTING";
            case 1:
                return "CONNECT_STATE_DISCONNECTED";
            case 2:
                return "CONNECT_STATE_CONNECTING";
            case 3:
                return "CONNECT_STATE_CONNECTED";
            case 4:
                return "CONNECT_STATE_SUSPENDED";
            default:
                return "UNKNOWN/" + i;
        }
    }

    private boolean isCurrent(Messenger messenger, String str) {
        if (this.mCallbacksMessenger == messenger && this.mState != 0 && this.mState != 1) {
            return true;
        }
        if (this.mState == 0 || this.mState == 1) {
            return false;
        }
        Log.i("MediaBrowserCompat", str + " for " + this.mServiceComponent + " with mCallbacksMessenger=" + this.mCallbacksMessenger + " this=" + this);
        return false;
    }

    void dump() {
        Log.d("MediaBrowserCompat", "MediaBrowserCompat...");
        Log.d("MediaBrowserCompat", "  mServiceComponent=" + this.mServiceComponent);
        Log.d("MediaBrowserCompat", "  mCallback=" + this.mCallback);
        Log.d("MediaBrowserCompat", "  mRootHints=" + this.mRootHints);
        Log.d("MediaBrowserCompat", "  mState=" + getStateLabel(this.mState));
        Log.d("MediaBrowserCompat", "  mServiceConnection=" + this.mServiceConnection);
        Log.d("MediaBrowserCompat", "  mServiceBinderWrapper=" + this.mServiceBinderWrapper);
        Log.d("MediaBrowserCompat", "  mCallbacksMessenger=" + this.mCallbacksMessenger);
        Log.d("MediaBrowserCompat", "  mRootId=" + this.mRootId);
        Log.d("MediaBrowserCompat", "  mMediaSessionToken=" + this.mMediaSessionToken);
    }
}
