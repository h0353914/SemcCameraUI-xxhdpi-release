package android.support.graphics.drawable;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint$Style;
import android.graphics.Path;
import android.graphics.Path$FillType;
import android.graphics.PathMeasure;
import android.graphics.Shader;
import android.support.v4.content.res.ComplexColorCompat;
import android.support.v4.util.ArrayMap;

/* JADX INFO: loaded from: classes.dex */
class VectorDrawableCompat$VPathRenderer {
    private static final Matrix IDENTITY_MATRIX = new Matrix();
    float mBaseHeight;
    float mBaseWidth;
    private int mChangingConfigurations;
    Paint mFillPaint;
    private final Matrix mFinalPathMatrix;
    Boolean mIsStateful;
    private final Path mPath;
    private PathMeasure mPathMeasure;
    private final Path mRenderPath;
    int mRootAlpha;
    final VectorDrawableCompat$VGroup mRootGroup;
    String mRootName;
    Paint mStrokePaint;
    final ArrayMap<String, Object> mVGTargetsMap;
    float mViewportHeight;
    float mViewportWidth;

    private static float cross(float f, float f2, float f3, float f4) {
        return (f * f4) - (f2 * f3);
    }

    public VectorDrawableCompat$VPathRenderer() {
        this.mFinalPathMatrix = new Matrix();
        this.mBaseWidth = 0.0f;
        this.mBaseHeight = 0.0f;
        this.mViewportWidth = 0.0f;
        this.mViewportHeight = 0.0f;
        this.mRootAlpha = 255;
        this.mRootName = null;
        this.mIsStateful = null;
        this.mVGTargetsMap = new ArrayMap<>();
        this.mRootGroup = new VectorDrawableCompat$VGroup();
        this.mPath = new Path();
        this.mRenderPath = new Path();
    }

    public void setRootAlpha(int i) {
        this.mRootAlpha = i;
    }

    public int getRootAlpha() {
        return this.mRootAlpha;
    }

    public void setAlpha(float f) {
        setRootAlpha((int) (f * 255.0f));
    }

    public float getAlpha() {
        return getRootAlpha() / 255.0f;
    }

    public VectorDrawableCompat$VPathRenderer(VectorDrawableCompat$VPathRenderer vectorDrawableCompat$VPathRenderer) {
        this.mFinalPathMatrix = new Matrix();
        this.mBaseWidth = 0.0f;
        this.mBaseHeight = 0.0f;
        this.mViewportWidth = 0.0f;
        this.mViewportHeight = 0.0f;
        this.mRootAlpha = 255;
        this.mRootName = null;
        this.mIsStateful = null;
        this.mVGTargetsMap = new ArrayMap<>();
        this.mRootGroup = new VectorDrawableCompat$VGroup(vectorDrawableCompat$VPathRenderer.mRootGroup, this.mVGTargetsMap);
        this.mPath = new Path(vectorDrawableCompat$VPathRenderer.mPath);
        this.mRenderPath = new Path(vectorDrawableCompat$VPathRenderer.mRenderPath);
        this.mBaseWidth = vectorDrawableCompat$VPathRenderer.mBaseWidth;
        this.mBaseHeight = vectorDrawableCompat$VPathRenderer.mBaseHeight;
        this.mViewportWidth = vectorDrawableCompat$VPathRenderer.mViewportWidth;
        this.mViewportHeight = vectorDrawableCompat$VPathRenderer.mViewportHeight;
        this.mChangingConfigurations = vectorDrawableCompat$VPathRenderer.mChangingConfigurations;
        this.mRootAlpha = vectorDrawableCompat$VPathRenderer.mRootAlpha;
        this.mRootName = vectorDrawableCompat$VPathRenderer.mRootName;
        if (vectorDrawableCompat$VPathRenderer.mRootName != null) {
            this.mVGTargetsMap.put(vectorDrawableCompat$VPathRenderer.mRootName, this);
        }
        this.mIsStateful = vectorDrawableCompat$VPathRenderer.mIsStateful;
    }

