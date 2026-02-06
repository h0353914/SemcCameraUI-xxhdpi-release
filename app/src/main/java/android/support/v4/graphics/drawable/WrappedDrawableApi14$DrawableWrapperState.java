package android.support.v4.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff$Mode;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable$ConstantState;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;

protected abstract class WrappedDrawableApi14$DrawableWrapperState extends Drawable$ConstantState {
    int mChangingConfigurations;
    Drawable$ConstantState mDrawableState;
    ColorStateList mTint;
    PorterDuff$Mode mTintMode;

    @Override // android.graphics.drawable.Drawable$ConstantState
    @NonNull
    public abstract Drawable newDrawable(@Nullable Resources resources);

    WrappedDrawableApi14$DrawableWrapperState(@Nullable WrappedDrawableApi14$DrawableWrapperState wrappedDrawableApi14$DrawableWrapperState, @Nullable Resources resources) {
        this.mTint = null;
        this.mTintMode = WrappedDrawableApi14.DEFAULT_TINT_MODE;
        if (wrappedDrawableApi14$DrawableWrapperState != null) {
            this.mChangingConfigurations = wrappedDrawableApi14$DrawableWrapperState.mChangingConfigurations;
            this.mDrawableState = wrappedDrawableApi14$DrawableWrapperState.mDrawableState;
            this.mTint = wrappedDrawableApi14$DrawableWrapperState.mTint;
            this.mTintMode = wrappedDrawableApi14$DrawableWrapperState.mTintMode;
        }
    }

    @Override // android.graphics.drawable.Drawable$ConstantState
    @NonNull
    public Drawable newDrawable() {
        return newDrawable(null);
    }

    @Override // android.graphics.drawable.Drawable$ConstantState
    public int getChangingConfigurations() {
        return (this.mDrawableState != null ? this.mDrawableState.getChangingConfigurations() : 0) | this.mChangingConfigurations;
    }

    boolean canConstantState() {
        return this.mDrawableState != null;
    }
}
