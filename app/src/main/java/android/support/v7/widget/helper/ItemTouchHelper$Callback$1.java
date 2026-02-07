package android.support.v7.widget.helper;

import android.view.animation.Interpolator;

/* JADX INFO: loaded from: classes.dex */
class ItemTouchHelper$Callback$1 implements Interpolator {
    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        return f * f * f * f * f;
    }

    ItemTouchHelper$Callback$1() {
    }
}
