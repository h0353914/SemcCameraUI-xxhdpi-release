package com.sonyericsson.cameracommon.capturefeedback.contextview;

import com.sonymobile.cameracommon.opengl.SimpleFrame;

/* JADX INFO: loaded from: classes.dex */
class GLSurfaceContextView$SetupRelatedToSurfaceSizeTask implements Runnable {
    final /* synthetic */ GLSurfaceContextView this$0;

    private GLSurfaceContextView$SetupRelatedToSurfaceSizeTask(GLSurfaceContextView gLSurfaceContextView) {
        this.this$0 = gLSurfaceContextView;
    }

    /* synthetic */ GLSurfaceContextView$SetupRelatedToSurfaceSizeTask(GLSurfaceContextView gLSurfaceContextView, GLSurfaceContextView$1 gLSurfaceContextView$1) {
        this(gLSurfaceContextView);
    }

    @Override // java.lang.Runnable
    public void run() {
        GLSurfaceContextView.access$600(this.this$0, this.this$0.getWidth(), this.this$0.getHeight());
        if (GLSurfaceContextView.access$300(this.this$0) == null) {
            GLSurfaceContextView.access$700(this.this$0);
            GLSurfaceContextView.access$302(this.this$0, new SimpleFrame(this.this$0.getContext(), this.this$0));
            GLSurfaceContextView.access$300(this.this$0).setColor(0.0f, 0.0f, 0.0f, 0.0f);
            GLSurfaceContextView.access$300(this.this$0).setShaderProgram(GLSurfaceContextView.access$800(this.this$0));
            GLSurfaceContextView.access$300(this.this$0).setVisibility(true);
        }
    }
}
