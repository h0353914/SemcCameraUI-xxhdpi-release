package android.support.v4.media.session;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.media.session.MediaController;
import android.media.session.MediaController$Callback;
import android.media.session.MediaSession$QueueItem;
import android.media.session.MediaSession$Token;
import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import android.support.annotation.RequiresApi;
import android.view.KeyEvent;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@RequiresApi(21)
class MediaControllerCompatApi21 {
    public static Object fromToken(Context context, Object obj) {
        return new MediaController(context, (MediaSession$Token) obj);
    }

    public static Object createCallback(MediaControllerCompatApi21$Callback mediaControllerCompatApi21$Callback) {
        return new MediaControllerCompatApi21$CallbackProxy(mediaControllerCompatApi21$Callback);
    }

    public static void registerCallback(Object obj, Object obj2, Handler handler) {
        ((MediaController) obj).registerCallback((MediaController$Callback) obj2, handler);
    }

    public static void unregisterCallback(Object obj, Object obj2) {
        ((MediaController) obj).unregisterCallback((MediaController$Callback) obj2);
    }

    public static void setMediaController(Activity activity, Object obj) {
        activity.setMediaController((MediaController) obj);
    }

    public static Object getMediaController(Activity activity) {
        return activity.getMediaController();
    }

    public static Object getSessionToken(Object obj) {
        return ((MediaController) obj).getSessionToken();
    }

    public static Object getTransportControls(Object obj) {
        return ((MediaController) obj).getTransportControls();
    }

    public static Object getPlaybackState(Object obj) {
        return ((MediaController) obj).getPlaybackState();
    }

    public static Object getMetadata(Object obj) {
        return ((MediaController) obj).getMetadata();
    }

    public static List<Object> getQueue(Object obj) {
        List<MediaSession$QueueItem> queue = ((MediaController) obj).getQueue();
        if (queue == null) {
            return null;
        }
        return new ArrayList(queue);
    }

    public static CharSequence getQueueTitle(Object obj) {
        return ((MediaController) obj).getQueueTitle();
    }

    public static Bundle getExtras(Object obj) {
        return ((MediaController) obj).getExtras();
    }

    public static int getRatingType(Object obj) {
        return ((MediaController) obj).getRatingType();
    }

    public static long getFlags(Object obj) {
        return ((MediaController) obj).getFlags();
    }

    public static Object getPlaybackInfo(Object obj) {
        return ((MediaController) obj).getPlaybackInfo();
    }

    public static PendingIntent getSessionActivity(Object obj) {
        return ((MediaController) obj).getSessionActivity();
    }

    public static boolean dispatchMediaButtonEvent(Object obj, KeyEvent keyEvent) {
        return ((MediaController) obj).dispatchMediaButtonEvent(keyEvent);
    }

    public static void setVolumeTo(Object obj, int i, int i2) {
        ((MediaController) obj).setVolumeTo(i, i2);
    }

    public static void adjustVolume(Object obj, int i, int i2) {
        ((MediaController) obj).adjustVolume(i, i2);
    }

    public static void sendCommand(Object obj, String str, Bundle bundle, ResultReceiver resultReceiver) {
        ((MediaController) obj).sendCommand(str, bundle, resultReceiver);
    }

    public static String getPackageName(Object obj) {
        return ((MediaController) obj).getPackageName();
    }

    private MediaControllerCompatApi21() {
    }
}
