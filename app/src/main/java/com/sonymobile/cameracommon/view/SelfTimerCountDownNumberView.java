package com.sonymobile.cameracommon.view;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.os.Handler;
import android.os.PowerManager;
import android.util.AttributeSet;
import android.widget.FrameLayout$LayoutParams;
import android.widget.ImageView;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.cameracommon.settings.SelfTimerInterface;

/* JADX INFO: loaded from: classes.dex */
public class SelfTimerCountDownNumberView extends ImageView {
    private static final int ANIMATION_FADING_DURATION_MS = 250;
    private static final int ANIMATION_VALUE = 255;
    private static final int SECOND_COUNT_MILLIS = 1000;
    public static final String TAG = "SelfTimerCountDownNumberView";
    private Handler handler;
    private SelfTimerCountDownNumberView$AnimationEventHandler mAnimationEventHandler;
    private int mCountDownIconId;
    private int mCountDownInitNum;
    private int mCurrentCount;
    private boolean mIsCountDownStarted;
    private boolean mIsTenDigit;
    private SelfTimerCountDownNumberView$UpdateCountDownNumberTask mUpdateCountDownNumberTask;
    private ValueAnimator mValueAnimator;

    private float getAnimationRatio(int i) {
        return 250.0f / i;
    }

    static /* synthetic */ ValueAnimator access$200(SelfTimerCountDownNumberView selfTimerCountDownNumberView) {
        return selfTimerCountDownNumberView.mValueAnimator;
    }

    static /* synthetic */ int access$400(SelfTimerCountDownNumberView selfTimerCountDownNumberView) {
        return selfTimerCountDownNumberView.mCurrentCount;
    }

    static /* synthetic */ int access$410(SelfTimerCountDownNumberView selfTimerCountDownNumberView) {
        int i = selfTimerCountDownNumberView.mCurrentCount;
        selfTimerCountDownNumberView.mCurrentCount = i - 1;
        return i;
    }

    static /* synthetic */ void access$500(SelfTimerCountDownNumberView selfTimerCountDownNumberView) {
        selfTimerCountDownNumberView.setImage();
    }

    static /* synthetic */ void access$600(SelfTimerCountDownNumberView selfTimerCountDownNumberView) {
        selfTimerCountDownNumberView.postNextUpdateEvent();
    }

