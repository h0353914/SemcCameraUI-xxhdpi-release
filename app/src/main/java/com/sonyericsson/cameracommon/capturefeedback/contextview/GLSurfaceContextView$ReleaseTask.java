package com.sonyericsson.cameracommon.capturefeedback.contextview;

class GLSurfaceContextView$ReleaseTask implements Runnable {
    final /* synthetic */ GLSurfaceContextView this$0;

    private GLSurfaceContextView$ReleaseTask(GLSurfaceContextView gLSurfaceContextView) {
        this.this$0 = gLSurfaceContextView;
    }

    /* synthetic */ GLSurfaceContextView$ReleaseTask(GLSurfaceContextView gLSurfaceContextView, GLSurfaceContextView$1 gLSurfaceContextView$1) {
        this(gLSurfaceContextView);
    }

    @Override // java.lang.Runnable
    public void run() {
        if (GLSurfaceContextView.access$300(this.this$0) != null) {
            GLSurfaceContextView.access$300(this.this$0).release();
            GLSurfaceContextView.access$302(this.this$0, null);
        }
        GLSurfaceContextView.access$400(this.this$0);
    }
}
