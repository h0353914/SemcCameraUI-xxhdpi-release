package android.support.graphics.drawable;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable$Callback;
import android.graphics.drawable.Drawable$ConstantState;
import android.support.v4.util.ArrayMap;
import java.util.ArrayList;

class AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState extends Drawable$ConstantState {
    AnimatorSet mAnimatorSet;
    ArrayList<Animator> mAnimators;
    int mChangingConfigurations;
    ArrayMap<Animator, String> mTargetNameMap;
    VectorDrawableCompat mVectorDrawable;

    public AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState(Context context, AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState animatedVectorDrawableCompat$AnimatedVectorDrawableCompatState, Drawable$Callback drawable$Callback, Resources resources) {
        if (animatedVectorDrawableCompat$AnimatedVectorDrawableCompatState != null) {
            this.mChangingConfigurations = animatedVectorDrawableCompat$AnimatedVectorDrawableCompatState.mChangingConfigurations;
            if (animatedVectorDrawableCompat$AnimatedVectorDrawableCompatState.mVectorDrawable != null) {
                Drawable$ConstantState constantState = animatedVectorDrawableCompat$AnimatedVectorDrawableCompatState.mVectorDrawable.getConstantState();
                if (resources != null) {
                    this.mVectorDrawable = (VectorDrawableCompat) constantState.newDrawable(resources);
                } else {
                    this.mVectorDrawable = (VectorDrawableCompat) constantState.newDrawable();
                }
                this.mVectorDrawable = (VectorDrawableCompat) this.mVectorDrawable.mutate();
                this.mVectorDrawable.setCallback(drawable$Callback);
                this.mVectorDrawable.setBounds(animatedVectorDrawableCompat$AnimatedVectorDrawableCompatState.mVectorDrawable.getBounds());
                this.mVectorDrawable.setAllowCaching(false);
            }
            if (animatedVectorDrawableCompat$AnimatedVectorDrawableCompatState.mAnimators != null) {
                int size = animatedVectorDrawableCompat$AnimatedVectorDrawableCompatState.mAnimators.size();
                this.mAnimators = new ArrayList<>(size);
                this.mTargetNameMap = new ArrayMap<>(size);
                for (int i = 0; i < size; i++) {
                    Animator animator = animatedVectorDrawableCompat$AnimatedVectorDrawableCompatState.mAnimators.get(i);
                    Animator animatorClone = animator.clone();
                    String str = animatedVectorDrawableCompat$AnimatedVectorDrawableCompatState.mTargetNameMap.get(animator);
                    animatorClone.setTarget(this.mVectorDrawable.getTargetByName(str));
                    this.mAnimators.add(animatorClone);
                    this.mTargetNameMap.put(animatorClone, str);
                }
                setupAnimatorSet();
            }
        }
    }

    @Override // android.graphics.drawable.Drawable$ConstantState
    public Drawable newDrawable() {
        throw new IllegalStateException("No constant state support for SDK < 24.");
    }

    @Override // android.graphics.drawable.Drawable$ConstantState
    public Drawable newDrawable(Resources resources) {
        throw new IllegalStateException("No constant state support for SDK < 24.");
    }

    @Override // android.graphics.drawable.Drawable$ConstantState
    public int getChangingConfigurations() {
        return this.mChangingConfigurations;
    }

    public void setupAnimatorSet() {
        if (this.mAnimatorSet == null) {
            this.mAnimatorSet = new AnimatorSet();
        }
        this.mAnimatorSet.playTogether(this.mAnimators);
    }
}
