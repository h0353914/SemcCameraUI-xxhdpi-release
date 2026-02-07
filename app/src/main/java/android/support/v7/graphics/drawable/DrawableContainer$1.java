package android.support.v7.graphics.drawable;

/* JADX INFO: loaded from: classes.dex */
class DrawableContainer$1 implements Runnable {
    final /* synthetic */ DrawableContainer this$0;

    DrawableContainer$1(DrawableContainer drawableContainer) {
        this.this$0 = drawableContainer;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$0.animate(true);
        this.this$0.invalidateSelf();
    }
}
