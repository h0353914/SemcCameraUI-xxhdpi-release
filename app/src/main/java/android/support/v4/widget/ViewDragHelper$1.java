package android.support.v4.widget;

import android.view.animation.Interpolator;

class ViewDragHelper$1 implements Interpolator {
    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        float f2 = f - 1.0f;
        return (f2 * f2 * f2 * f2 * f2) + 1.0f;
    }

    ViewDragHelper$1() {
    }
}
