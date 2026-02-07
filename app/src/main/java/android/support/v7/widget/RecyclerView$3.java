package android.support.v7.widget;

import android.view.animation.Interpolator;

/* JADX INFO: loaded from: classes.dex */
class RecyclerView$3 implements Interpolator {
    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        float f2 = f - 1.0f;
        return (f2 * f2 * f2 * f2 * f2) + 1.0f;
    }

    RecyclerView$3() {
    }
}
