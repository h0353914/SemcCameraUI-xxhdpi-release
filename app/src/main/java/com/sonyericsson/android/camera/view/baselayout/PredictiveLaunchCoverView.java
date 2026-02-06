package com.sonyericsson.android.camera.view.baselayout;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Animatable2;
import android.graphics.drawable.Animatable2$AnimationCallback;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View$OnTouchListener;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.FrameLayout$LayoutParams;
import android.widget.ImageView;
import android.widget.TextView;
import com.sonyericsson.android.camera.research.LocalResearchUtil;
import com.sonyericsson.android.camera.research.LocalResearchUtil$MeasurementKey;
import com.sonymobile.cameracommon.font.FontUtil;
import com.sonymobile.cameracommon.font.FontUtil$RobotoFontType;

public class PredictiveLaunchCoverView extends FrameLayout implements View$OnTouchListener {
    private static final long LOWER_TOUCH_INTERVAL_TIME_MILLIS = 0;
    private static final double TOUCH_AREA_SIZE_PER_DP = 0.5555555555555556d;
    private static final long UPPER_TOUCH_INTERVAL_TIME_MILLIS = 300;
    private TextView mDescription;
    private int mDescriptionMargin;
    private boolean mExists;
    private ImageView mHoleView;
    private PredictiveLaunchCoverView$PredictiveLaunchCoverTouchListener mListener;
    private int mOrientation;
    private FrameLayout mSquareBox;
    private FrameLayout mTouchArea;
    private long mTouchDownTime;

    public PredictiveLaunchCoverView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mOrientation = 0;
    }

    public static PredictiveLaunchCoverView inflate(Context context, PredictiveLaunchCoverView$PredictiveLaunchCoverTouchListener predictiveLaunchCoverView$PredictiveLaunchCoverTouchListener, PredictiveLaunchCoverView$PredictiveLaunchCoverType predictiveLaunchCoverView$PredictiveLaunchCoverType) {
        PredictiveLaunchCoverView predictiveLaunchCoverView = (PredictiveLaunchCoverView) ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(2131492903, (ViewGroup) null);
        predictiveLaunchCoverView.mTouchArea.setContentDescription(context.getResources().getText(predictiveLaunchCoverView$PredictiveLaunchCoverType.mDescriptionResourceId));
        predictiveLaunchCoverView.mDescription.setText(predictiveLaunchCoverView$PredictiveLaunchCoverType.mDescriptionResourceId);
        predictiveLaunchCoverView.mListener = predictiveLaunchCoverView$PredictiveLaunchCoverTouchListener;
        predictiveLaunchCoverView.mExists = true;
        return predictiveLaunchCoverView;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        sendStartupPerformanceDataForReadyForUse();
    }

    private void sendStartupPerformanceDataForReadyForUse() {
        LocalResearchUtil.getInstance().stopMeasurement(LocalResearchUtil$MeasurementKey.LAUNCH_COLD_BOOT_FROM_LIFTTRIGGER_READY_FOR_USE);
        LocalResearchUtil.getInstance().stopMeasurement(LocalResearchUtil$MeasurementKey.LAUNCH_WARM_BOOT_FROM_LIFTTRIGGER_READY_FOR_USE);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mHoleView = (ImageView) findViewById(2131296420);
        this.mDescription = (TextView) findViewById(2131296499);
        this.mSquareBox = (FrameLayout) findViewById(2131296624);
        this.mDescriptionMargin = getContext().getResources().getDimensionPixelSize(2131165499);
        this.mTouchArea = (FrameLayout) findViewById(2131296669);
        this.mTouchArea.setOnTouchListener(this);
        FontUtil.setRobotoFont(this.mDescription, FontUtil$RobotoFontType.MEDIUM);
        this.mDescription.setAccessibilityDelegate(new PredictiveLaunchCoverView$1(this));
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.mOrientation == 0 || getVisibility() == 0 || !this.mExists) {
            return;
        }
        updateLayout();
        show();
    }

    @Override // android.view.View
    public boolean performClick() {
        super.performClick();
        return true;
    }

    @Override // android.view.View$OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case 0:
                this.mTouchDownTime = SystemClock.elapsedRealtime();
                break;
            case 1:
                if (checkTouchEnabled()) {
                    Rect rect = new Rect();
                    this.mTouchArea.getDrawingRect(rect);
                    if (rect.contains((int) motionEvent.getX(), (int) motionEvent.getY()) && this.mListener != null) {
                        this.mListener.onCircleTouched();
                        break;
                    }
                }
                break;
        }
        return true;
    }

    private void show() {
        if (getVisibility() == 0 || !this.mDescription.isAttachedToWindow()) {
            return;
        }
        setVisibility(0);
        this.mDescription.setVisibility(0);
        this.mHoleView.setSelected(false);
        startPredictiveLaunchAnimation(null);
    }

    public void hide(Animatable2$AnimationCallback animatable2$AnimationCallback) {
        this.mTouchArea.setOnTouchListener(null);
        this.mDescription.setVisibility(4);
        this.mHoleView.setSelected(true);
        this.mExists = false;
        startPredictiveLaunchAnimation(animatable2$AnimationCallback);
    }

    private void startPredictiveLaunchAnimation(Animatable2$AnimationCallback animatable2$AnimationCallback) {
        Animatable2 animatable2 = (Animatable2) this.mHoleView.getDrawable().getCurrent();
        if (animatable2.isRunning()) {
            return;
        }
        if (animatable2$AnimationCallback != null) {
            animatable2.registerAnimationCallback(animatable2$AnimationCallback);
        }
        animatable2.start();
    }

    public boolean exists() {
        return this.mExists;
    }

    public void updateLayout(int i) {
        int i2 = this.mOrientation;
        if (i != 0) {
            this.mOrientation = i;
        }
        if (i2 == 0 || i2 == i) {
            return;
        }
        updateLayout();
    }

    private void updateLayout() {
        if (this.mSquareBox == null || this.mTouchArea == null || this.mDescription == null || !this.mDescription.isAttachedToWindow()) {
            return;
        }
        FrameLayout$LayoutParams frameLayout$LayoutParams = new FrameLayout$LayoutParams(-1, getMeasuredWidth());
        frameLayout$LayoutParams.gravity = 16;
        this.mSquareBox.setLayoutParams(frameLayout$LayoutParams);
        int measuredWidth = (int) (0.5555555555555556d * ((double) getMeasuredWidth()));
        FrameLayout$LayoutParams frameLayout$LayoutParams2 = new FrameLayout$LayoutParams(measuredWidth, measuredWidth);
        frameLayout$LayoutParams2.gravity = 17;
        this.mTouchArea.setLayoutParams(frameLayout$LayoutParams2);
        FrameLayout$LayoutParams frameLayout$LayoutParams3 = new FrameLayout$LayoutParams(-2, -2);
        if (this.mOrientation == 1) {
            frameLayout$LayoutParams3.gravity = 81;
            frameLayout$LayoutParams3.bottomMargin = this.mDescriptionMargin;
            this.mDescription.setRotation(0.0f);
        } else {
            frameLayout$LayoutParams3.gravity = 19;
            frameLayout$LayoutParams3.leftMargin = (this.mDescription.getMeasuredWidth() / (-2)) + (this.mDescription.getMeasuredHeight() / 2) + this.mDescriptionMargin;
            this.mDescription.setRotation(90.0f);
        }
        this.mDescription.setLayoutParams(frameLayout$LayoutParams3);
    }

    private boolean checkTouchEnabled() {
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.mTouchDownTime;
        return 0 < jElapsedRealtime && jElapsedRealtime <= 300;
    }
}
