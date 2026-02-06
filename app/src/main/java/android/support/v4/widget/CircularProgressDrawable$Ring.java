package android.support.v4.widget;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint$Cap;
import android.graphics.Paint$Style;
import android.graphics.Path;
import android.graphics.Path$FillType;
import android.graphics.Rect;
import android.graphics.RectF;
import android.support.annotation.NonNull;

class CircularProgressDrawable$Ring {
    Path mArrow;
    int mArrowHeight;
    int mArrowWidth;
    int mColorIndex;
    int[] mColors;
    int mCurrentColor;
    float mRingCenterRadius;
    boolean mShowArrow;
    float mStartingEndTrim;
    float mStartingRotation;
    float mStartingStartTrim;
    final RectF mTempBounds = new RectF();
    final Paint mPaint = new Paint();
    final Paint mArrowPaint = new Paint();
    final Paint mCirclePaint = new Paint();
    float mStartTrim = 0.0f;
    float mEndTrim = 0.0f;
    float mRotation = 0.0f;
    float mStrokeWidth = 5.0f;
    float mArrowScale = 1.0f;
    int mAlpha = 255;

    CircularProgressDrawable$Ring() {
        this.mPaint.setStrokeCap(Paint$Cap.SQUARE);
        this.mPaint.setAntiAlias(true);
        this.mPaint.setStyle(Paint$Style.STROKE);
        this.mArrowPaint.setStyle(Paint$Style.FILL);
        this.mArrowPaint.setAntiAlias(true);
        this.mCirclePaint.setColor(0);
    }

    void setArrowDimensions(float f, float f2) {
        this.mArrowWidth = (int) f;
        this.mArrowHeight = (int) f2;
    }

    void setStrokeCap(Paint$Cap paint$Cap) {
        this.mPaint.setStrokeCap(paint$Cap);
    }

    Paint$Cap getStrokeCap() {
        return this.mPaint.getStrokeCap();
    }

    float getArrowWidth() {
        return this.mArrowWidth;
    }

    float getArrowHeight() {
        return this.mArrowHeight;
    }

    void draw(Canvas canvas, Rect rect) {
        RectF rectF = this.mTempBounds;
        float fMin = this.mRingCenterRadius + (this.mStrokeWidth / 2.0f);
        if (this.mRingCenterRadius <= 0.0f) {
            fMin = (Math.min(rect.width(), rect.height()) / 2.0f) - Math.max((this.mArrowWidth * this.mArrowScale) / 2.0f, this.mStrokeWidth / 2.0f);
        }
        rectF.set(rect.centerX() - fMin, rect.centerY() - fMin, rect.centerX() + fMin, rect.centerY() + fMin);
        float f = (this.mStartTrim + this.mRotation) * 360.0f;
        float f2 = ((this.mEndTrim + this.mRotation) * 360.0f) - f;
        this.mPaint.setColor(this.mCurrentColor);
        this.mPaint.setAlpha(this.mAlpha);
        float f3 = this.mStrokeWidth / 2.0f;
        rectF.inset(f3, f3);
        canvas.drawCircle(rectF.centerX(), rectF.centerY(), rectF.width() / 2.0f, this.mCirclePaint);
        float f4 = -f3;
        rectF.inset(f4, f4);
        canvas.drawArc(rectF, f, f2, false, this.mPaint);
        drawTriangle(canvas, f, f2, rectF);
    }

    void drawTriangle(Canvas canvas, float f, float f2, RectF rectF) {
        if (this.mShowArrow) {
            if (this.mArrow == null) {
                this.mArrow = new Path();
                this.mArrow.setFillType(Path$FillType.EVEN_ODD);
            } else {
                this.mArrow.reset();
            }
            float fMin = Math.min(rectF.width(), rectF.height()) / 2.0f;
            float f3 = (this.mArrowWidth * this.mArrowScale) / 2.0f;
            this.mArrow.moveTo(0.0f, 0.0f);
            this.mArrow.lineTo(this.mArrowWidth * this.mArrowScale, 0.0f);
            this.mArrow.lineTo((this.mArrowWidth * this.mArrowScale) / 2.0f, this.mArrowHeight * this.mArrowScale);
            this.mArrow.offset((fMin + rectF.centerX()) - f3, rectF.centerY() + (this.mStrokeWidth / 2.0f));
            this.mArrow.close();
            this.mArrowPaint.setColor(this.mCurrentColor);
            this.mArrowPaint.setAlpha(this.mAlpha);
            canvas.save();
            canvas.rotate(f + f2, rectF.centerX(), rectF.centerY());
            canvas.drawPath(this.mArrow, this.mArrowPaint);
            canvas.restore();
        }
    }

    void setColors(@NonNull int[] iArr) {
        this.mColors = iArr;
        setColorIndex(0);
    }

    int[] getColors() {
        return this.mColors;
    }

    void setColor(int i) {
        this.mCurrentColor = i;
    }

    void setBackgroundColor(int i) {
        this.mCirclePaint.setColor(i);
    }

    int getBackgroundColor() {
        return this.mCirclePaint.getColor();
    }

    void setColorIndex(int i) {
        this.mColorIndex = i;
        this.mCurrentColor = this.mColors[this.mColorIndex];
    }

    int getNextColor() {
        return this.mColors[getNextColorIndex()];
    }

    int getNextColorIndex() {
        return (this.mColorIndex + 1) % this.mColors.length;
    }

    void goToNextColor() {
        setColorIndex(getNextColorIndex());
    }

    void setColorFilter(ColorFilter colorFilter) {
        this.mPaint.setColorFilter(colorFilter);
    }

    void setAlpha(int i) {
        this.mAlpha = i;
    }

    int getAlpha() {
        return this.mAlpha;
    }

    void setStrokeWidth(float f) {
        this.mStrokeWidth = f;
        this.mPaint.setStrokeWidth(f);
    }

    float getStrokeWidth() {
        return this.mStrokeWidth;
    }

    void setStartTrim(float f) {
        this.mStartTrim = f;
    }

    float getStartTrim() {
        return this.mStartTrim;
    }

    float getStartingStartTrim() {
        return this.mStartingStartTrim;
    }

    float getStartingEndTrim() {
        return this.mStartingEndTrim;
    }

    int getStartingColor() {
        return this.mColors[this.mColorIndex];
    }

    void setEndTrim(float f) {
        this.mEndTrim = f;
    }

    float getEndTrim() {
        return this.mEndTrim;
    }

    void setRotation(float f) {
        this.mRotation = f;
    }

    float getRotation() {
        return this.mRotation;
    }

    void setCenterRadius(float f) {
        this.mRingCenterRadius = f;
    }

    float getCenterRadius() {
        return this.mRingCenterRadius;
    }

    void setShowArrow(boolean z) {
        if (this.mShowArrow != z) {
            this.mShowArrow = z;
        }
    }

    boolean getShowArrow() {
        return this.mShowArrow;
    }

    void setArrowScale(float f) {
        if (f != this.mArrowScale) {
            this.mArrowScale = f;
        }
    }

    float getArrowScale() {
        return this.mArrowScale;
    }

    float getStartingRotation() {
        return this.mStartingRotation;
    }

    void storeOriginals() {
        this.mStartingStartTrim = this.mStartTrim;
        this.mStartingEndTrim = this.mEndTrim;
        this.mStartingRotation = this.mRotation;
    }

    void resetOriginals() {
        this.mStartingStartTrim = 0.0f;
        this.mStartingEndTrim = 0.0f;
        this.mStartingRotation = 0.0f;
        setStartTrim(0.0f);
        setEndTrim(0.0f);
        setRotation(0.0f);
    }
}
