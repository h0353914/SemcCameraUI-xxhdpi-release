package android.support.v4.media;

import android.content.ComponentName;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Messenger;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.v4.app.BundleCompat;
import android.support.v4.media.session.IMediaSession;
import android.support.v4.media.session.IMediaSession$Stub;
import android.support.v4.media.session.MediaSessionCompat$Token;
import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import android.util.Log;
import java.util.List;

@RequiresApi(21)
class MediaBrowserCompat$MediaBrowserImplApi21 implements MediaBrowserCompat$MediaBrowserImpl, MediaBrowserCompat$MediaBrowserServiceCallbackImpl, MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal {
    protected final Object mBrowserObj;
    protected Messenger mCallbacksMessenger;
    final Context mContext;
    private MediaSessionCompat$Token mMediaSessionToken;
    private Bundle mNotifyChildrenChangedOptions;
    protected final Bundle mRootHints;
    protected MediaBrowserCompat$ServiceBinderWrapper mServiceBinderWrapper;
    protected int mServiceVersion;
    protected final MediaBrowserCompat$CallbackHandler mHandler = new MediaBrowserCompat$CallbackHandler(this);
    private final ArrayMap<String, MediaBrowserCompat$Subscription> mSubscriptions = new ArrayMap<>();

    @Override // android.support.v4.media.MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal
    public void onConnectionFailed() {
    }

    @Override // android.support.v4.media.MediaBrowserCompat$MediaBrowserServiceCallbackImpl
    public void onConnectionFailed(Messenger messenger) {
    }

    @Override // android.support.v4.media.MediaBrowserCompat$MediaBrowserServiceCallbackImpl
    public void onServiceConnected(Messenger messenger, String str, MediaSessionCompat$Token mediaSessionCompat$Token, Bundle bundle) {
    }

    MediaBrowserCompat$MediaBrowserImplApi21(Context context, ComponentName componentName, MediaBrowserCompat$ConnectionCallback mediaBrowserCompat$ConnectionCallback, Bundle bundle) {
        this.mContext = context;
        this.mRootHints = bundle != null ? new Bundle(bundle) : new Bundle();
        this.mRootHints.putInt("extra_client_version", 1);
        mediaBrowserCompat$ConnectionCallback.setInternalConnectionCallback(this);
        this.mBrowserObj = MediaBrowserCompatApi21.createBrowser(context, componentName, mediaBrowserCompat$ConnectionCallback.mConnectionCallbackObj, this.mRootHints);
    }

    @Override // android.support.v4.media.MediaBrowserCompat$MediaBrowserImpl
    public void connect() {
        MediaBrowserCompatApi21.connect(this.mBrowserObj);
    }

    @Override // android.support.v4.media.MediaBrowserCompat$MediaBrowserImpl
    public void disconnect() {
        if (this.mServiceBinderWrapper != null && this.mCallbacksMessenger != null) {
            try {
                this.mServiceBinderWrapper.unregisterCallbackMessenger(this.mCallbacksMessenger);
            } catch (RemoteException unused) {
                Log.i("MediaBrowserCompat", "Remote error unregistering client messenger.");
            }
        }
        MediaBrowserCompatApi21.disconnect(this.mBrowserObj);
    }

    @Override // android.support.v4.media.MediaBrowserCompat$MediaBrowserImpl
    public boolean isConnected() {
        return MediaBrowserCompatApi21.isConnected(this.mBrowserObj);
    }

    @Override // android.support.v4.media.MediaBrowserCompat$MediaBrowserImpl
    public ComponentName getServiceComponent() {
        return MediaBrowserCompatApi21.getServiceComponent(this.mBrowserObj);
    }

    @Override // android.support.v4.media.MediaBrowserCompat$MediaBrowserImpl
    @NonNull
    public String getRoot() {
        return MediaBrowserCompatApi21.getRoot(this.mBrowserObj);
    }

    @Override // android.support.v4.media.MediaBrowserCompat$MediaBrowserImpl
    @Nullable
    public Bundle getExtras() {
        return MediaBrowserCompatApi21.getExtras(this.mBrowserObj);
    }

