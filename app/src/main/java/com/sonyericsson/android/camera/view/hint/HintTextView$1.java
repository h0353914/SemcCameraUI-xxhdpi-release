package com.sonyericsson.android.camera.view.hint;

/* JADX INFO: loaded from: classes.dex */
class HintTextView$1 implements Runnable {
    final /* synthetic */ HintTextView this$0;

    HintTextView$1(HintTextView hintTextView) {
        this.this$0 = hintTextView;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$0.sendAccessibilityEvent(32);
    }
}