    private void drawGroupTree(VectorDrawableCompat$VGroup vectorDrawableCompat$VGroup, Matrix matrix, Canvas canvas, int i, int i2, ColorFilter colorFilter) {
        vectorDrawableCompat$VGroup.mStackedMatrix.set(matrix);
        vectorDrawableCompat$VGroup.mStackedMatrix.preConcat(vectorDrawableCompat$VGroup.mLocalMatrix);
        canvas.save();
        for (int i3 = 0; i3 < vectorDrawableCompat$VGroup.mChildren.size(); i3++) {
            VectorDrawableCompat$VObject vectorDrawableCompat$VObject = vectorDrawableCompat$VGroup.mChildren.get(i3);
            if (vectorDrawableCompat$VObject instanceof VectorDrawableCompat$VGroup) {
                drawGroupTree((VectorDrawableCompat$VGroup) vectorDrawableCompat$VObject, vectorDrawableCompat$VGroup.mStackedMatrix, canvas, i, i2, colorFilter);
            } else if (vectorDrawableCompat$VObject instanceof VectorDrawableCompat$VPath) {
                drawPath(vectorDrawableCompat$VGroup, (VectorDrawableCompat$VPath) vectorDrawableCompat$VObject, canvas, i, i2, colorFilter);
            }
        }
        canvas.restore();
    }

    public void draw(Canvas canvas, int i, int i2, ColorFilter colorFilter) {
        drawGroupTree(this.mRootGroup, IDENTITY_MATRIX, canvas, i, i2, colorFilter);
    }

