package com.sonyericsson.android.camera.view.tutorial;

import android.graphics.SurfaceTexture;
import android.view.TextureView$SurfaceTextureListener;

class PagingTutorialContentView$2 implements TextureView$SurfaceTextureListener {
    final /* synthetic */ PagingTutorialContentView this$0;
    final /* synthetic */ int val$position;

    @Override // android.view.TextureView$SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
    }

    @Override // android.view.TextureView$SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    PagingTutorialContentView$2(PagingTutorialContentView pagingTutorialContentView, int i) {
        this.this$0 = pagingTutorialContentView;
        this.val$position = i;
    }

    @Override // android.view.TextureView$SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        PagingTutorialContentView.access$602(this.this$0, surfaceTexture);
        PagingTutorialContentView.access$700(this.this$0, this.val$position);
    }

    @Override // android.view.TextureView$SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        PagingTutorialContentView.access$500(this.this$0);
        return false;
    }
}
