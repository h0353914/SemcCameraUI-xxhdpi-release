package com.sonyericsson.android.camera.view;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.TranslateAnimation;
import android.widget.FrameLayout;
import com.sonyericsson.cameracommon.utility.LayoutOrientationResolver;
import com.sonyericsson.cameracommon.utility.LayoutOrientationResolver$LayoutOrientationType;

/* JADX INFO: loaded from: classes.dex */
public class SuperSlowMotionTriggerAnimationController {
    private Animation mAlphaAnimation;
    private View mBackground;
    private View mLineLandscape;
    private View mLinePortrait;
    private SuperSlowMotionTriggerAnimationController$OnAnimationEndListener mListener;
    private FrameLayout mPreviewContainer;
    private View mRoot;

    static /* synthetic */ SuperSlowMotionTriggerAnimationController$OnAnimationEndListener access$000(SuperSlowMotionTriggerAnimationController superSlowMotionTriggerAnimationController) {
        return superSlowMotionTriggerAnimationController.mListener;
    }

    static /* synthetic */ View access$100(SuperSlowMotionTriggerAnimationController superSlowMotionTriggerAnimationController) {
        return superSlowMotionTriggerAnimationController.mBackground;
    }

    static /* synthetic */ View access$200(SuperSlowMotionTriggerAnimationController superSlowMotionTriggerAnimationController) {
        return superSlowMotionTriggerAnimationController.mLineLandscape;
    }

    static /* synthetic */ View access$300(SuperSlowMotionTriggerAnimationController superSlowMotionTriggerAnimationController) {
        return superSlowMotionTriggerAnimationController.mLinePortrait;
    }

    public void setup(FrameLayout frameLayout) {
        this.mPreviewContainer = frameLayout;
    }

    public void prepareViews() {
        if (this.mRoot != null || this.mPreviewContainer == null) {
            return;
        }
        Context context = this.mPreviewContainer.getContext();
        this.mRoot = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(2131493021, this.mPreviewContainer);
        this.mBackground = this.mRoot.findViewById(2131296316);
        this.mLineLandscape = this.mRoot.findViewById(2131296450);
        this.mLinePortrait = this.mRoot.findViewById(2131296451);
        this.mAlphaAnimation = AnimationUtils.loadAnimation(context, 2130772003);
        this.mAlphaAnimation.setAnimationListener(new SuperSlowMotionTriggerAnimationController$1(this));
    }

    public void start(SuperSlowMotionTriggerAnimationController$OnAnimationEndListener superSlowMotionTriggerAnimationController$OnAnimationEndListener, boolean z) {
        if (this.mRoot == null) {
            return;
        }
        this.mBackground.setVisibility(0);
        this.mListener = superSlowMotionTriggerAnimationController$OnAnimationEndListener;
        if (LayoutOrientationResolver.getInstance().getOrientation() == (z ? LayoutOrientationResolver$LayoutOrientationType.LANDSCAPE : LayoutOrientationResolver$LayoutOrientationType.PORTRAIT)) {
            this.mLineLandscape.setVisibility(0);
            this.mLinePortrait.setVisibility(8);
            this.mLineLandscape.startAnimation(createLineAnimation(this.mRoot.getContext(), z));
        } else {
            this.mLineLandscape.setVisibility(8);
            this.mLinePortrait.setVisibility(0);
            this.mLinePortrait.startAnimation(createLineAnimation(this.mRoot.getContext(), z));
        }
        this.mBackground.startAnimation(this.mAlphaAnimation);
    }

    private Animation createLineAnimation(Context context, boolean z) {
        TranslateAnimation translateAnimation;
        if (LayoutOrientationResolver.getInstance().getOrientation() == LayoutOrientationResolver$LayoutOrientationType.PORTRAIT) {
            if (!z) {
                translateAnimation = new TranslateAnimation(2, 0.0f, 2, 1.0f, 2, 0.0f, 2, 0.0f);
            } else {
                translateAnimation = new TranslateAnimation(2, 0.0f, 2, 0.0f, 2, 0.0f, 2, 1.0f);
            }
        } else if (z) {
            translateAnimation = new TranslateAnimation(2, 0.0f, 2, 1.0f, 2, 0.0f, 2, 0.0f);
        } else {
            translateAnimation = new TranslateAnimation(2, 0.0f, 2, 0.0f, 2, 1.0f, 2, 0.0f);
        }
        translateAnimation.setDuration(300L);
        translateAnimation.setFillAfter(false);
        translateAnimation.setInterpolator(context, 2131427329);
        return translateAnimation;
    }
}