    private void drawPath(VectorDrawableCompat$VGroup vectorDrawableCompat$VGroup, VectorDrawableCompat$VPath vectorDrawableCompat$VPath, Canvas canvas, int i, int i2, ColorFilter colorFilter) {
        float f = i / this.mViewportWidth;
        float f2 = i2 / this.mViewportHeight;
        float fMin = Math.min(f, f2);
        Matrix matrix = vectorDrawableCompat$VGroup.mStackedMatrix;
        this.mFinalPathMatrix.set(matrix);
        this.mFinalPathMatrix.postScale(f, f2);
        float matrixScale = getMatrixScale(matrix);
        if (matrixScale == 0.0f) {
            return;
        }
        vectorDrawableCompat$VPath.toPath(this.mPath);
        Path path = this.mPath;
        this.mRenderPath.reset();
        if (vectorDrawableCompat$VPath.isClipPath()) {
            this.mRenderPath.addPath(path, this.mFinalPathMatrix);
            canvas.clipPath(this.mRenderPath);
            return;
        }
        VectorDrawableCompat$VFullPath vectorDrawableCompat$VFullPath = (VectorDrawableCompat$VFullPath) vectorDrawableCompat$VPath;
        if (vectorDrawableCompat$VFullPath.mTrimPathStart != 0.0f || vectorDrawableCompat$VFullPath.mTrimPathEnd != 1.0f) {
            float f3 = (vectorDrawableCompat$VFullPath.mTrimPathStart + vectorDrawableCompat$VFullPath.mTrimPathOffset) % 1.0f;
            float f4 = (vectorDrawableCompat$VFullPath.mTrimPathEnd + vectorDrawableCompat$VFullPath.mTrimPathOffset) % 1.0f;
            if (this.mPathMeasure == null) {
                this.mPathMeasure = new PathMeasure();
            }
            this.mPathMeasure.setPath(this.mPath, false);
            float length = this.mPathMeasure.getLength();
            float f5 = f3 * length;
            float f6 = f4 * length;
            path.reset();
            if (f5 > f6) {
                this.mPathMeasure.getSegment(f5, length, path, true);
                this.mPathMeasure.getSegment(0.0f, f6, path, true);
            } else {
                this.mPathMeasure.getSegment(f5, f6, path, true);
            }
            path.rLineTo(0.0f, 0.0f);
        }
        this.mRenderPath.addPath(path, this.mFinalPathMatrix);
        if (vectorDrawableCompat$VFullPath.mFillColor.willDraw()) {
            ComplexColorCompat complexColorCompat = vectorDrawableCompat$VFullPath.mFillColor;
            if (this.mFillPaint == null) {
                this.mFillPaint = new Paint(1);
                this.mFillPaint.setStyle(Paint$Style.FILL);
            }
            Paint paint = this.mFillPaint;
            if (complexColorCompat.isGradient()) {
                Shader shader = complexColorCompat.getShader();
                shader.setLocalMatrix(this.mFinalPathMatrix);
                paint.setShader(shader);
                paint.setAlpha(Math.round(vectorDrawableCompat$VFullPath.mFillAlpha * 255.0f));
            } else {
                paint.setColor(VectorDrawableCompat.applyAlpha(complexColorCompat.getColor(), vectorDrawableCompat$VFullPath.mFillAlpha));
            }
            paint.setColorFilter(colorFilter);
            this.mRenderPath.setFillType(vectorDrawableCompat$VFullPath.mFillRule == 0 ? Path$FillType.WINDING : Path$FillType.EVEN_ODD);
            canvas.drawPath(this.mRenderPath, paint);
        }
        if (vectorDrawableCompat$VFullPath.mStrokeColor.willDraw()) {
            ComplexColorCompat complexColorCompat2 = vectorDrawableCompat$VFullPath.mStrokeColor;
            if (this.mStrokePaint == null) {
                this.mStrokePaint = new Paint(1);
                this.mStrokePaint.setStyle(Paint$Style.STROKE);
            }
            Paint paint2 = this.mStrokePaint;
            if (vectorDrawableCompat$VFullPath.mStrokeLineJoin != null) {
                paint2.setStrokeJoin(vectorDrawableCompat$VFullPath.mStrokeLineJoin);
            }
            if (vectorDrawableCompat$VFullPath.mStrokeLineCap != null) {
                paint2.setStrokeCap(vectorDrawableCompat$VFullPath.mStrokeLineCap);
            }
            paint2.setStrokeMiter(vectorDrawableCompat$VFullPath.mStrokeMiterlimit);
            if (complexColorCompat2.isGradient()) {
                Shader shader2 = complexColorCompat2.getShader();
                shader2.setLocalMatrix(this.mFinalPathMatrix);
                paint2.setShader(shader2);
                paint2.setAlpha(Math.round(vectorDrawableCompat$VFullPath.mStrokeAlpha * 255.0f));
            } else {
                paint2.setColor(VectorDrawableCompat.applyAlpha(complexColorCompat2.getColor(), vectorDrawableCompat$VFullPath.mStrokeAlpha));
            }
            paint2.setColorFilter(colorFilter);
            paint2.setStrokeWidth(vectorDrawableCompat$VFullPath.mStrokeWidth * fMin * matrixScale);
            canvas.drawPath(this.mRenderPath, paint2);
        }
    }

    private float getMatrixScale(Matrix matrix) {
        float[] fArr = {0.0f, 1.0f, 1.0f, 0.0f};
        matrix.mapVectors(fArr);
        float fHypot = (float) Math.hypot(fArr[0], fArr[1]);
        float fHypot2 = (float) Math.hypot(fArr[2], fArr[3]);
        float fCross = cross(fArr[0], fArr[1], fArr[2], fArr[3]);
        float fMax = Math.max(fHypot, fHypot2);
        if (fMax > 0.0f) {
            return Math.abs(fCross) / fMax;
        }
        return 0.0f;
    }

    public boolean isStateful() {
        if (this.mIsStateful == null) {
            this.mIsStateful = Boolean.valueOf(this.mRootGroup.isStateful());
        }
        return this.mIsStateful.booleanValue();
    }

    public boolean onStateChanged(int[] iArr) {
        return this.mRootGroup.onStateChanged(iArr);
    }
}
