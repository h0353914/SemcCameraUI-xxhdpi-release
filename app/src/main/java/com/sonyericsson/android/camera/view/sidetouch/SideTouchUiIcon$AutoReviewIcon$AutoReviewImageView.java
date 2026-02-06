package com.sonyericsson.android.camera.view.sidetouch;

import android.content.Context;
import android.widget.ImageView;

class SideTouchUiIcon$AutoReviewIcon$AutoReviewImageView extends ImageView {
    final /* synthetic */ SideTouchUiIcon$AutoReviewIcon this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SideTouchUiIcon$AutoReviewIcon$AutoReviewImageView(SideTouchUiIcon$AutoReviewIcon sideTouchUiIcon$AutoReviewIcon, Context context) {
        super(context);
        this.this$0 = sideTouchUiIcon$AutoReviewIcon;
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        SideTouchUiIcon$AutoReviewIcon.access$200(this.this$0);
        if (SideTouchUiIcon$AutoReviewIcon.access$300(this.this$0) != null && !SideTouchUiIcon$AutoReviewIcon.access$300(this.this$0).isRecycled()) {
            SideTouchUiIcon$AutoReviewIcon.access$300(this.this$0).recycle();
        }
        if (SideTouchUiIcon$AutoReviewIcon.access$400(this.this$0) != null) {
            SideTouchUiIcon$AutoReviewIcon.access$400(this.this$0).onAutoReviewClosed();
            SideTouchUiIcon$AutoReviewIcon.access$402(this.this$0, null);
        }
    }
}
