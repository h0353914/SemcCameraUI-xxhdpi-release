package com.sonyericsson.cameracommon.rotatableview;

/* JADX INFO: loaded from: classes.dex */
class RotatableToast$1 implements Runnable {
    final /* synthetic */ RotatableToast this$0;

    RotatableToast$1(RotatableToast rotatableToast) {
        this.this$0 = rotatableToast;
    }

    @Override // java.lang.Runnable
    public void run() {
        RotatableToast.access$100(this.this$0).startAnimation(RotatableToast.access$000(this.this$0));
    }
}