    public SelfTimerCountDownNumberView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mValueAnimator = null;
        this.mCurrentCount = 0;
        this.mIsCountDownStarted = false;
        this.handler = new Handler();
        this.mUpdateCountDownNumberTask = null;
        this.mAnimationEventHandler = new SelfTimerCountDownNumberView$AnimationEventHandler(this, null);
        this.mCountDownIconId = -1;
    }

    public SelfTimerCountDownNumberView(Context context) {
        super(context);
        this.mValueAnimator = null;
        this.mCurrentCount = 0;
        this.mIsCountDownStarted = false;
        this.handler = new Handler();
        this.mUpdateCountDownNumberTask = null;
        this.mAnimationEventHandler = new SelfTimerCountDownNumberView$AnimationEventHandler(this, null);
        this.mCountDownIconId = -1;
    }

    public SelfTimerCountDownNumberView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mValueAnimator = null;
        this.mCurrentCount = 0;
        this.mIsCountDownStarted = false;
        this.handler = new Handler();
        this.mUpdateCountDownNumberTask = null;
        this.mAnimationEventHandler = new SelfTimerCountDownNumberView$AnimationEventHandler(this, null);
        this.mCountDownIconId = -1;
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    public void startAnimation() {
        if (((PowerManager) getContext().getSystemService("power")).isPowerSaveMode()) {
            this.mValueAnimator.removeAllListeners();
        } else {
            this.mValueAnimator.addListener(this.mAnimationEventHandler);
        }
        if (!this.mValueAnimator.isRunning()) {
            this.mValueAnimator.start();
        }
        if (this.mIsCountDownStarted) {
            return;
        }
        startCountDownNumber();
    }

    public void setIsTenDigit(boolean z) {
        this.mIsTenDigit = z;
    }

    private void setImage() {
        FrameLayout$LayoutParams frameLayout$LayoutParams = (FrameLayout$LayoutParams) getLayoutParams();
        if (this.mCurrentCount > 9) {
            if (this.mIsTenDigit) {
                frameLayout$LayoutParams.rightMargin = getResources().getDimensionPixelSize(2131165717);
                if (getVisibility() != 0) {
                    setVisibility(0);
                }
            } else {
                frameLayout$LayoutParams.leftMargin = getResources().getDimensionPixelSize(2131165717);
            }
        } else if (this.mIsTenDigit) {
            frameLayout$LayoutParams.rightMargin = 0;
            if (getVisibility() != 8) {
                setVisibility(8);
            }
        } else {
            frameLayout$LayoutParams.leftMargin = 0;
        }
        setLayoutParams(frameLayout$LayoutParams);
        if (this.mCountDownIconId != -1) {
            setImageResource(this.mCountDownIconId);
            return;
        }
        if (this.mIsTenDigit) {
            switch (this.mCurrentCount / 10) {
                case 0:
                    break;
                case 1:
                    setImageResource(2131231280);
                    break;
                case 2:
                    setImageResource(2131231281);
                    break;
                case 3:
                    setImageResource(2131231282);
                    break;
                default:
                    if (this.mValueAnimator != null) {
                        CamLog.e("setImage() [Irregal Value = " + this.mValueAnimator.getAnimatedValue() + "]");
                    } else {
                        CamLog.e("setImage() : mCurrentCount = " + this.mCurrentCount);
                    }
                    break;
            }
        }
        switch (this.mCurrentCount % 10) {
            case 0:
                if (this.mCurrentCount > 9) {
                    setImageResource(2131231279);
                    return;
                }
                break;
            case 1:
                setImageResource(2131231280);
                return;
            case 2:
                setImageResource(2131231281);
                return;
            case 3:
                setImageResource(2131231282);
                return;
            case 4:
                setImageResource(2131231283);
                return;
            case 5:
                setImageResource(2131231284);
                return;
            case 6:
                setImageResource(2131231285);
                return;
            case 7:
                setImageResource(2131231286);
                return;
            case 8:
                setImageResource(2131231287);
                return;
            case 9:
                setImageResource(2131231288);
                return;
        }
        if (this.mValueAnimator != null) {
            CamLog.e("setImage() [Irregal Value = " + this.mValueAnimator.getAnimatedValue() + "]");
            return;
        }
        CamLog.e("setImage() : mCurrentCount = " + this.mCurrentCount);
    }

    private int getDuration(SelfTimerInterface selfTimerInterface) {
        if (selfTimerInterface.getDurationInMillisecond() < 1000) {
            return 500;
        }
        return selfTimerInterface.getDurationInMillisecond() == 1500 ? 1500 : 1000;
    }

    public void setSelfTimer(SelfTimerInterface selfTimerInterface) {
        this.mCountDownInitNum = selfTimerInterface.getDurationInMillisecond() / 1000;
        setAnimator(selfTimerInterface);
    }

    public void cancelSelfTimerAnimation() {
        this.mValueAnimator.end();
        stopCountDownNumber();
    }

    @Override // android.widget.ImageView, android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
    }

    private void setAnimator(SelfTimerInterface selfTimerInterface) {
        this.mCountDownIconId = selfTimerInterface.getCountDownIconId();
        int duration = getDuration(selfTimerInterface);
        float animationRatio = getAnimationRatio(duration);
        this.mValueAnimator = ValueAnimator.ofInt(0, 255);
        this.mValueAnimator.setInterpolator(new SelfTimerCountDownNumberView$AlphaAccelerateInterpolator(animationRatio));
        this.mValueAnimator.setRepeatCount(this.mCountDownInitNum - 1);
        this.mValueAnimator.setRepeatMode(1);
        this.mValueAnimator.setDuration(duration);
        this.mValueAnimator.addUpdateListener(new SelfTimerCountDownNumberView$ValueAnimationUpdater(this, null));
    }

    private void startCountDownNumber() {
        this.mIsCountDownStarted = true;
        this.mUpdateCountDownNumberTask = new SelfTimerCountDownNumberView$UpdateCountDownNumberTask(this, null);
        this.mCurrentCount = this.mCountDownInitNum;
        setImage();
        postNextUpdateEvent();
    }

    private void stopCountDownNumber() {
        this.mIsCountDownStarted = false;
        this.handler.removeCallbacks(this.mUpdateCountDownNumberTask);
        this.mUpdateCountDownNumberTask = null;
        setImageBitmap(null);
    }

    private void postNextUpdateEvent() {
        this.handler.postDelayed(this.mUpdateCountDownNumberTask, 1000L);
    }
}
