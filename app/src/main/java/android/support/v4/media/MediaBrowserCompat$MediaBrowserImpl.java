package android.support.v4.media;

import android.content.ComponentName;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.media.session.MediaSessionCompat$Token;

interface MediaBrowserCompat$MediaBrowserImpl {
    void connect();

    void disconnect();

    @Nullable
    Bundle getExtras();

    void getItem(@NonNull String str, @NonNull MediaBrowserCompat$ItemCallback mediaBrowserCompat$ItemCallback);

    @Nullable
    Bundle getNotifyChildrenChangedOptions();

    @NonNull
    String getRoot();

    ComponentName getServiceComponent();

    @NonNull
    MediaSessionCompat$Token getSessionToken();

    boolean isConnected();

    void search(@NonNull String str, Bundle bundle, @NonNull MediaBrowserCompat$SearchCallback mediaBrowserCompat$SearchCallback);

    void sendCustomAction(@NonNull String str, Bundle bundle, @Nullable MediaBrowserCompat$CustomActionCallback mediaBrowserCompat$CustomActionCallback);

    void subscribe(@NonNull String str, @Nullable Bundle bundle, @NonNull MediaBrowserCompat$SubscriptionCallback mediaBrowserCompat$SubscriptionCallback);

    void unsubscribe(@NonNull String str, MediaBrowserCompat$SubscriptionCallback mediaBrowserCompat$SubscriptionCallback);
}
