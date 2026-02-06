package com.sonyericsson.android.camera.view.sidetouch;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint$Style;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.sonyericsson.cameracommon.settings.SelfTimerInterface;

public class SideTouchCountDownCircleView extends View {
    private static final float ANIMATION_TIME_RATIO = 0.6f;
    private static final float ANIMATION_VALUE = 360.0f;
    private static final int COUNTDOWN_CIRCLE_STROKE_WIDTH = 6;
    public static final String TAG = "SideTouchCountDownCircleView";
    private Paint mPaint;
    private ValueAnimator mValueAnimator;

    public SideTouchCountDownCircleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mValueAnimator = null;
    }

    private void init() {
        this.mPaint = new Paint();
        this.mPaint.setStyle(Paint$Style.STROKE);
        this.mPaint.setStrokeWidth(6.0f);
        this.mPaint.setAntiAlias(true);
        this.mPaint.setColor(getResources().getColor(2131099775, null));
    }

    private void setAnimator(SelfTimerInterface selfTimerInterface) {
        init();
        this.mValueAnimator = ValueAnimator.ofFloat(0.0f, 360.0f);
        this.mValueAnimator.setInterpolator(new SideTouchCountDownCircleView$CircleDecelerateInterpolator(null));
        this.mValueAnimator.setRepeatMode(1);
        this.mValueAnimator.setDuration(getRotateDuration(selfTimerInterface));
        this.mValueAnimator.setRepeatCount((int) (Math.ceil(((double) selfTimerInterface.getDurationInMillisecond()) / 1000.0d) - 1.0d));
        this.mValueAnimator.addUpdateListener(new SideTouchCountDownCircleView$ValueAnimationUpdater(this, null));
        this.mValueAnimator.addListener(new SideTouchCountDownCircleView$AnimationEventHandler(null));
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        drawArc(canvas);
    }

    private int getRotateDuration(SelfTimerInterface selfTimerInterface) {
        if (selfTimerInterface.getDurationInMillisecond() < 1000) {
            return 500;
        }
        return selfTimerInterface.getDurationInMillisecond() == 1500 ? 1500 : 1000;
    }

    private void drawArc(Canvas canvas) {
        if (this.mValueAnimator == null || this.mValueAnimator.getAnimatedValue() == null || !this.mValueAnimator.isRunning()) {
            return;
        }
        float width = canvas.getWidth() / 2.0f;
        float f = width - 3.0f;
        float f2 = width - f;
        float f3 = width + f;
        canvas.drawArc(new RectF(f2, f2, f3, f3), 180.0f, ((Float) this.mValueAnimator.getAnimatedValue()).floatValue(), false, this.mPaint);
    }

    public void setSelfTimer(SelfTimerInterface selfTimerInterface) {
        setAnimator(selfTimerInterface);
    }

    public void cancelSelfTimerAnimation() {
        this.mValueAnimator.end();
    }

    public void startAnimation() {
        if (this.mValueAnimator == null || this.mValueAnimator.isRunning()) {
            return;
        }
        this.mValueAnimator.start();
    }
}
