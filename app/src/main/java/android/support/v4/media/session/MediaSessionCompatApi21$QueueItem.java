package android.support.v4.media.session;

import android.media.MediaDescription;
import android.media.session.MediaSession$QueueItem;

class MediaSessionCompatApi21$QueueItem {
    public static Object createItem(Object obj, long j) {
        return new MediaSession$QueueItem((MediaDescription) obj, j);
    }

    public static Object getDescription(Object obj) {
        return ((MediaSession$QueueItem) obj).getDescription();
    }

    public static long getQueueId(Object obj) {
        return ((MediaSession$QueueItem) obj).getQueueId();
    }

    private MediaSessionCompatApi21$QueueItem() {
    }
}
