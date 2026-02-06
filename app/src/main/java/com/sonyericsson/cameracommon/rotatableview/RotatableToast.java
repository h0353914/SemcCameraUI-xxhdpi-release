package com.sonyericsson.cameracommon.rotatableview;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Animation;
import android.view.animation.Animation$AnimationListener;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.cameracommon.utility.LayoutOrientationResolver;
import com.sonyericsson.cameracommon.utility.LayoutOrientationResolver$LayoutOrientationType;
import com.sonyericsson.cameracommon.utility.RotationUtil;

public class RotatableToast extends FrameLayout implements Animation$AnimationListener {
    private static final long FADEOUT_OFFSET_LONG = 4500;
    private static final long FADEOUT_OFFSET_SHORT = 2500;
    public static final int LENGTH_LONG = 1;
    public static final int LENGTH_SHORT = 0;
    public static final String TAG = "RotatableToast";
    private static RotatableToast$ToastLayoutParams mLayoutParamsLandscape;
    private static RotatableToast$ToastLayoutParams mLayoutParamsPortrait;
    private ViewGroup mBackgroundView;
    private ViewGroup mBaseView;
    private int mDuration;
    private Animation mFadeoutAnimation;
    Handler mHandler;
    private ViewGroup mLayoutRoot;
    private int mSensorOrientation;
    private final Runnable mStartAnimation;
    private TextView mTextView;
    private RotatableToast$ToastPosition mToastPosition;

