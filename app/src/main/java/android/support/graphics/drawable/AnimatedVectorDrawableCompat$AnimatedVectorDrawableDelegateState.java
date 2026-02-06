package android.support.graphics.drawable;

import android.content.res.Resources;
import android.content.res.Resources$Theme;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable$ConstantState;
import android.support.annotation.RequiresApi;

@RequiresApi(24)
class AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState extends Drawable$ConstantState {
    private final Drawable$ConstantState mDelegateState;

    public AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState(Drawable$ConstantState drawable$ConstantState) {
        this.mDelegateState = drawable$ConstantState;
    }

    @Override // android.graphics.drawable.Drawable$ConstantState
    public Drawable newDrawable() {
        AnimatedVectorDrawableCompat animatedVectorDrawableCompat = new AnimatedVectorDrawableCompat();
        animatedVectorDrawableCompat.mDelegateDrawable = this.mDelegateState.newDrawable();
        animatedVectorDrawableCompat.mDelegateDrawable.setCallback(animatedVectorDrawableCompat.mCallback);
        return animatedVectorDrawableCompat;
    }

    @Override // android.graphics.drawable.Drawable$ConstantState
    public Drawable newDrawable(Resources resources) {
        AnimatedVectorDrawableCompat animatedVectorDrawableCompat = new AnimatedVectorDrawableCompat();
        animatedVectorDrawableCompat.mDelegateDrawable = this.mDelegateState.newDrawable(resources);
        animatedVectorDrawableCompat.mDelegateDrawable.setCallback(animatedVectorDrawableCompat.mCallback);
        return animatedVectorDrawableCompat;
    }

    @Override // android.graphics.drawable.Drawable$ConstantState
    public Drawable newDrawable(Resources resources, Resources$Theme resources$Theme) {
        AnimatedVectorDrawableCompat animatedVectorDrawableCompat = new AnimatedVectorDrawableCompat();
        animatedVectorDrawableCompat.mDelegateDrawable = this.mDelegateState.newDrawable(resources, resources$Theme);
        animatedVectorDrawableCompat.mDelegateDrawable.setCallback(animatedVectorDrawableCompat.mCallback);
        return animatedVectorDrawableCompat;
    }

    @Override // android.graphics.drawable.Drawable$ConstantState
    public boolean canApplyTheme() {
        return this.mDelegateState.canApplyTheme();
    }

    @Override // android.graphics.drawable.Drawable$ConstantState
    public int getChangingConfigurations() {
        return this.mDelegateState.getChangingConfigurations();
    }
}
