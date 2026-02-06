package android.support.v4.media;

import android.content.ComponentName;
import android.content.Context;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;

@RequiresApi(23)
class MediaBrowserCompat$MediaBrowserImplApi23 extends MediaBrowserCompat$MediaBrowserImplApi21 {
    MediaBrowserCompat$MediaBrowserImplApi23(Context context, ComponentName componentName, MediaBrowserCompat$ConnectionCallback mediaBrowserCompat$ConnectionCallback, Bundle bundle) {
        super(context, componentName, mediaBrowserCompat$ConnectionCallback, bundle);
    }

    @Override // android.support.v4.media.MediaBrowserCompat$MediaBrowserImplApi21, android.support.v4.media.MediaBrowserCompat$MediaBrowserImpl
    public void getItem(@NonNull String str, @NonNull MediaBrowserCompat$ItemCallback mediaBrowserCompat$ItemCallback) {
        if (this.mServiceBinderWrapper == null) {
            MediaBrowserCompatApi23.getItem(this.mBrowserObj, str, mediaBrowserCompat$ItemCallback.mItemCallbackObj);
        } else {
            super.getItem(str, mediaBrowserCompat$ItemCallback);
        }
    }
}
