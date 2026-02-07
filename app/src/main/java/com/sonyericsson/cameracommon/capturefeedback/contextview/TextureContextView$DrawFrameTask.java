package com.sonyericsson.cameracommon.capturefeedback.contextview;

import com.sonyericsson.cameracommon.capturefeedback.animation.CaptureFeedbackAnimation;

/* JADX INFO: loaded from: classes.dex */
class TextureContextView$DrawFrameTask implements Runnable {
    final /* synthetic */ TextureContextView this$0;

    private TextureContextView$DrawFrameTask(TextureContextView textureContextView) {
        this.this$0 = textureContextView;
    }

    /* synthetic */ TextureContextView$DrawFrameTask(TextureContextView textureContextView, TextureContextView$1 textureContextView$1) {
        this(textureContextView);
    }

    @Override // java.lang.Runnable
    public void run() {
        if (TextureContextView.access$300(this.this$0).lock()) {
            TextureContextView.access$300(this.this$0).clear();
            CaptureFeedbackAnimation captureFeedbackAnimationAccess$400 = TextureContextView.access$400(this.this$0);
            boolean zDraw = captureFeedbackAnimationAccess$400 != null ? true ^ captureFeedbackAnimationAccess$400.draw(TextureContextView.access$300(this.this$0), TextureContextView.access$500(this.this$0).elapsedTimeMillis()) : true;
            TextureContextView.access$300(this.this$0).unlock();
            if (zDraw) {
                TextureContextView.access$500(this.this$0).stop();
                this.this$0.post(TextureContextView.access$600(this.this$0));
            }
        }
    }
}
