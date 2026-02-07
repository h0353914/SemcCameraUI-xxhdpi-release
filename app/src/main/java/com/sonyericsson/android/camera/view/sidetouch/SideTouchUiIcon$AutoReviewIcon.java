package com.sonyericsson.android.camera.view.sidetouch;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AlphaAnimation;
import android.view.animation.AnimationSet;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.FrameLayout$LayoutParams;
import android.widget.ImageView;
import android.widget.ImageView$ScaleType;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.view.AutoReviewContent;
import com.sonyericsson.android.camera.view.AutoReviewContent$ContentReceiver;
import com.sonyericsson.android.camera.view.AutoReviewController;
import com.sonyericsson.android.camera.view.AutoReviewController$OnAutoReviewEventListener;
import com.sonyericsson.android.camera.view.ViewFinderImpl$AutoReviewContentReceiverProxy;
import com.sonyericsson.android.camera.view.baselayout.LayoutDependencyResolver;
import com.sonyericsson.cameracommon.contentsview.ThumbnailFactory;
import com.sonyericsson.cameracommon.utility.CameraTimer;
import com.sonyericsson.cameracommon.utility.LayoutOrientationResolver;
import com.sonyericsson.cameracommon.utility.LayoutOrientationResolver$LayoutOrientationType;
import com.sonyericsson.cameracommon.utility.PositionConverter;
import com.sonyericsson.cameracommon.utility.RotationUtil;

/* JADX INFO: loaded from: classes.dex */
protected final class SideTouchUiIcon$AutoReviewIcon extends SideTouchUiIcon implements AutoReviewContent$ContentReceiver {
    private static final long ANIMATION_DURATION = 200;
    private static final float ANIMATION_HIDE_SCALE = 0.8f;
    private static final float ANIMATION_SHOW_SCALE = 1.2f;
    private static final String TAG = "AutoReviewIcon";
    private final SideTouchUiIcon$AutoReviewIcon$Aspect mAspect;
    private Bitmap mBitmap;
    private AutoReviewController$OnAutoReviewEventListener mCloseListener;
    private ImageView mImageView;
    private int mOrientation;
    private CameraTimer mTimer;

    @Override // com.sonyericsson.android.camera.view.sidetouch.SideTouchUi$Icon
    public void show() {
    }

    static /* synthetic */ void access$000(SideTouchUiIcon$AutoReviewIcon sideTouchUiIcon$AutoReviewIcon) {
        sideTouchUiIcon$AutoReviewIcon.detachFromParent();
    }

    static /* synthetic */ void access$200(SideTouchUiIcon$AutoReviewIcon sideTouchUiIcon$AutoReviewIcon) {
        sideTouchUiIcon$AutoReviewIcon.stopTimer();
    }

    static /* synthetic */ Bitmap access$300(SideTouchUiIcon$AutoReviewIcon sideTouchUiIcon$AutoReviewIcon) {
        return sideTouchUiIcon$AutoReviewIcon.mBitmap;
    }

    static /* synthetic */ AutoReviewController$OnAutoReviewEventListener access$400(SideTouchUiIcon$AutoReviewIcon sideTouchUiIcon$AutoReviewIcon) {
        return sideTouchUiIcon$AutoReviewIcon.mCloseListener;
    }

    static /* synthetic */ AutoReviewController$OnAutoReviewEventListener access$402(SideTouchUiIcon$AutoReviewIcon sideTouchUiIcon$AutoReviewIcon, AutoReviewController$OnAutoReviewEventListener autoReviewController$OnAutoReviewEventListener) {
        sideTouchUiIcon$AutoReviewIcon.mCloseListener = autoReviewController$OnAutoReviewEventListener;
        return autoReviewController$OnAutoReviewEventListener;
    }

    static /* synthetic */ void access$500(SideTouchUiIcon$AutoReviewIcon sideTouchUiIcon$AutoReviewIcon) {
        sideTouchUiIcon$AutoReviewIcon.startHideAnimation();
    }

    public SideTouchUiIcon$AutoReviewIcon(Context context, ViewFinderImpl$AutoReviewContentReceiverProxy viewFinderImpl$AutoReviewContentReceiverProxy) {
        super(context);
        viewFinderImpl$AutoReviewContentReceiverProxy.bindReceiver(this);
        if (LayoutDependencyResolver.isTablet(context)) {
            if (isPreviewAspectRatio(1, 1)) {
                this.mAspect = SideTouchUiIcon$AutoReviewIcon$Aspect.TABLET_1_1;
                return;
            } else if (isPreviewAspectRatio(4, 3)) {
                this.mAspect = SideTouchUiIcon$AutoReviewIcon$Aspect.TABLET_4_3;
                return;
            } else {
                this.mAspect = SideTouchUiIcon$AutoReviewIcon$Aspect.TABLET_16_9;
                return;
            }
        }
        if (isPreviewAspectRatio(1, 1)) {
            this.mAspect = SideTouchUiIcon$AutoReviewIcon$Aspect.PHONE_1_1;
        } else if (isPreviewAspectRatio(4, 3)) {
            this.mAspect = SideTouchUiIcon$AutoReviewIcon$Aspect.PHONE_4_3;
        } else {
            this.mAspect = SideTouchUiIcon$AutoReviewIcon$Aspect.PHONE_16_9;
        }
    }

