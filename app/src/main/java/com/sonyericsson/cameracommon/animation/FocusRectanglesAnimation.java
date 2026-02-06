package com.sonyericsson.cameracommon.animation;

import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import java.util.HashMap;
import java.util.Map;

public class FocusRectanglesAnimation {
    public static final String TAG = "FocusRectanglesAnimation";
    private final Context mContext;
    private AlphaAnimation mFadeOutAnimation;
    private final Map<Animation, View> mAnimationMap = new HashMap();
    private final FocusRectanglesAnimation$AnimationConfig mSingleConfig = new FocusRectanglesAnimation$AnimationConfig(this, 2131165338, 2131165337, 2131690319, 2131361800);
    private final FocusRectanglesAnimation$AnimationConfig mTouchConfig = new FocusRectanglesAnimation$AnimationConfig(this, 2131165338, 2131165337, 2131690320, 2131361800);
    private final FocusRectanglesAnimation$AnimationConfig mObjectConfig = new FocusRectanglesAnimation$AnimationConfig(this, 2131165336, 2131165335, 2131690318, 2131361800);

    static /* synthetic */ Context access$000(FocusRectanglesAnimation focusRectanglesAnimation) {
        return focusRectanglesAnimation.mContext;
    }

    static /* synthetic */ Map access$200(FocusRectanglesAnimation focusRectanglesAnimation) {
        return focusRectanglesAnimation.mAnimationMap;
    }

    public FocusRectanglesAnimation(Context context) {
        this.mContext = context;
    }

    public FocusRectanglesAnimation$AnimationConfig getObjectAnimationConfig() {
        return this.mObjectConfig;
    }

    public FocusRectanglesAnimation$AnimationConfig getTouchAnimationConfig() {
        return this.mTouchConfig;
    }

    public void playAfFocusInAnimationSingle(View view) {
        startFocusAnimation(view, 2131230865);
    }

    public void playTouchDownAnimation(View view) {
        startFocusAnimation(view, 2131230862);
    }

    public void playTouchUpAnimation(View view) {
        startFocusAnimation(view, 2131230866);
    }

    public void playAfFadeOutAnimationSingle(View view) {
        playAfFadeOutAnimation(view);
    }

    public void playAfFocusInAnimationTouch(View view, int i) {
        startFocusAnimation(view, i);
    }

    public void startFocusAnimation(View view, int i) {
        view.setBackgroundResource(i);
        Drawable background = view.getBackground();
        if (background instanceof AnimationDrawable) {
            ((AnimationDrawable) background).start();
        } else if (view.getAnimation() != null) {
            view.clearAnimation();
        }
    }

    public void stopFocusAnimation(View view) {
        Drawable background = view.getBackground();
        if (background instanceof AnimationDrawable) {
            ((AnimationDrawable) background).stop();
        }
    }

    public void playAfFadeOutAnimationTouch(View view) {
        playAfFadeOutAnimation(view);
    }

    public void playAfFadeOutAnimationObject(View view) {
        playAfFadeOutAnimation(view);
    }

    private void playAfFadeOutAnimation(View view) {
        AlphaAnimation fadeOutAnimation = getFadeOutAnimation();
        fadeOutAnimation.setAnimationListener(new FocusRectanglesAnimation$FadeOutAnimationListener(this, null));
        view.startAnimation(fadeOutAnimation);
        this.mAnimationMap.put(fadeOutAnimation, view);
    }

    private AnimationSet playTouchDownAnimation(View view, AnimationSet animationSet, FocusRectanglesAnimation$AnimationConfig focusRectanglesAnimation$AnimationConfig) {
        AnimationSet touchDownAnimation = getTouchDownAnimation(view, animationSet, focusRectanglesAnimation$AnimationConfig);
        view.startAnimation(touchDownAnimation);
        return touchDownAnimation;
    }

    private AnimationSet playTouchUpAnimation(View view, AnimationSet animationSet, FocusRectanglesAnimation$AnimationConfig focusRectanglesAnimation$AnimationConfig) {
        AnimationSet touchUpAnimation = getTouchUpAnimation(view, animationSet, focusRectanglesAnimation$AnimationConfig);
        view.startAnimation(touchUpAnimation);
        return touchUpAnimation;
    }

    public AnimationSet getTouchDownAnimation(View view, AnimationSet animationSet, FocusRectanglesAnimation$AnimationConfig focusRectanglesAnimation$AnimationConfig) {
        return animationSet == null ? (AnimationSet) AnimationUtils.loadAnimation(this.mContext, 2130771986) : animationSet;
    }

    public AnimationSet getTouchUpAnimation(View view, AnimationSet animationSet, FocusRectanglesAnimation$AnimationConfig focusRectanglesAnimation$AnimationConfig) {
        return animationSet == null ? (AnimationSet) AnimationUtils.loadAnimation(this.mContext, 2130771987) : animationSet;
    }

    private AlphaAnimation getFadeOutAnimation() {
        if (this.mFadeOutAnimation == null) {
            this.mFadeOutAnimation = (AlphaAnimation) AnimationUtils.loadAnimation(this.mContext, 2130771985);
            this.mFadeOutAnimation.setAnimationListener(new FocusRectanglesAnimation$FadeOutAnimationListener(this, null));
        }
        return this.mFadeOutAnimation;
    }

    public void cancelAfFocusAnimationObject(View view) {
        if (view.getWidth() == this.mObjectConfig.mToWidth && view.getHeight() == this.mObjectConfig.mToHeight) {
            return;
        }
        view.getLayoutParams().width = this.mObjectConfig.mToWidth;
        view.getLayoutParams().height = this.mObjectConfig.mToHeight;
        view.requestLayout();
    }

    public void cancelAfFocusAnimationSingle(View view) {
        if (view.getWidth() == this.mSingleConfig.mToWidth && view.getHeight() == this.mSingleConfig.mToHeight) {
            return;
        }
        view.getLayoutParams().width = this.mSingleConfig.mToWidth;
        view.getLayoutParams().height = this.mSingleConfig.mToHeight;
        view.requestLayout();
    }

    public void cancelAfFocusAnimationTouch(View view) {
        if (view.getWidth() == this.mTouchConfig.mToWidth && view.getHeight() == this.mTouchConfig.mToHeight) {
            return;
        }
        view.getLayoutParams().width = this.mTouchConfig.mToWidth;
        view.getLayoutParams().height = this.mTouchConfig.mToHeight;
        view.requestLayout();
    }
}
