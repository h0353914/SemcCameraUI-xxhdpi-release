package android.support.v4.media.session;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.v4.media.MediaSessionManager$RemoteUserInfo;

class MediaSessionCompat$Callback$CallbackHandler extends Handler {
    private static final int MSG_MEDIA_PLAY_PAUSE_KEY_DOUBLE_TAP_TIMEOUT = 1;
    final /* synthetic */ MediaSessionCompat$Callback this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MediaSessionCompat$Callback$CallbackHandler(MediaSessionCompat$Callback mediaSessionCompat$Callback, Looper looper) {
        super(looper);
        this.this$0 = mediaSessionCompat$Callback;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        if (message.what == 1) {
            this.this$0.handleMediaPlayPauseKeySingleTapIfPending((MediaSessionManager$RemoteUserInfo) message.obj);
        }
    }
}
