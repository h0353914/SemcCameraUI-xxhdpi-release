package android.support.v4.media.session;

import android.media.Rating;
import android.media.session.MediaController$TransportControls;
import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public class MediaControllerCompatApi21$TransportControls {
    public static void play(Object obj) {
        ((MediaController$TransportControls) obj).play();
    }

    public static void pause(Object obj) {
        ((MediaController$TransportControls) obj).pause();
    }

    public static void stop(Object obj) {
        ((MediaController$TransportControls) obj).stop();
    }

    public static void seekTo(Object obj, long j) {
        ((MediaController$TransportControls) obj).seekTo(j);
    }

    public static void fastForward(Object obj) {
        ((MediaController$TransportControls) obj).fastForward();
    }

    public static void rewind(Object obj) {
        ((MediaController$TransportControls) obj).rewind();
    }

    public static void skipToNext(Object obj) {
        ((MediaController$TransportControls) obj).skipToNext();
    }

    public static void skipToPrevious(Object obj) {
        ((MediaController$TransportControls) obj).skipToPrevious();
    }

    public static void setRating(Object obj, Object obj2) {
        ((MediaController$TransportControls) obj).setRating((Rating) obj2);
    }

    public static void playFromMediaId(Object obj, String str, Bundle bundle) {
        ((MediaController$TransportControls) obj).playFromMediaId(str, bundle);
    }

    public static void playFromSearch(Object obj, String str, Bundle bundle) {
        ((MediaController$TransportControls) obj).playFromSearch(str, bundle);
    }

    public static void skipToQueueItem(Object obj, long j) {
        ((MediaController$TransportControls) obj).skipToQueueItem(j);
    }

    public static void sendCustomAction(Object obj, String str, Bundle bundle) {
        ((MediaController$TransportControls) obj).sendCustomAction(str, bundle);
    }

    private MediaControllerCompatApi21$TransportControls() {
    }
}
