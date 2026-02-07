package com.sonyericsson.cameracommon.capturefeedback.contextview;

/* JADX INFO: loaded from: classes.dex */
class TextureContextView$SetInvisibleTask implements Runnable {
    final /* synthetic */ TextureContextView this$0;

    private TextureContextView$SetInvisibleTask(TextureContextView textureContextView) {
        this.this$0 = textureContextView;
    }

    /* synthetic */ TextureContextView$SetInvisibleTask(TextureContextView textureContextView, TextureContextView$1 textureContextView$1) {
        this(textureContextView);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$0.setVisibility(4);
        TextureContextView.access$700(this.this$0).cancel(true);
    }
}
