package android.support.v4.media.session;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.v4.media.MediaMetadataCompat;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class MediaControllerCompat$Callback$MessageHandler extends Handler {
    private static final int MSG_DESTROYED = 8;
    private static final int MSG_EVENT = 1;
    private static final int MSG_SESSION_READY = 13;
    private static final int MSG_UPDATE_CAPTIONING_ENABLED = 11;
    private static final int MSG_UPDATE_EXTRAS = 7;
    private static final int MSG_UPDATE_METADATA = 3;
    private static final int MSG_UPDATE_PLAYBACK_STATE = 2;
    private static final int MSG_UPDATE_QUEUE = 5;
    private static final int MSG_UPDATE_QUEUE_TITLE = 6;
    private static final int MSG_UPDATE_REPEAT_MODE = 9;
    private static final int MSG_UPDATE_SHUFFLE_MODE = 12;
    private static final int MSG_UPDATE_VOLUME = 4;
    boolean mRegistered;
    final /* synthetic */ MediaControllerCompat$Callback this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MediaControllerCompat$Callback$MessageHandler(MediaControllerCompat$Callback mediaControllerCompat$Callback, Looper looper) {
        super(looper);
        this.this$0 = mediaControllerCompat$Callback;
        this.mRegistered = false;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        if (this.mRegistered) {
            switch (message.what) {
                case 1:
                    Bundle data = message.getData();
                    MediaSessionCompat.ensureClassLoader(data);
                    this.this$0.onSessionEvent((String) message.obj, data);
                    break;
                case 2:
                    this.this$0.onPlaybackStateChanged((PlaybackStateCompat) message.obj);
                    break;
                case 3:
                    this.this$0.onMetadataChanged((MediaMetadataCompat) message.obj);
                    break;
                case 4:
                    this.this$0.onAudioInfoChanged((MediaControllerCompat$PlaybackInfo) message.obj);
                    break;
                case 5:
                    this.this$0.onQueueChanged((List) message.obj);
                    break;
                case 6:
                    this.this$0.onQueueTitleChanged((CharSequence) message.obj);
                    break;
                case 7:
                    Bundle bundle = (Bundle) message.obj;
                    MediaSessionCompat.ensureClassLoader(bundle);
                    this.this$0.onExtrasChanged(bundle);
                    break;
                case 8:
                    this.this$0.onSessionDestroyed();
                    break;
                case 9:
                    this.this$0.onRepeatModeChanged(((Integer) message.obj).intValue());
                    break;
                case 11:
                    this.this$0.onCaptioningEnabledChanged(((Boolean) message.obj).booleanValue());
                    break;
                case 12:
                    this.this$0.onShuffleModeChanged(((Integer) message.obj).intValue());
                    break;
                case 13:
                    this.this$0.onSessionReady();
                    break;
            }
        }
    }
}
