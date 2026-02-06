package android.support.v4.widget;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint$Cap;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.v4.util.Preconditions;
import android.support.v4.view.animation.FastOutSlowInInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;

public class CircularProgressDrawable extends Drawable implements Animatable {
    private static final int ANIMATION_DURATION = 1332;
    private static final int ARROW_HEIGHT = 5;
    private static final int ARROW_HEIGHT_LARGE = 6;
    private static final int ARROW_WIDTH = 10;
    private static final int ARROW_WIDTH_LARGE = 12;
    private static final float CENTER_RADIUS = 7.5f;
    private static final float CENTER_RADIUS_LARGE = 11.0f;
    private static final float COLOR_CHANGE_OFFSET = 0.75f;
    public static final int DEFAULT = 1;
    private static final float GROUP_FULL_ROTATION = 216.0f;
    public static final int LARGE = 0;
    private static final float MAX_PROGRESS_ARC = 0.8f;
    private static final float MIN_PROGRESS_ARC = 0.01f;
    private static final float RING_ROTATION = 0.20999998f;
    private static final float SHRINK_OFFSET = 0.5f;
    private static final float STROKE_WIDTH = 2.5f;
    private static final float STROKE_WIDTH_LARGE = 3.0f;
    private Animator mAnimator;
    boolean mFinishing;
    private Resources mResources;
    private final CircularProgressDrawable$Ring mRing = new CircularProgressDrawable$Ring();
    private float mRotation;
    float mRotationCount;
    private static final Interpolator LINEAR_INTERPOLATOR = new LinearInterpolator();
    private static final Interpolator MATERIAL_INTERPOLATOR = new FastOutSlowInInterpolator();
    private static final int[] COLORS = {-16777216};

