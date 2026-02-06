package com.sonyericsson.android.camera.view.baselayout;

import android.app.Activity;
import android.graphics.Point;
import android.view.Display;
import android.view.MotionEvent;
import com.sonyericsson.cameracommon.utility.AccessibilityHelper$HoverEventInterceptView;

class BaseLayout$RootView extends AccessibilityHelper$HoverEventInterceptView {
    final /* synthetic */ BaseLayout this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseLayout$RootView(BaseLayout baseLayout, Activity activity) {
        super(activity);
        this.this$0 = baseLayout;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (BaseLayout.access$000(this.this$0) == null) {
            return false;
        }
        return BaseLayout.access$000(this.this$0).onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (BaseLayout.access$000(this.this$0) == null) {
            return false;
        }
        return BaseLayout.access$000(this.this$0).onTouchEvent(motionEvent);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int width = BaseLayout.access$100(this.this$0).getWidth();
        int height = BaseLayout.access$100(this.this$0).getHeight();
        if (BaseLayout.access$200() != BaseLayout$IsTalkbackEffective.UNKNOWN) {
            if (width < height) {
                BaseLayout.access$202(BaseLayout$IsTalkbackEffective.UNKNOWN);
            }
        } else if (width > height) {
            Display defaultDisplay = BaseLayout.access$300(this.this$0).getWindowManager().getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getRealSize(point);
            if (width < point.x) {
                BaseLayout.access$202(BaseLayout$IsTalkbackEffective.TALKBACK_ON);
            } else {
                BaseLayout.access$202(BaseLayout$IsTalkbackEffective.TALKBACK_OFF);
            }
            this.this$0.updateAppsUiMarginsForTalkBack();
        }
    }
}