    @Override // android.view.animation.Animation$AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    static /* synthetic */ Animation access$000(RotatableToast rotatableToast) {
        return rotatableToast.mFadeoutAnimation;
    }

    static /* synthetic */ ViewGroup access$100(RotatableToast rotatableToast) {
        return rotatableToast.mBaseView;
    }

    public static void setToastLayoutParams(RotatableToast$ToastLayoutParams rotatableToast$ToastLayoutParams, RotatableToast$ToastLayoutParams rotatableToast$ToastLayoutParams2) {
        mLayoutParamsLandscape = rotatableToast$ToastLayoutParams;
        mLayoutParamsPortrait = rotatableToast$ToastLayoutParams2;
    }

    public RotatableToast(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mBaseView = null;
        this.mBackgroundView = null;
        this.mTextView = null;
        this.mSensorOrientation = 2;
        this.mDuration = 0;
        this.mToastPosition = RotatableToast$ToastPosition.CENTER;
        this.mHandler = new Handler();
        this.mStartAnimation = new RotatableToast$1(this);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        if (CamLog.VERBOSE) {
            CamLog.d("onFinishInflate() is called.");
        }
        super.onFinishInflate();
        this.mLayoutRoot = (ViewGroup) ((Activity) getContext()).getWindow().getDecorView();
        this.mBaseView = (ViewGroup) findViewById(2131296544);
        this.mBackgroundView = (ViewGroup) findViewById(2131296546);
        this.mTextView = (TextView) findViewById(2131296545);
        this.mFadeoutAnimation = AnimationUtils.loadAnimation(getContext(), 2130771990);
    }

    public void setTextResId(int i) {
        this.mTextView.setText(i);
    }

    public void setSensorOrientation(int i) {
        if (CamLog.VERBOSE) {
            CamLog.d("setSensorOrientation(" + i + ")");
        }
        this.mSensorOrientation = i;
        updateTextMaxWidth();
        updatePosition();
    }

    public void setDuration(int i) {
        this.mDuration = i;
    }

    public int getDuration() {
        return this.mDuration;
    }

    public void setToastPosition(RotatableToast$ToastPosition rotatableToast$ToastPosition) {
        this.mToastPosition = rotatableToast$ToastPosition;
    }

    private void updateTextMaxWidth() {
        if (this.mSensorOrientation == 1) {
            this.mTextView.setMaxWidth(getResources().getDimensionPixelSize(2131165544));
        } else {
            this.mTextView.setMaxWidth(getResources().getDimensionPixelSize(2131165543));
        }
    }

    private void updatePosition() {
        float angle = RotationUtil.getAngle(this.mSensorOrientation);
        if (LayoutOrientationResolver.getInstance().getOrientation() == LayoutOrientationResolver$LayoutOrientationType.PORTRAIT) {
            angle += 90.0f;
        }
        this.mBackgroundView.setRotation(angle);
        if (getContainerRect() != null) {
            this.mBackgroundView.setTranslationX(r0.centerX());
            this.mBackgroundView.setTranslationY(r0.centerY());
        } else {
            this.mBackgroundView.setTranslationX(0.0f);
            this.mBackgroundView.setTranslationY(0.0f);
        }
    }

    private Rect getContainerRect() {
        RotatableToast$ToastLayoutParams rotatableToast$ToastLayoutParams = this.mSensorOrientation == 1 ? mLayoutParamsPortrait : mLayoutParamsLandscape;
        if (rotatableToast$ToastLayoutParams == null) {
            return null;
        }
        switch (this.mToastPosition) {
        }
        return null;
    }

    public void show() {
        if (CamLog.VERBOSE) {
            CamLog.d("show: visibility: " + getVisibility());
        }
        this.mBaseView.setContentDescription(this.mTextView.getText());
        addToWindow();
        updateTextMaxWidth();
        updatePosition();
        long j = this.mDuration == 1 ? 4500L : 2500L;
        this.mFadeoutAnimation.setAnimationListener(this);
        this.mHandler.postDelayed(this.mStartAnimation, j);
    }

    public void hide() {
        this.mBaseView.clearAnimation();
    }

    public void hideImmediately() {
        this.mBaseView.setVisibility(4);
        Animation animation = this.mBaseView.getAnimation();
        if (animation != null) {
            if (CamLog.VERBOSE) {
                CamLog.d("Animation.hasStarted: " + animation.hasStarted() + ", Animation.hasEnded: " + animation.hasEnded());
            }
            if (!animation.hasStarted() && !animation.hasEnded()) {
                this.mBaseView.clearAnimation();
                removeFromWindow();
                return;
            } else {
                this.mBaseView.clearAnimation();
                return;
            }
        }
        this.mHandler.removeCallbacks(this.mStartAnimation);
        removeFromWindow();
    }

    private void addToWindow() {
        if (CamLog.VERBOSE) {
            CamLog.d("addToWindow: Add this view to window.");
        }
        if (getParent() != null) {
            this.mLayoutRoot.removeView(this);
        }
        this.mLayoutRoot.addView(this);
    }

    private void removeFromWindow() {
        if (CamLog.VERBOSE) {
            CamLog.d("removeFromWindow: Remove this view from window.");
        }
        if (getParent() != null) {
            this.mLayoutRoot.removeView(this);
        }
    }

    @Override // android.view.animation.Animation$AnimationListener
    public void onAnimationEnd(Animation animation) {
        if (CamLog.VERBOSE) {
            CamLog.d("onAnimationEnd() is called.");
        }
        removeFromWindow();
    }

    @Override // android.view.animation.Animation$AnimationListener
    public void onAnimationStart(Animation animation) {
        if (CamLog.VERBOSE) {
            CamLog.d("onAnimationStart() is called.");
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestSendAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        if (CamLog.VERBOSE) {
            CamLog.d("requestSendAccessibilityEvent: ecent = " + accessibilityEvent.toString());
        }
        if (this.mBaseView.getContentDescription() == null) {
            return false;
        }
        accessibilityEvent.setEventType(64);
        boolean zRequestSendAccessibilityEvent = super.requestSendAccessibilityEvent(view, accessibilityEvent);
        this.mBaseView.setContentDescription(null);
        return zRequestSendAccessibilityEvent;
    }

    public static RotatableToast inflate(Activity activity) {
        LayoutInflater layoutInflater = activity.getLayoutInflater();
        if (layoutInflater == null) {
            throw new AssertionError("LayoutInflater not found.");
        }
        return (RotatableToast) layoutInflater.inflate(2131492990, (ViewGroup) null);
    }
}
