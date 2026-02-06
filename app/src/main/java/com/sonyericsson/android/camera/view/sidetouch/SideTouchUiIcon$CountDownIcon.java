package com.sonyericsson.android.camera.view.sidetouch;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.TranslateAnimation;
import android.widget.FrameLayout;
import android.widget.FrameLayout$LayoutParams;
import com.sonyericsson.android.camera.configuration.parameters.SelfTimer;

protected final class SideTouchUiIcon$CountDownIcon extends SideTouchUiIcon {
    private static final long PUT_IN_ANIMATION_DURATION = 120;
    private SideTouchCountDownCircleView mSideTouchCountDownCircleView;
    private FrameLayout mSideTouchCountDownView;

    public SideTouchUiIcon$CountDownIcon(Context context) {
        super(context);
    }

    @Override // com.sonyericsson.android.camera.view.sidetouch.SideTouchUiIcon
    protected void attachView(ViewGroup viewGroup) {
        View.inflate(this.mContext, 2131493011, viewGroup);
        this.mSideTouchCountDownView = (FrameLayout) viewGroup.findViewById(2131296609);
        this.mSideTouchCountDownCircleView = (SideTouchCountDownCircleView) this.mSideTouchCountDownView.findViewById(2131296610);
    }

    @Override // com.sonyericsson.android.camera.view.sidetouch.SideTouchUiIcon
    protected View getIconView() {
        return this.mSideTouchCountDownView;
    }

    @Override // com.sonyericsson.android.camera.view.sidetouch.SideTouchUi$Icon
    public void show() {
        this.mSideTouchCountDownView.setVisibility(0);
        this.mSideTouchCountDownCircleView.setSelfTimer(SelfTimer.SIDE_COUNT_DOWN);
        this.mSideTouchCountDownCircleView.startAnimation();
        TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, ((FrameLayout$LayoutParams) this.mSideTouchCountDownView.getLayoutParams()).topMargin == 0 ? -r0.width : r0.width, 0.0f);
        translateAnimation.setDuration(120L);
        this.mSideTouchCountDownView.startAnimation(translateAnimation);
    }

    @Override // com.sonyericsson.android.camera.view.sidetouch.SideTouchUi$Icon
    public void setUiOrientation(int i) {
        if (i == 1) {
            this.mSideTouchCountDownCircleView.setRotation(270.0f);
        } else {
            this.mSideTouchCountDownCircleView.setRotation(0.0f);
        }
    }
}
