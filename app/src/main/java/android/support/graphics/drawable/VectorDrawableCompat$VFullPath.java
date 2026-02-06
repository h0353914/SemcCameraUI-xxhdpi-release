package android.support.graphics.drawable;

import android.content.res.Resources;
import android.content.res.Resources$Theme;
import android.content.res.TypedArray;
import android.graphics.Paint$Cap;
import android.graphics.Paint$Join;
import android.support.annotation.ColorInt;
import android.support.v4.content.res.ComplexColorCompat;
import android.support.v4.content.res.TypedArrayUtils;
import android.support.v4.graphics.PathParser;
import android.util.AttributeSet;
import org.xmlpull.v1.XmlPullParser;

class VectorDrawableCompat$VFullPath extends VectorDrawableCompat$VPath {
    private static final int FILL_TYPE_WINDING = 0;
    float mFillAlpha;
    ComplexColorCompat mFillColor;
    int mFillRule;
    float mStrokeAlpha;
    ComplexColorCompat mStrokeColor;
    Paint$Cap mStrokeLineCap;
    Paint$Join mStrokeLineJoin;
    float mStrokeMiterlimit;
    float mStrokeWidth;
    private int[] mThemeAttrs;
    float mTrimPathEnd;
    float mTrimPathOffset;
    float mTrimPathStart;

    public VectorDrawableCompat$VFullPath() {
        this.mStrokeWidth = 0.0f;
        this.mStrokeAlpha = 1.0f;
        this.mFillRule = 0;
        this.mFillAlpha = 1.0f;
        this.mTrimPathStart = 0.0f;
        this.mTrimPathEnd = 1.0f;
        this.mTrimPathOffset = 0.0f;
        this.mStrokeLineCap = Paint$Cap.BUTT;
        this.mStrokeLineJoin = Paint$Join.MITER;
        this.mStrokeMiterlimit = 4.0f;
    }

    public VectorDrawableCompat$VFullPath(VectorDrawableCompat$VFullPath vectorDrawableCompat$VFullPath) {
        super(vectorDrawableCompat$VFullPath);
        this.mStrokeWidth = 0.0f;
        this.mStrokeAlpha = 1.0f;
        this.mFillRule = 0;
        this.mFillAlpha = 1.0f;
        this.mTrimPathStart = 0.0f;
        this.mTrimPathEnd = 1.0f;
        this.mTrimPathOffset = 0.0f;
        this.mStrokeLineCap = Paint$Cap.BUTT;
        this.mStrokeLineJoin = Paint$Join.MITER;
        this.mStrokeMiterlimit = 4.0f;
        this.mThemeAttrs = vectorDrawableCompat$VFullPath.mThemeAttrs;
        this.mStrokeColor = vectorDrawableCompat$VFullPath.mStrokeColor;
        this.mStrokeWidth = vectorDrawableCompat$VFullPath.mStrokeWidth;
        this.mStrokeAlpha = vectorDrawableCompat$VFullPath.mStrokeAlpha;
        this.mFillColor = vectorDrawableCompat$VFullPath.mFillColor;
        this.mFillRule = vectorDrawableCompat$VFullPath.mFillRule;
        this.mFillAlpha = vectorDrawableCompat$VFullPath.mFillAlpha;
        this.mTrimPathStart = vectorDrawableCompat$VFullPath.mTrimPathStart;
        this.mTrimPathEnd = vectorDrawableCompat$VFullPath.mTrimPathEnd;
        this.mTrimPathOffset = vectorDrawableCompat$VFullPath.mTrimPathOffset;
        this.mStrokeLineCap = vectorDrawableCompat$VFullPath.mStrokeLineCap;
        this.mStrokeLineJoin = vectorDrawableCompat$VFullPath.mStrokeLineJoin;
        this.mStrokeMiterlimit = vectorDrawableCompat$VFullPath.mStrokeMiterlimit;
    }

    private Paint$Cap getStrokeLineCap(int i, Paint$Cap paint$Cap) {
        switch (i) {
            case 0:
                return Paint$Cap.BUTT;
            case 1:
                return Paint$Cap.ROUND;
            case 2:
                return Paint$Cap.SQUARE;
            default:
                return paint$Cap;
        }
    }

    private Paint$Join getStrokeLineJoin(int i, Paint$Join paint$Join) {
        switch (i) {
            case 0:
                return Paint$Join.MITER;
            case 1:
                return Paint$Join.ROUND;
            case 2:
                return Paint$Join.BEVEL;
            default:
                return paint$Join;
        }
    }

    @Override // android.support.graphics.drawable.VectorDrawableCompat$VPath
    public boolean canApplyTheme() {
        return this.mThemeAttrs != null;
    }