    private int evaluateColorChange(float f, int i, int i2) {
        return ((((i >> 24) & 255) + ((int) ((((i2 >> 24) & 255) - r5) * f))) << 24) | ((((i >> 16) & 255) + ((int) ((((i2 >> 16) & 255) - r0) * f))) << 16) | ((((i >> 8) & 255) + ((int) ((((i2 >> 8) & 255) - r1) * f))) << 8) | ((i & 255) + ((int) (f * ((i2 & 255) - r7))));
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public CircularProgressDrawable(@NonNull Context context) {
        this.mResources = ((Context) Preconditions.checkNotNull(context)).getResources();
        this.mRing.setColors(COLORS);
        setStrokeWidth(2.5f);
        setupAnimators();
    }

    private void setSizeParameters(float f, float f2, float f3, float f4) {
        CircularProgressDrawable$Ring circularProgressDrawable$Ring = this.mRing;
        float f5 = this.mResources.getDisplayMetrics().density;
        circularProgressDrawable$Ring.setStrokeWidth(f2 * f5);
        circularProgressDrawable$Ring.setCenterRadius(f * f5);
        circularProgressDrawable$Ring.setColorIndex(0);
        circularProgressDrawable$Ring.setArrowDimensions(f3 * f5, f4 * f5);
    }

    public void setStyle(int i) {
        if (i == 0) {
            setSizeParameters(11.0f, 3.0f, 12.0f, 6.0f);
        } else {
            setSizeParameters(7.5f, 2.5f, 10.0f, 5.0f);
        }
        invalidateSelf();
    }

    public float getStrokeWidth() {
        return this.mRing.getStrokeWidth();
    }

    public void setStrokeWidth(float f) {
        this.mRing.setStrokeWidth(f);
        invalidateSelf();
    }

    public float getCenterRadius() {
        return this.mRing.getCenterRadius();
    }

    public void setCenterRadius(float f) {
        this.mRing.setCenterRadius(f);
        invalidateSelf();
    }

    public void setStrokeCap(@NonNull Paint$Cap paint$Cap) {
        this.mRing.setStrokeCap(paint$Cap);
        invalidateSelf();
    }

    @NonNull
    public Paint$Cap getStrokeCap() {
        return this.mRing.getStrokeCap();
    }

    public float getArrowWidth() {
        return this.mRing.getArrowWidth();
    }

    public float getArrowHeight() {
        return this.mRing.getArrowHeight();
    }

    public void setArrowDimensions(float f, float f2) {
        this.mRing.setArrowDimensions(f, f2);
        invalidateSelf();
    }

    public boolean getArrowEnabled() {
        return this.mRing.getShowArrow();
    }

    public void setArrowEnabled(boolean z) {
        this.mRing.setShowArrow(z);
        invalidateSelf();
    }

    public float getArrowScale() {
        return this.mRing.getArrowScale();
    }

    public void setArrowScale(float f) {
        this.mRing.setArrowScale(f);
        invalidateSelf();
    }

    public float getStartTrim() {
        return this.mRing.getStartTrim();
    }

    public float getEndTrim() {
        return this.mRing.getEndTrim();
    }

    public void setStartEndTrim(float f, float f2) {
        this.mRing.setStartTrim(f);
        this.mRing.setEndTrim(f2);
        invalidateSelf();
    }

    public float getProgressRotation() {
        return this.mRing.getRotation();
    }

    public void setProgressRotation(float f) {
        this.mRing.setRotation(f);
        invalidateSelf();
    }

    public int getBackgroundColor() {
        return this.mRing.getBackgroundColor();
    }

    public void setBackgroundColor(int i) {
        this.mRing.setBackgroundColor(i);
        invalidateSelf();
    }

    @NonNull
    public int[] getColorSchemeColors() {
        return this.mRing.getColors();
    }

    public void setColorSchemeColors(@NonNull int... iArr) {
        this.mRing.setColors(iArr);
        this.mRing.setColorIndex(0);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        canvas.save();
        canvas.rotate(this.mRotation, bounds.exactCenterX(), bounds.exactCenterY());
        this.mRing.draw(canvas, bounds);
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.mRing.setAlpha(i);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.mRing.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.mRing.setColorFilter(colorFilter);
        invalidateSelf();
    }

    private void setRotation(float f) {
        this.mRotation = f;
    }

    private float getRotation() {
        return this.mRotation;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.mAnimator.isRunning();
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.mAnimator.cancel();
        this.mRing.storeOriginals();
        if (this.mRing.getEndTrim() != this.mRing.getStartTrim()) {
            this.mFinishing = true;
            this.mAnimator.setDuration(666L);
            this.mAnimator.start();
        } else {
            this.mRing.setColorIndex(0);
            this.mRing.resetOriginals();
            this.mAnimator.setDuration(1332L);
            this.mAnimator.start();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.mAnimator.cancel();
        setRotation(0.0f);
        this.mRing.setShowArrow(false);
        this.mRing.setColorIndex(0);
        this.mRing.resetOriginals();
        invalidateSelf();
    }

    void updateRingColor(float f, CircularProgressDrawable$Ring circularProgressDrawable$Ring) {
        if (f > 0.75f) {
            circularProgressDrawable$Ring.setColor(evaluateColorChange((f - 0.75f) / 0.25f, circularProgressDrawable$Ring.getStartingColor(), circularProgressDrawable$Ring.getNextColor()));
        } else {
            circularProgressDrawable$Ring.setColor(circularProgressDrawable$Ring.getStartingColor());
        }
    }

    private void applyFinishTranslation(float f, CircularProgressDrawable$Ring circularProgressDrawable$Ring) {
        updateRingColor(f, circularProgressDrawable$Ring);
        float fFloor = (float) (Math.floor(circularProgressDrawable$Ring.getStartingRotation() / 0.8f) + 1.0d);
        circularProgressDrawable$Ring.setStartTrim(circularProgressDrawable$Ring.getStartingStartTrim() + (((circularProgressDrawable$Ring.getStartingEndTrim() - 0.01f) - circularProgressDrawable$Ring.getStartingStartTrim()) * f));
        circularProgressDrawable$Ring.setEndTrim(circularProgressDrawable$Ring.getStartingEndTrim());
        circularProgressDrawable$Ring.setRotation(circularProgressDrawable$Ring.getStartingRotation() + ((fFloor - circularProgressDrawable$Ring.getStartingRotation()) * f));
    }

    void applyTransformation(float f, CircularProgressDrawable$Ring circularProgressDrawable$Ring, boolean z) {
        float startingStartTrim;
        float interpolation;
        if (this.mFinishing) {
            applyFinishTranslation(f, circularProgressDrawable$Ring);
            return;
        }
        if (f != 1.0f || z) {
            float startingRotation = circularProgressDrawable$Ring.getStartingRotation();
            if (f < 0.5f) {
                float startingStartTrim2 = circularProgressDrawable$Ring.getStartingStartTrim();
                interpolation = startingStartTrim2;
                startingStartTrim = (0.79f * MATERIAL_INTERPOLATOR.getInterpolation(f / 0.5f)) + 0.01f + startingStartTrim2;
            } else {
                startingStartTrim = circularProgressDrawable$Ring.getStartingStartTrim() + 0.79f;
                interpolation = startingStartTrim - ((0.79f * (1.0f - MATERIAL_INTERPOLATOR.getInterpolation((f - 0.5f) / 0.5f))) + 0.01f);
            }
            float f2 = 216.0f * (f + this.mRotationCount);
            circularProgressDrawable$Ring.setStartTrim(interpolation);
            circularProgressDrawable$Ring.setEndTrim(startingStartTrim);
            circularProgressDrawable$Ring.setRotation(startingRotation + (0.20999998f * f));
            setRotation(f2);
        }
    }

    private void setupAnimators() {
        CircularProgressDrawable$Ring circularProgressDrawable$Ring = this.mRing;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new CircularProgressDrawable$1(this, circularProgressDrawable$Ring));
        valueAnimatorOfFloat.setRepeatCount(-1);
        valueAnimatorOfFloat.setRepeatMode(1);
        valueAnimatorOfFloat.setInterpolator(LINEAR_INTERPOLATOR);
        valueAnimatorOfFloat.addListener(new CircularProgressDrawable$2(this, circularProgressDrawable$Ring));
        this.mAnimator = valueAnimatorOfFloat;
    }
}
