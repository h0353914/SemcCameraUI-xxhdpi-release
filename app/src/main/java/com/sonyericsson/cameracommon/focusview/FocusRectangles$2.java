package com.sonyericsson.cameracommon.focusview;

import android.widget.ImageView;

/* JADX INFO: loaded from: classes.dex */
class FocusRectangles$2 implements Runnable {
    final /* synthetic */ FocusRectangles this$0;

    FocusRectangles$2(FocusRectangles focusRectangles) {
        this.this$0 = focusRectangles;
    }

    @Override // java.lang.Runnable
    public void run() {
        ImageView imageView = (ImageView) FocusRectangles.access$200(this.this$0).findViewById(2131296347);
        imageView.setVisibility(0);
        if (FocusRectangles.access$3500(this.this$0)) {
            FocusRectangles.access$300(this.this$0).playTouchUpAnimation(imageView);
        } else {
            FocusRectangles.access$200(this.this$0).setVisibility(4);
        }
    }
}
