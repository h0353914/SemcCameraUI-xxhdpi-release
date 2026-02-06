package com.sonyericsson.android.camera.view.tutorial;

import android.media.MediaPlayer;
import android.media.MediaPlayer$OnErrorListener;
import com.sonyericsson.android.camera.util.CamLog;

class PagingTutorialContentView$4 implements MediaPlayer$OnErrorListener {
    final /* synthetic */ PagingTutorialContentView this$0;

    PagingTutorialContentView$4(PagingTutorialContentView pagingTutorialContentView) {
        this.this$0 = pagingTutorialContentView;
    }

    @Override // android.media.MediaPlayer$OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        CamLog.e("onError() : MediaPlayer = " + mediaPlayer.hashCode() + " what = " + i + " extra = " + i2);
        return false;
    }
}