    @Override // android.support.v4.media.MediaBrowserCompat$MediaBrowserImpl
    @NonNull
    public MediaSessionCompat$Token getSessionToken() {
        if (this.mMediaSessionToken == null) {
            this.mMediaSessionToken = MediaSessionCompat$Token.fromToken(MediaBrowserCompatApi21.getSessionToken(this.mBrowserObj));
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
        mediaBrowserCompat$SubscriptionCallback.setSubscription(mediaBrowserCompat$Subscription);
        Bundle bundle2 = bundle == null ? null : new Bundle(bundle);
        mediaBrowserCompat$Subscription.putCallback(bundle2, mediaBrowserCompat$SubscriptionCallback);
        if (this.mServiceBinderWrapper == null) {
            MediaBrowserCompatApi21.subscribe(this.mBrowserObj, str, mediaBrowserCompat$SubscriptionCallback.mSubscriptionCallbackObj);
            return;
        }
        try {
            this.mServiceBinderWrapper.addSubscription(str, mediaBrowserCompat$SubscriptionCallback.mToken, bundle2, this.mCallbacksMessenger);
        } catch (RemoteException unused) {
            Log.i("MediaBrowserCompat", "Remote error subscribing media item: " + str);
        }
    }

    @Override // android.support.v4.media.MediaBrowserCompat$MediaBrowserImpl
    public void unsubscribe(@NonNull String str, MediaBrowserCompat$SubscriptionCallback mediaBrowserCompat$SubscriptionCallback) {
        MediaBrowserCompat$Subscription mediaBrowserCompat$Subscription = this.mSubscriptions.get(str);
        if (mediaBrowserCompat$Subscription == null) {
            return;
        }
        if (this.mServiceBinderWrapper != null) {
            try {
                if (mediaBrowserCompat$SubscriptionCallback == null) {
                    this.mServiceBinderWrapper.removeSubscription(str, null, this.mCallbacksMessenger);
                } else {
                    List<MediaBrowserCompat$SubscriptionCallback> callbacks = mediaBrowserCompat$Subscription.getCallbacks();
                    List<Bundle> optionsList = mediaBrowserCompat$Subscription.getOptionsList();
                    for (int size = callbacks.size() - 1; size >= 0; size--) {
                        if (callbacks.get(size) == mediaBrowserCompat$SubscriptionCallback) {
                            this.mServiceBinderWrapper.removeSubscription(str, mediaBrowserCompat$SubscriptionCallback.mToken, this.mCallbacksMessenger);
                            callbacks.remove(size);
                            optionsList.remove(size);
                        }
                    }
                }
            } catch (RemoteException unused) {
                Log.d("MediaBrowserCompat", "removeSubscription failed with RemoteException parentId=" + str);
            }
        } else if (mediaBrowserCompat$SubscriptionCallback == null) {
            MediaBrowserCompatApi21.unsubscribe(this.mBrowserObj, str);
        } else {
            List<MediaBrowserCompat$SubscriptionCallback> callbacks2 = mediaBrowserCompat$Subscription.getCallbacks();
            List<Bundle> optionsList2 = mediaBrowserCompat$Subscription.getOptionsList();
            for (int size2 = callbacks2.size() - 1; size2 >= 0; size2--) {
                if (callbacks2.get(size2) == mediaBrowserCompat$SubscriptionCallback) {
                    callbacks2.remove(size2);
                    optionsList2.remove(size2);
                }
            }
            if (callbacks2.size() == 0) {
                MediaBrowserCompatApi21.unsubscribe(this.mBrowserObj, str);
            }
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
        if (!MediaBrowserCompatApi21.isConnected(this.mBrowserObj)) {
            Log.i("MediaBrowserCompat", "Not connected, unable to retrieve the MediaItem.");
            this.mHandler.post(new MediaBrowserCompat$MediaBrowserImplApi21$1(this, mediaBrowserCompat$ItemCallback, str));
            return;
        }
        if (this.mServiceBinderWrapper == null) {
            this.mHandler.post(new MediaBrowserCompat$MediaBrowserImplApi21$2(this, mediaBrowserCompat$ItemCallback, str));
            return;
        }
        try {
            this.mServiceBinderWrapper.getMediaItem(str, new MediaBrowserCompat$ItemReceiver(str, mediaBrowserCompat$ItemCallback, this.mHandler), this.mCallbacksMessenger);
        } catch (RemoteException unused) {
            Log.i("MediaBrowserCompat", "Remote error getting media item: " + str);
            this.mHandler.post(new MediaBrowserCompat$MediaBrowserImplApi21$3(this, mediaBrowserCompat$ItemCallback, str));
        }
    }

    @Override // android.support.v4.media.MediaBrowserCompat$MediaBrowserImpl
    public void search(@NonNull String str, Bundle bundle, @NonNull MediaBrowserCompat$SearchCallback mediaBrowserCompat$SearchCallback) {
        if (!isConnected()) {
            throw new IllegalStateException("search() called while not connected");
        }
        if (this.mServiceBinderWrapper == null) {
            Log.i("MediaBrowserCompat", "The connected service doesn't support search.");
            this.mHandler.post(new MediaBrowserCompat$MediaBrowserImplApi21$4(this, mediaBrowserCompat$SearchCallback, str, bundle));
            return;
        }
        try {
            this.mServiceBinderWrapper.search(str, bundle, new MediaBrowserCompat$SearchResultReceiver(str, bundle, mediaBrowserCompat$SearchCallback, this.mHandler), this.mCallbacksMessenger);
        } catch (RemoteException e) {
            Log.i("MediaBrowserCompat", "Remote error searching items with query: " + str, e);
            this.mHandler.post(new MediaBrowserCompat$MediaBrowserImplApi21$5(this, mediaBrowserCompat$SearchCallback, str, bundle));
        }
    }

    @Override // android.support.v4.media.MediaBrowserCompat$MediaBrowserImpl
    public void sendCustomAction(@NonNull String str, Bundle bundle, @Nullable MediaBrowserCompat$CustomActionCallback mediaBrowserCompat$CustomActionCallback) {
        if (!isConnected()) {
            throw new IllegalStateException("Cannot send a custom action (" + str + ") with extras " + bundle + " because the browser is not connected to the service.");
        }
        if (this.mServiceBinderWrapper == null) {
            Log.i("MediaBrowserCompat", "The connected service doesn't support sendCustomAction.");
            if (mediaBrowserCompat$CustomActionCallback != null) {
                this.mHandler.post(new MediaBrowserCompat$MediaBrowserImplApi21$6(this, mediaBrowserCompat$CustomActionCallback, str, bundle));
            }
        }
        try {
            this.mServiceBinderWrapper.sendCustomAction(str, bundle, new MediaBrowserCompat$CustomActionResultReceiver(str, bundle, mediaBrowserCompat$CustomActionCallback, this.mHandler), this.mCallbacksMessenger);
        } catch (RemoteException e) {
            Log.i("MediaBrowserCompat", "Remote error sending a custom action: action=" + str + ", extras=" + bundle, e);
            if (mediaBrowserCompat$CustomActionCallback != null) {
                this.mHandler.post(new MediaBrowserCompat$MediaBrowserImplApi21$7(this, mediaBrowserCompat$CustomActionCallback, str, bundle));
            }
        }
    }

    @Override // android.support.v4.media.MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal
    public void onConnected() {
        Bundle extras = MediaBrowserCompatApi21.getExtras(this.mBrowserObj);
        if (extras == null) {
            return;
        }
        this.mServiceVersion = extras.getInt("extra_service_version", 0);
        IBinder binder = BundleCompat.getBinder(extras, "extra_messenger");
        if (binder != null) {
            this.mServiceBinderWrapper = new MediaBrowserCompat$ServiceBinderWrapper(binder, this.mRootHints);
            this.mCallbacksMessenger = new Messenger(this.mHandler);
            this.mHandler.setCallbacksMessenger(this.mCallbacksMessenger);
            try {
                this.mServiceBinderWrapper.registerCallbackMessenger(this.mContext, this.mCallbacksMessenger);
            } catch (RemoteException unused) {
                Log.i("MediaBrowserCompat", "Remote error registering client messenger.");
            }
        }
        IMediaSession iMediaSessionAsInterface = IMediaSession$Stub.asInterface(BundleCompat.getBinder(extras, "extra_session_binder"));
        if (iMediaSessionAsInterface != null) {
            this.mMediaSessionToken = MediaSessionCompat$Token.fromToken(MediaBrowserCompatApi21.getSessionToken(this.mBrowserObj), iMediaSessionAsInterface);
        }
    }

    @Override // android.support.v4.media.MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal
    public void onConnectionSuspended() {
        this.mServiceBinderWrapper = null;
        this.mCallbacksMessenger = null;
        this.mMediaSessionToken = null;
        this.mHandler.setCallbacksMessenger(null);
    }

    @Override // android.support.v4.media.MediaBrowserCompat$MediaBrowserServiceCallbackImpl
    public void onLoadChildren(Messenger messenger, String str, List list, Bundle bundle, Bundle bundle2) {
        if (this.mCallbacksMessenger != messenger) {
            return;
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

    @Override // android.support.v4.media.MediaBrowserCompat$MediaBrowserImpl
    public Bundle getNotifyChildrenChangedOptions() {
        return this.mNotifyChildrenChangedOptions;
    }
}
