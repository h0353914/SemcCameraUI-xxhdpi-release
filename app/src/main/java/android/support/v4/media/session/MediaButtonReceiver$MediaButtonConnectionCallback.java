package android.support.v4.media.session;

import android.content.BroadcastReceiver$PendingResult;
import android.content.Context;
import android.content.Intent;
import android.os.RemoteException;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.MediaBrowserCompat$ConnectionCallback;
import android.util.Log;
import android.view.KeyEvent;

class MediaButtonReceiver$MediaButtonConnectionCallback extends MediaBrowserCompat$ConnectionCallback {
    private final Context mContext;
    private final Intent mIntent;
    private MediaBrowserCompat mMediaBrowser;
    private final BroadcastReceiver$PendingResult mPendingResult;

    MediaButtonReceiver$MediaButtonConnectionCallback(Context context, Intent intent, BroadcastReceiver$PendingResult broadcastReceiver$PendingResult) {
        this.mContext = context;
        this.mIntent = intent;
        this.mPendingResult = broadcastReceiver$PendingResult;
    }

    void setMediaBrowser(MediaBrowserCompat mediaBrowserCompat) {
        this.mMediaBrowser = mediaBrowserCompat;
    }

    @Override // android.support.v4.media.MediaBrowserCompat$ConnectionCallback
    public void onConnected() {
        try {
            new MediaControllerCompat(this.mContext, this.mMediaBrowser.getSessionToken()).dispatchMediaButtonEvent((KeyEvent) this.mIntent.getParcelableExtra("android.intent.extra.KEY_EVENT"));
        } catch (RemoteException e) {
            Log.e("MediaButtonReceiver", "Failed to create a media controller", e);
        }
        finish();
    }

    @Override // android.support.v4.media.MediaBrowserCompat$ConnectionCallback
    public void onConnectionSuspended() {
        finish();
    }

    @Override // android.support.v4.media.MediaBrowserCompat$ConnectionCallback
    public void onConnectionFailed() {
        finish();
    }

    private void finish() {
        this.mMediaBrowser.disconnect();
        this.mPendingResult.finish();
    }
}
