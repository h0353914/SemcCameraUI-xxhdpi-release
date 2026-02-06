package com.sonyericsson.cameracommon.capturefeedback.contextview;

import com.sonyericsson.cameracommon.capturefeedback.animation.CaptureFeedbackAnimationCanvas;

class GLSurfaceContextView$AnimationCanvas implements CaptureFeedbackAnimationCanvas {
    final /* synthetic */ GLSurfaceContextView this$0;

    private GLSurfaceContextView$AnimationCanvas(GLSurfaceContextView gLSurfaceContextView) {
        this.this$0 = gLSurfaceContextView;
    }

    /* synthetic */ GLSurfaceContextView$AnimationCanvas(GLSurfaceContextView gLSurfaceContextView, GLSurfaceContextView$1 gLSurfaceContextView$1) {
        this(gLSurfaceContextView);
    }

    @Override // com.sonyericsson.cameracommon.capturefeedback.animation.CaptureFeedbackAnimationCanvas
    public void drawColor(float f, float f2, float f3, float f4) {
        GLSurfaceContextView.access$300(this.this$0).translate(0.0f, 0.0f, 0.2f);
        GLSurfaceContextView.access$300(this.this$0).setColor(f2, f3, f4, f);
        GLSurfaceContextView.access$300(this.this$0).render();
    }
}
