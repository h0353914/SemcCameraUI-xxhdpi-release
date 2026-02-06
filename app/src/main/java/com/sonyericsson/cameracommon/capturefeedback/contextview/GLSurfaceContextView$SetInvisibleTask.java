package com.sonyericsson.cameracommon.capturefeedback.contextview;

class GLSurfaceContextView$SetInvisibleTask implements Runnable {
    final /* synthetic */ GLSurfaceContextView this$0;

    private GLSurfaceContextView$SetInvisibleTask(GLSurfaceContextView gLSurfaceContextView) {
        this.this$0 = gLSurfaceContextView;
    }

    /* synthetic */ GLSurfaceContextView$SetInvisibleTask(GLSurfaceContextView gLSurfaceContextView, GLSurfaceContextView$1 gLSurfaceContextView$1) {
        this(gLSurfaceContextView);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$0.setVisibility(4);
        this.this$0.setRenderMode(0);
    }
}
