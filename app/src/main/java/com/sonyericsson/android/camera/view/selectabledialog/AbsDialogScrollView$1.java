package com.sonyericsson.android.camera.view.selectabledialog;

class AbsDialogScrollView$1 implements Runnable {
    final /* synthetic */ AbsDialogScrollView this$0;

    AbsDialogScrollView$1(AbsDialogScrollView absDialogScrollView) {
        this.this$0 = absDialogScrollView;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$0.onInitializeScroll();
    }
}
