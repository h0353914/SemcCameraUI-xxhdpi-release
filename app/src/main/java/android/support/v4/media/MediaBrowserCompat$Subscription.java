package android.support.v4.media;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;

class MediaBrowserCompat$Subscription {
    private final List<MediaBrowserCompat$SubscriptionCallback> mCallbacks = new ArrayList();
    private final List<Bundle> mOptionsList = new ArrayList();

    public boolean isEmpty() {
        return this.mCallbacks.isEmpty();
    }

    public List<Bundle> getOptionsList() {
        return this.mOptionsList;
    }

    public List<MediaBrowserCompat$SubscriptionCallback> getCallbacks() {
        return this.mCallbacks;
    }

    public MediaBrowserCompat$SubscriptionCallback getCallback(Bundle bundle) {
        for (int i = 0; i < this.mOptionsList.size(); i++) {
            if (MediaBrowserCompatUtils.areSameOptions(this.mOptionsList.get(i), bundle)) {
                return this.mCallbacks.get(i);
            }
        }
        return null;
    }

    public void putCallback(Bundle bundle, MediaBrowserCompat$SubscriptionCallback mediaBrowserCompat$SubscriptionCallback) {
        for (int i = 0; i < this.mOptionsList.size(); i++) {
            if (MediaBrowserCompatUtils.areSameOptions(this.mOptionsList.get(i), bundle)) {
                this.mCallbacks.set(i, mediaBrowserCompat$SubscriptionCallback);
                return;
            }
        }
        this.mCallbacks.add(mediaBrowserCompat$SubscriptionCallback);
        this.mOptionsList.add(bundle);
    }
}
