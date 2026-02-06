package com.sonyericsson.cameracommon.capturefeedback.contextview;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.PorterDuff$Mode;
import com.sonyericsson.cameracommon.capturefeedback.animation.CaptureFeedbackAnimationCanvas;

class TextureContextView$AnimationCanvas implements CaptureFeedbackAnimationCanvas {
    private Canvas mCanvas;
    final /* synthetic */ TextureContextView this$0;

    private TextureContextView$AnimationCanvas(TextureContextView textureContextView) {
        this.this$0 = textureContextView;
        this.mCanvas = null;
    }

    /* synthetic */ TextureContextView$AnimationCanvas(TextureContextView textureContextView, TextureContextView$1 textureContextView$1) {
        this(textureContextView);
    }

    public boolean lock() {
        this.mCanvas = this.this$0.lockCanvas();
        return this.mCanvas != null;
    }

    public void unlock() {
        if (this.mCanvas != null) {
            this.this$0.unlockCanvasAndPost(this.mCanvas);
        }
    }

    public void clear() {
        if (this.mCanvas == null) {
            return;
        }
        this.mCanvas.drawColor(0, PorterDuff$Mode.CLEAR);
    }

    @Override // com.sonyericsson.cameracommon.capturefeedback.animation.CaptureFeedbackAnimationCanvas
    public void drawColor(float f, float f2, float f3, float f4) {
        if (this.mCanvas == null) {
            return;
        }
        this.mCanvas.drawColor(Color.argb((int) (f * 255.0f), (int) (f2 * 255.0f), (int) (f3 * 255.0f), (int) (255.0f * f4)), PorterDuff$Mode.SRC_OVER);
    }
}
