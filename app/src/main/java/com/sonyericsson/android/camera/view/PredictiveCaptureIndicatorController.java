package com.sonyericsson.android.camera.view;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup$MarginLayoutParams;
import android.view.ViewStub;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.TextView;
import com.sonyericsson.android.camera.view.baselayout.LayoutDependencyResolver$ScreenAspect;
import com.sonyericsson.cameracommon.rotatableview.EdgeRotatableContainerView;
import com.sonyericsson.cameracommon.utility.ResourceUtil;

/* JADX INFO: loaded from: classes.dex */
public class PredictiveCaptureIndicatorController {
    private final Activity mActivity;
    private Animation mAnimation;
    private View mBackground;
    private EdgeRotatableContainerView mRoot;
    private final LayoutDependencyResolver$ScreenAspect mScreenAspect;
    private TextView mTextView;
    private int mOrientation = 2;
    private boolean mIsAnimationRunning = false;
    private boolean mVisible = false;

    static /* synthetic */ boolean access$002(PredictiveCaptureIndicatorController predictiveCaptureIndicatorController, boolean z) {
        predictiveCaptureIndicatorController.mIsAnimationRunning = z;
        return z;
    }

    static /* synthetic */ void access$100(PredictiveCaptureIndicatorController predictiveCaptureIndicatorController) {
        predictiveCaptureIndicatorController.update();
    }

    public PredictiveCaptureIndicatorController(Activity activity, LayoutDependencyResolver$ScreenAspect layoutDependencyResolver$ScreenAspect) {
        this.mActivity = activity;
        this.mScreenAspect = layoutDependencyResolver$ScreenAspect;
    }

    public void setOrientation(int i) {
        this.mOrientation = i;
        if (this.mRoot != null) {
            this.mRoot.setOrientation(i);
        }
    }

    public void startAnimation() {
        if (this.mRoot == null) {
            initPredictiveCaptureIndicator();
        }
        this.mTextView.announceForAccessibility(this.mActivity.getResources().getString(2131690004));
        this.mIsAnimationRunning = true;
        update();
        this.mBackground.startAnimation(this.mAnimation);
    }

    public void cancelAnimation() {
        if (this.mRoot == null) {
            return;
        }
        this.mBackground.clearAnimation();
        this.mIsAnimationRunning = false;
        update();
    }

    public void show() {
        this.mVisible = true;
        update();
    }

    public void hide() {
        this.mVisible = false;
        update();
    }

    private void update() {
        if (this.mRoot == null) {
            return;
        }
        if (this.mIsAnimationRunning && this.mVisible) {
            this.mRoot.setVisibility(0);
        } else {
            this.mRoot.setVisibility(4);
        }
    }

    private void initPredictiveCaptureIndicator() {
        this.mRoot = (EdgeRotatableContainerView) ((ViewStub) this.mActivity.findViewById(2131296497)).inflate();
        this.mRoot.setOrientation(this.mOrientation);
        if (this.mScreenAspect == LayoutDependencyResolver$ScreenAspect.EIGHTEEN_NINE) {
            ((ViewGroup$MarginLayoutParams) this.mRoot.getLayoutParams()).rightMargin = ResourceUtil.getDimensionPixelSize(this.mActivity, this.mActivity.getPackageName(), 2131165490);
        }
        this.mBackground = this.mActivity.findViewById(2131296495);
        this.mTextView = (TextView) this.mActivity.findViewById(2131296498);
        this.mAnimation = AnimationUtils.loadAnimation(this.mActivity, 2130771989);
        this.mAnimation.setAnimationListener(new PredictiveCaptureIndicatorController$1(this));
    }
}
