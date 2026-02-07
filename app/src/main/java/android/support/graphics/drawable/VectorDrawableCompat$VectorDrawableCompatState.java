package android.support.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap$Config;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff$Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable$ConstantState;
import android.support.annotation.NonNull;

/* JADX INFO: loaded from: classes.dex */
class VectorDrawableCompat$VectorDrawableCompatState extends Drawable$ConstantState {
    boolean mAutoMirrored;
    boolean mCacheDirty;
    boolean mCachedAutoMirrored;
    Bitmap mCachedBitmap;
    int mCachedRootAlpha;
    int[] mCachedThemeAttrs;
    ColorStateList mCachedTint;
    PorterDuff$Mode mCachedTintMode;
    int mChangingConfigurations;
    Paint mTempPaint;
    ColorStateList mTint;
    PorterDuff$Mode mTintMode;
    VectorDrawableCompat$VPathRenderer mVPathRenderer;

    public VectorDrawableCompat$VectorDrawableCompatState(VectorDrawableCompat$VectorDrawableCompatState vectorDrawableCompat$VectorDrawableCompatState) {
        this.mTint = null;
        this.mTintMode = VectorDrawableCompat.DEFAULT_TINT_MODE;
        if (vectorDrawableCompat$VectorDrawableCompatState != null) {
            this.mChangingConfigurations = vectorDrawableCompat$VectorDrawableCompatState.mChangingConfigurations;
            this.mVPathRenderer = new VectorDrawableCompat$VPathRenderer(vectorDrawableCompat$VectorDrawableCompatState.mVPathRenderer);
            if (vectorDrawableCompat$VectorDrawableCompatState.mVPathRenderer.mFillPaint != null) {
                this.mVPathRenderer.mFillPaint = new Paint(vectorDrawableCompat$VectorDrawableCompatState.mVPathRenderer.mFillPaint);
            }
            if (vectorDrawableCompat$VectorDrawableCompatState.mVPathRenderer.mStrokePaint != null) {
                this.mVPathRenderer.mStrokePaint = new Paint(vectorDrawableCompat$VectorDrawableCompatState.mVPathRenderer.mStrokePaint);
            }
            this.mTint = vectorDrawableCompat$VectorDrawableCompatState.mTint;
            this.mTintMode = vectorDrawableCompat$VectorDrawableCompatState.mTintMode;
            this.mAutoMirrored = vectorDrawableCompat$VectorDrawableCompatState.mAutoMirrored;
        }
    }

    public void drawCachedBitmapWithRootAlpha(Canvas canvas, ColorFilter colorFilter, Rect rect) {
        canvas.drawBitmap(this.mCachedBitmap, (Rect) null, rect, getPaint(colorFilter));
    }

    public boolean hasTranslucentRoot() {
        return this.mVPathRenderer.getRootAlpha() < 255;
    }

    public Paint getPaint(ColorFilter colorFilter) {
        if (!hasTranslucentRoot() && colorFilter == null) {
            return null;
        }
        if (this.mTempPaint == null) {
            this.mTempPaint = new Paint();
            this.mTempPaint.setFilterBitmap(true);
        }
        this.mTempPaint.setAlpha(this.mVPathRenderer.getRootAlpha());
        this.mTempPaint.setColorFilter(colorFilter);
        return this.mTempPaint;
    }

    public void updateCachedBitmap(int i, int i2) {
        this.mCachedBitmap.eraseColor(0);
        this.mVPathRenderer.draw(new Canvas(this.mCachedBitmap), i, i2, null);
    }

    public void createCachedBitmapIfNeeded(int i, int i2) {
        if (this.mCachedBitmap == null || !canReuseBitmap(i, i2)) {
            this.mCachedBitmap = Bitmap.createBitmap(i, i2, Bitmap$Config.ARGB_8888);
            this.mCacheDirty = true;
        }
    }

    public boolean canReuseBitmap(int i, int i2) {
        return i == this.mCachedBitmap.getWidth() && i2 == this.mCachedBitmap.getHeight();
    }

    public boolean canReuseCache() {
        return !this.mCacheDirty && this.mCachedTint == this.mTint && this.mCachedTintMode == this.mTintMode && this.mCachedAutoMirrored == this.mAutoMirrored && this.mCachedRootAlpha == this.mVPathRenderer.getRootAlpha();
    }

    public void updateCacheStates() {
        this.mCachedTint = this.mTint;
        this.mCachedTintMode = this.mTintMode;
        this.mCachedRootAlpha = this.mVPathRenderer.getRootAlpha();
        this.mCachedAutoMirrored = this.mAutoMirrored;
        this.mCacheDirty = false;
    }

    public VectorDrawableCompat$VectorDrawableCompatState() {
        this.mTint = null;
        this.mTintMode = VectorDrawableCompat.DEFAULT_TINT_MODE;
        this.mVPathRenderer = new VectorDrawableCompat$VPathRenderer();
    }

    @Override // android.graphics.drawable.Drawable$ConstantState
    @NonNull
    public Drawable newDrawable() {
        return new VectorDrawableCompat(this);
    }

    @Override // android.graphics.drawable.Drawable$ConstantState
    @NonNull
    public Drawable newDrawable(Resources resources) {
        return new VectorDrawableCompat(this);
    }

    @Override // android.graphics.drawable.Drawable$ConstantState
    public int getChangingConfigurations() {
        return this.mChangingConfigurations;
    }

    public boolean isStateful() {
        return this.mVPathRenderer.isStateful();
    }

    public boolean onStateChanged(int[] iArr) {
        boolean zOnStateChanged = this.mVPathRenderer.onStateChanged(iArr);
        this.mCacheDirty |= zOnStateChanged;
        return zOnStateChanged;
    }
}
