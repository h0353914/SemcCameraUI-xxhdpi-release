package com.sonymobile.cameracommon.view;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint$Style;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.sonyericsson.cameracommon.settings.SelfTimerInterface;

/* JADX INFO: loaded from: classes.dex */
public class SelfTimerCountDownCircleView extends View {
    private static final float ANIMATION_TIME_RATIO = 0.6f;
    private static final float ANIMATION_VALUE = 360.0f;
    public static final String TAG = "SelfTimerCountDownCircleView";
    private final int COUNTDOWN_CIRCLE_RADIUS;
    private final int COUNTDOWN_CIRCLE_STROKE_WIDTH;
    private Paint mPaint;
    private ValueAnimator mValueAnimator;

    public SelfTimerCountDownCircleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.COUNTDOWN_CIRCLE_RADIUS = getResources().getDimensionPixelSize(2131165715) / 2;
        this.COUNTDOWN_CIRCLE_STROKE_WIDTH = (getResources().getDimensionPixelSize(2131165715) - getResources().getDimensionPixelSize(2131165714)) / 2;
        this.mValueAnimator = null;
        init(context);
    }

    private SelfTimerCountDownCircleView(Context context) {
        super(context);
        this.COUNTDOWN_CIRCLE_RADIUS = getResources().getDimensionPixelSize(2131165715) / 2;
        this.COUNTDOWN_CIRCLE_STROKE_WIDTH = (getResources().getDimensionPixelSize(2131165715) - getResources().getDimensionPixelSize(2131165714)) / 2;
        this.mValueAnimator = null;
        init(context);
    }

    private SelfTimerCountDownCircleView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.COUNTDOWN_CIRCLE_RADIUS = getResources().getDimensionPixelSize(2131165715) / 2;
        this.COUNTDOWN_CIRCLE_STROKE_WIDTH = (getResources().getDimensionPixelSize(2131165715) - getResources().getDimensionPixelSize(2131165714)) / 2;
        this.mValueAnimator = null;
        init(context);
    }

    private void init(Context context) {
        this.mPaint = new Paint();
        this.mPaint.setStyle(Paint$Style.STROKE);
        this.mPaint.setStrokeWidth(this.COUNTDOWN_CIRCLE_STROKE_WIDTH);
        this.mPaint.setAntiAlias(true);
        this.mPaint.setColor(getResources().getColor(2131099775, null));
    }

    private void setAnimator(SelfTimerInterface selfTimerInterface) {
        this.mValueAnimator = ValueAnimator.ofFloat(0.0f, 360.0f);
        this.mValueAnimator.setInterpolator(new SelfTimerCountDownCircleView$CircleDecelerateInterpolator(null));
        this.mValueAnimator.setRepeatMode(1);
        this.mValueAnimator.setDuration(getRotateDuration(selfTimerInterface));
        this.mValueAnimator.setRepeatCount((selfTimerInterface.getDurationInMillisecond() / 1000) - 1);
        this.mValueAnimator.addUpdateListener(new SelfTimerCountDownCircleView$ValueAnimationUpdater(this, null));
        this.mValueAnimator.addListener(new SelfTimerCountDownCircleView$AnimationEventHandler(null));
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
        float f = this.COUNTDOWN_CIRCLE_RADIUS - (this.COUNTDOWN_CIRCLE_STROKE_WIDTH / 2);
        float width = canvas.getWidth() / 2.0f;
        float height = canvas.getHeight() / 2.0f;
        canvas.drawArc(new RectF(width - f, height - f, width + f, height + f), -90.0f, ((Float) this.mValueAnimator.getAnimatedValue()).floatValue(), false, this.mPaint);
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
