package android.support.graphics.drawable;

import android.graphics.drawable.Animatable2$AnimationCallback;
import android.graphics.drawable.Drawable;
import android.support.annotation.RequiresApi;

/* JADX INFO: loaded from: classes.dex */
public abstract class Animatable2Compat$AnimationCallback {
    Animatable2$AnimationCallback mPlatformCallback;

    public void onAnimationEnd(Drawable drawable) {
    }

    public void onAnimationStart(Drawable drawable) {
    }

    @RequiresApi(23)
    Animatable2$AnimationCallback getPlatformCallback() {
        if (this.mPlatformCallback == null) {
            this.mPlatformCallback = new Animatable2Compat$AnimationCallback$1(this);
        }
        return this.mPlatformCallback;
    }
}
