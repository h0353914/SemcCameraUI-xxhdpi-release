package android.support.v4.graphics.drawable;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;

class WrappedDrawableApi21$DrawableWrapperStateLollipop extends WrappedDrawableApi14$DrawableWrapperState {
    WrappedDrawableApi21$DrawableWrapperStateLollipop(@Nullable WrappedDrawableApi14$DrawableWrapperState wrappedDrawableApi14$DrawableWrapperState, @Nullable Resources resources) {
        super(wrappedDrawableApi14$DrawableWrapperState, resources);
    }

    @Override // android.support.v4.graphics.drawable.WrappedDrawableApi14$DrawableWrapperState, android.graphics.drawable.Drawable$ConstantState
    @NonNull
    public Drawable newDrawable(@Nullable Resources resources) {
        return new WrappedDrawableApi21(this, resources);
    }
}
