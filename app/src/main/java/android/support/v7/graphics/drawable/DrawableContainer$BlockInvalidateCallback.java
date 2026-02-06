package android.support.v7.graphics.drawable;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable$Callback;
import android.support.annotation.NonNull;

class DrawableContainer$BlockInvalidateCallback implements Drawable$Callback {
    private Drawable$Callback mCallback;

    @Override // android.graphics.drawable.Drawable$Callback
    public void invalidateDrawable(@NonNull Drawable drawable) {
    }

    DrawableContainer$BlockInvalidateCallback() {
    }

    public DrawableContainer$BlockInvalidateCallback wrap(Drawable$Callback drawable$Callback) {
        this.mCallback = drawable$Callback;
        return this;
    }

    public Drawable$Callback unwrap() {
        Drawable$Callback drawable$Callback = this.mCallback;
        this.mCallback = null;
        return drawable$Callback;
    }

    @Override // android.graphics.drawable.Drawable$Callback
    public void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j) {
        if (this.mCallback != null) {
            this.mCallback.scheduleDrawable(drawable, runnable, j);
        }
    }

    @Override // android.graphics.drawable.Drawable$Callback
    public void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
        if (this.mCallback != null) {
            this.mCallback.unscheduleDrawable(drawable, runnable);
        }
    }
}