    public void inflate(Resources resources, AttributeSet attributeSet, Resources$Theme resources$Theme, XmlPullParser xmlPullParser) {
        TypedArray typedArrayObtainAttributes = TypedArrayUtils.obtainAttributes(resources, resources$Theme, attributeSet, AndroidResources.STYLEABLE_VECTOR_DRAWABLE_PATH);
        updateStateFromTypedArray(typedArrayObtainAttributes, xmlPullParser, resources$Theme);
        typedArrayObtainAttributes.recycle();
    }

    private void updateStateFromTypedArray(TypedArray typedArray, XmlPullParser xmlPullParser, Resources$Theme resources$Theme) {
        this.mThemeAttrs = null;
        if (TypedArrayUtils.hasAttribute(xmlPullParser, "pathData")) {
            String string = typedArray.getString(0);
            if (string != null) {
                this.mPathName = string;
            }
            String string2 = typedArray.getString(2);
            if (string2 != null) {
                this.mNodes = PathParser.createNodesFromPathData(string2);
            }
            this.mFillColor = TypedArrayUtils.getNamedComplexColor(typedArray, xmlPullParser, resources$Theme, "fillColor", 1, 0);
            this.mFillAlpha = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "fillAlpha", 12, this.mFillAlpha);
            this.mStrokeLineCap = getStrokeLineCap(TypedArrayUtils.getNamedInt(typedArray, xmlPullParser, "strokeLineCap", 8, -1), this.mStrokeLineCap);
            this.mStrokeLineJoin = getStrokeLineJoin(TypedArrayUtils.getNamedInt(typedArray, xmlPullParser, "strokeLineJoin", 9, -1), this.mStrokeLineJoin);
            this.mStrokeMiterlimit = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "strokeMiterLimit", 10, this.mStrokeMiterlimit);
            this.mStrokeColor = TypedArrayUtils.getNamedComplexColor(typedArray, xmlPullParser, resources$Theme, "strokeColor", 3, 0);
            this.mStrokeAlpha = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "strokeAlpha", 11, this.mStrokeAlpha);
            this.mStrokeWidth = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "strokeWidth", 4, this.mStrokeWidth);
            this.mTrimPathEnd = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "trimPathEnd", 6, this.mTrimPathEnd);
            this.mTrimPathOffset = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "trimPathOffset", 7, this.mTrimPathOffset);
            this.mTrimPathStart = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "trimPathStart", 5, this.mTrimPathStart);
            this.mFillRule = TypedArrayUtils.getNamedInt(typedArray, xmlPullParser, "fillType", 13, this.mFillRule);
        }
    }

    @Override // android.support.graphics.drawable.VectorDrawableCompat$VObject
    public boolean isStateful() {
        return this.mFillColor.isStateful() || this.mStrokeColor.isStateful();
    }

    @Override // android.support.graphics.drawable.VectorDrawableCompat$VObject
    public boolean onStateChanged(int[] iArr) {
        return this.mStrokeColor.onStateChanged(iArr) | this.mFillColor.onStateChanged(iArr);
    }

    @Override // android.support.graphics.drawable.VectorDrawableCompat$VPath
    public void applyTheme(Resources$Theme resources$Theme) {
        if (this.mThemeAttrs == null) {
        }
    }

    @ColorInt
    int getStrokeColor() {
        return this.mStrokeColor.getColor();
    }

    void setStrokeColor(int i) {
        this.mStrokeColor.setColor(i);
    }

    float getStrokeWidth() {
        return this.mStrokeWidth;
    }

    void setStrokeWidth(float f) {
        this.mStrokeWidth = f;
    }

    float getStrokeAlpha() {
        return this.mStrokeAlpha;
    }

    void setStrokeAlpha(float f) {
        this.mStrokeAlpha = f;
    }

    @ColorInt
    int getFillColor() {
        return this.mFillColor.getColor();
    }

    void setFillColor(int i) {
        this.mFillColor.setColor(i);
    }

    float getFillAlpha() {
        return this.mFillAlpha;
    }

    void setFillAlpha(float f) {
        this.mFillAlpha = f;
    }

    float getTrimPathStart() {
        return this.mTrimPathStart;
    }

    void setTrimPathStart(float f) {
        this.mTrimPathStart = f;
    }

    float getTrimPathEnd() {
        return this.mTrimPathEnd;
    }

    void setTrimPathEnd(float f) {
        this.mTrimPathEnd = f;
    }

    float getTrimPathOffset() {
        return this.mTrimPathOffset;
    }

    void setTrimPathOffset(float f) {
        this.mTrimPathOffset = f;
    }
}
