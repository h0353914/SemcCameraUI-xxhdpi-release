package com.sonyericsson.android.camera.view.tutorial;

import android.media.MediaPlayer;
import android.media.MediaPlayer$OnPreparedListener;

/* JADX INFO: loaded from: classes.dex */
class PagingTutorialContentView$3 implements MediaPlayer$OnPreparedListener {
    final /* synthetic */ PagingTutorialContentView this$0;

    PagingTutorialContentView$3(PagingTutorialContentView pagingTutorialContentView) {
        this.this$0 = pagingTutorialContentView;
    }

    @Override // android.media.MediaPlayer$OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        PagingTutorialContentView.access$200(this.this$0).updateScale();
        PagingTutorialContentView.access$1000(this.this$0).start();
    }
}