    @Override // com.sonyericsson.android.camera.view.sidetouch.SideTouchUiIcon
    protected void attachView(ViewGroup viewGroup) {
        String stringResource = getStringResource(2131689562);
        this.mImageView = new SideTouchUiIcon$AutoReviewIcon$AutoReviewImageView(this, this.mContext);
        this.mImageView.setVisibility(8);
        this.mImageView.setScaleType(ImageView$ScaleType.FIT_XY);
        this.mImageView.setContentDescription(stringResource);
        this.mImageView.setBackgroundResource(2131230950);
        viewGroup.addView(this.mImageView);
        FrameLayout$LayoutParams frameLayout$LayoutParams = (FrameLayout$LayoutParams) this.mImageView.getLayoutParams();
        frameLayout$LayoutParams.width = getDimensionPixelSize(this.mAspect.resource_width);
        frameLayout$LayoutParams.height = getDimensionPixelSize(this.mAspect.resource_height);
        int dimensionPixelSize = getDimensionPixelSize(2131165278) * 2;
        frameLayout$LayoutParams.width += dimensionPixelSize;
        frameLayout$LayoutParams.height += dimensionPixelSize;
    }

    @Override // com.sonyericsson.android.camera.view.sidetouch.SideTouchUiIcon
    protected View getIconView() {
        return this.mImageView;
    }

    private void startShowAnimation() {
        AnimationSet animationSet = new AnimationSet(false);
        FrameLayout$LayoutParams frameLayout$LayoutParams = (FrameLayout$LayoutParams) this.mImageView.getLayoutParams();
        TranslateAnimation translateAnimation = new TranslateAnimation((-(((int) (frameLayout$LayoutParams.width * 1.2f)) - frameLayout$LayoutParams.width)) / 2.0f, 0.0f, (-(((int) (frameLayout$LayoutParams.height * 1.2f)) - frameLayout$LayoutParams.height)) / 2.0f, 0.0f);
        ScaleAnimation scaleAnimation = new ScaleAnimation(1.2f, 1.0f, 1.2f, 1.0f);
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        animationSet.addAnimation(scaleAnimation);
        animationSet.addAnimation(alphaAnimation);
        animationSet.addAnimation(translateAnimation);
        animationSet.setDuration(200L);
        this.mImageView.setVisibility(0);
        this.mImageView.startAnimation(animationSet);
    }

    private void startHideAnimation() {
        AnimationSet animationSet = new AnimationSet(false);
        FrameLayout$LayoutParams frameLayout$LayoutParams = (FrameLayout$LayoutParams) this.mImageView.getLayoutParams();
        TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, (frameLayout$LayoutParams.width * 0.19999999f) / 2.0f, 0.0f, (frameLayout$LayoutParams.height * 0.19999999f) / 2.0f);
        ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, 0.8f, 1.0f, 0.8f);
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        animationSet.addAnimation(translateAnimation);
        animationSet.addAnimation(alphaAnimation);
        animationSet.addAnimation(scaleAnimation);
        animationSet.setAnimationListener(new SideTouchUiIcon$AutoReviewIcon$1(this));
        animationSet.setDuration(200L);
        this.mImageView.startAnimation(animationSet);
        this.mImageView.setOnClickListener(null);
        this.mImageView.setClickable(false);
    }

    private void detachFromParent() {
        ViewParent parent = getIconView().getParent();
        if (parent != null) {
            detach((ViewGroup) parent);
        }
    }

    @Override // com.sonyericsson.android.camera.view.sidetouch.SideTouchUi$Icon
    public void setUiOrientation(int i) {
        this.mOrientation = i;
    }

    @Override // com.sonyericsson.android.camera.view.sidetouch.SideTouchUiIcon, com.sonyericsson.android.camera.view.sidetouch.SideTouchUi$Icon
    public void onFocusChanged(boolean z) {
        if (this.mBitmap == null) {
            return;
        }
        super.onFocusChanged(z);
    }

    @Override // com.sonyericsson.android.camera.view.AutoReviewContent$ContentReceiver
    public void onReceive(AutoReviewContent autoReviewContent) {
        if (autoReviewContent.mIsPhoto) {
            this.mBitmap = AutoReviewController.convertBitmap(this.mContext, autoReviewContent.mUri, autoReviewContent.mData, autoReviewContent.mIsReverse);
        } else {
            this.mBitmap = ThumbnailFactory.createVideoThumbnail(this.mContext, autoReviewContent.mUri, (int) RotationUtil.getAngle(this.mOrientation));
        }
        if (this.mBitmap == null || this.mBitmap.isRecycled()) {
            detachFromParent();
            return;
        }
        this.mCloseListener = autoReviewContent.mEventListener;
        this.mImageView.setImageBitmap(this.mBitmap);
        this.mImageView.setOnClickListener(autoReviewContent.mClickListener);
        startShowAnimation();
        startTimer(autoReviewContent.mDuration);
    }

    private void startTimer(long j) {
        if (CamLog.VERBOSE) {
            CamLog.d("startTimer: " + j);
        }
        stopTimer();
        if (j > 0) {
            this.mTimer = new CameraTimer(j, j, new SideTouchUiIcon$AutoReviewIcon$PreviewTimerHandler(this, null), "AutoReviewIcon", 0L);
            this.mTimer.start();
        }
    }

    private void stopTimer() {
        if (CamLog.VERBOSE) {
            CamLog.d("stopTimer: " + this.mTimer);
        }
        if (this.mTimer != null) {
            this.mTimer.cancel();
            this.mTimer = null;
        }
    }

    private boolean isPreviewAspectRatio(int i, int i2) {
        Rect previewSize = PositionConverter.getInstance().getPreviewSize();
        if (LayoutOrientationResolver.getInstance().getOrientation() == LayoutOrientationResolver$LayoutOrientationType.PORTRAIT) {
            if (previewSize.width() * i != previewSize.height() * i2) {
                return false;
            }
        } else if (previewSize.width() * i2 != previewSize.height() * i) {
            return false;
        }
        return true;
    }
}
