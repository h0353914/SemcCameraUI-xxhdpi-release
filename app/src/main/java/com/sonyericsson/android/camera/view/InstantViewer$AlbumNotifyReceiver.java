package com.sonyericsson.android.camera.view;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.sonyericsson.android.camera.util.CamLog;

class InstantViewer$AlbumNotifyReceiver extends BroadcastReceiver {
    public static final String TAG = "AlbumNotifyReceiver";
    final /* synthetic */ InstantViewer this$0;

    private InstantViewer$AlbumNotifyReceiver(InstantViewer instantViewer) {
        this.this$0 = instantViewer;
    }

    /* synthetic */ InstantViewer$AlbumNotifyReceiver(InstantViewer instantViewer, InstantViewer$1 instantViewer$1) {
        this(instantViewer);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if ("com.sonyericsson.album.intent.action.FAST_VIEW_MODE_LAUNCHED".equals(intent.getAction())) {
            if (CamLog.VERBOSE) {
                CamLog.d("onReceive()");
            }
            this.this$0.hide();
        }
    }
}
