package android.support.v7.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R$styleable;
import android.util.AttributeSet;
import android.view.View;
import android.view.View$MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup$LayoutParams;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;

public class LinearLayoutCompat extends ViewGroup {
    public static final int HORIZONTAL = 0;
    private static final int INDEX_BOTTOM = 2;
    private static final int INDEX_CENTER_VERTICAL = 0;
    private static final int INDEX_FILL = 3;
    private static final int INDEX_TOP = 1;
    public static final int SHOW_DIVIDER_BEGINNING = 1;
    public static final int SHOW_DIVIDER_END = 4;
    public static final int SHOW_DIVIDER_MIDDLE = 2;
    public static final int SHOW_DIVIDER_NONE = 0;
    public static final int VERTICAL = 1;
    private static final int VERTICAL_GRAVITY_COUNT = 4;
    private boolean mBaselineAligned;
    private int mBaselineAlignedChildIndex;
    private int mBaselineChildTop;
    private Drawable mDivider;
    private int mDividerHeight;
    private int mDividerPadding;
    private int mDividerWidth;
    private int mGravity;
    private int[] mMaxAscent;
    private int[] mMaxDescent;
    private int mOrientation;
    private int mShowDividers;
    private int mTotalLength;
    private boolean mUseLargestChild;
    private float mWeightSum;

    int getChildrenSkipCount(View view, int i) {
        return 0;
    }

    int getLocationOffset(View view) {
        return 0;
    }

    int getNextLocationOffset(View view) {
        return 0;
    }

    int measureNullChild(int i) {
        return 0;
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.ViewGroup
    protected /* bridge */ /* synthetic */ ViewGroup$LayoutParams generateDefaultLayoutParams() {
        return generateDefaultLayoutParams();
    }

    @Override // android.view.ViewGroup
    public /* bridge */ /* synthetic */ ViewGroup$LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateLayoutParams(attributeSet);
    }

    @Override // android.view.ViewGroup
    protected /* bridge */ /* synthetic */ ViewGroup$LayoutParams generateLayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return generateLayoutParams(viewGroup$LayoutParams);
    }

    public LinearLayoutCompat(Context context) {
        this(context, null);
    }

    public LinearLayoutCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LinearLayoutCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mBaselineAligned = true;
        this.mBaselineAlignedChildIndex = -1;
        this.mBaselineChildTop = 0;
        this.mGravity = 8388659;
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, R$styleable.LinearLayoutCompat, i, 0);
        int i2 = tintTypedArrayObtainStyledAttributes.getInt(R$styleable.LinearLayoutCompat_android_orientation, -1);
        if (i2 >= 0) {
            setOrientation(i2);
        }
        int i3 = tintTypedArrayObtainStyledAttributes.getInt(R$styleable.LinearLayoutCompat_android_gravity, -1);
        if (i3 >= 0) {
            setGravity(i3);
        }
        boolean z = tintTypedArrayObtainStyledAttributes.getBoolean(R$styleable.LinearLayoutCompat_android_baselineAligned, true);
        if (!z) {
            setBaselineAligned(z);
        }
        this.mWeightSum = tintTypedArrayObtainStyledAttributes.getFloat(R$styleable.LinearLayoutCompat_android_weightSum, -1.0f);
        this.mBaselineAlignedChildIndex = tintTypedArrayObtainStyledAttributes.getInt(R$styleable.LinearLayoutCompat_android_baselineAlignedChildIndex, -1);
        this.mUseLargestChild = tintTypedArrayObtainStyledAttributes.getBoolean(R$styleable.LinearLayoutCompat_measureWithLargestChild, false);
        setDividerDrawable(tintTypedArrayObtainStyledAttributes.getDrawable(R$styleable.LinearLayoutCompat_divider));
        this.mShowDividers = tintTypedArrayObtainStyledAttributes.getInt(R$styleable.LinearLayoutCompat_showDividers, 0);
        this.mDividerPadding = tintTypedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.LinearLayoutCompat_dividerPadding, 0);
        tintTypedArrayObtainStyledAttributes.recycle();
    }

    public void setShowDividers(int i) {
        if (i != this.mShowDividers) {
            requestLayout();
        }
        this.mShowDividers = i;
    }

    public int getShowDividers() {
        return this.mShowDividers;
    }

    public Drawable getDividerDrawable() {
        return this.mDivider;
    }

    public void setDividerDrawable(Drawable drawable) {
        if (drawable == this.mDivider) {
            return;
        }
        this.mDivider = drawable;
        if (drawable != null) {
            this.mDividerWidth = drawable.getIntrinsicWidth();
            this.mDividerHeight = drawable.getIntrinsicHeight();
        } else {
            this.mDividerWidth = 0;
            this.mDividerHeight = 0;
        }
        setWillNotDraw(drawable == null);
        requestLayout();
    }

    public void setDividerPadding(int i) {
        this.mDividerPadding = i;
    }

    public int getDividerPadding() {
        return this.mDividerPadding;
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public int getDividerWidth() {
        return this.mDividerWidth;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.mDivider == null) {
            return;
        }
        if (this.mOrientation == 1) {
            drawDividersVertical(canvas);
        } else {
            drawDividersHorizontal(canvas);
        }
    }

    void drawDividersVertical(Canvas canvas) {
        int bottom;
        int virtualChildCount = getVirtualChildCount();
        for (int i = 0; i < virtualChildCount; i++) {
            View virtualChildAt = getVirtualChildAt(i);
            if (virtualChildAt != null && virtualChildAt.getVisibility() != 8 && hasDividerBeforeChildAt(i)) {
                drawHorizontalDivider(canvas, (virtualChildAt.getTop() - ((LinearLayoutCompat$LayoutParams) virtualChildAt.getLayoutParams()).topMargin) - this.mDividerHeight);
            }
        }
        if (hasDividerBeforeChildAt(virtualChildCount)) {
            View virtualChildAt2 = getVirtualChildAt(virtualChildCount - 1);
            if (virtualChildAt2 == null) {
                bottom = (getHeight() - getPaddingBottom()) - this.mDividerHeight;
            } else {
                bottom = virtualChildAt2.getBottom() + ((LinearLayoutCompat$LayoutParams) virtualChildAt2.getLayoutParams()).bottomMargin;
            }
            drawHorizontalDivider(canvas, bottom);
        }
    }

    void drawDividersHorizontal(Canvas canvas) {
        int right;
        int left;
        int virtualChildCount = getVirtualChildCount();
        boolean zIsLayoutRtl = ViewUtils.isLayoutRtl(this);
        for (int i = 0; i < virtualChildCount; i++) {
            View virtualChildAt = getVirtualChildAt(i);
            if (virtualChildAt != null && virtualChildAt.getVisibility() != 8 && hasDividerBeforeChildAt(i)) {
                LinearLayoutCompat$LayoutParams linearLayoutCompat$LayoutParams = (LinearLayoutCompat$LayoutParams) virtualChildAt.getLayoutParams();
                if (zIsLayoutRtl) {
                    left = virtualChildAt.getRight() + linearLayoutCompat$LayoutParams.rightMargin;
                } else {
                    left = (virtualChildAt.getLeft() - linearLayoutCompat$LayoutParams.leftMargin) - this.mDividerWidth;
                }
                drawVerticalDivider(canvas, left);
            }
        }
        if (hasDividerBeforeChildAt(virtualChildCount)) {
            View virtualChildAt2 = getVirtualChildAt(virtualChildCount - 1);
            if (virtualChildAt2 != null) {
                LinearLayoutCompat$LayoutParams linearLayoutCompat$LayoutParams2 = (LinearLayoutCompat$LayoutParams) virtualChildAt2.getLayoutParams();
                if (zIsLayoutRtl) {
                    right = (virtualChildAt2.getLeft() - linearLayoutCompat$LayoutParams2.leftMargin) - this.mDividerWidth;
                } else {
                    right = virtualChildAt2.getRight() + linearLayoutCompat$LayoutParams2.rightMargin;
                }
            } else if (zIsLayoutRtl) {
                right = getPaddingLeft();
            } else {
                right = (getWidth() - getPaddingRight()) - this.mDividerWidth;
            }
            drawVerticalDivider(canvas, right);
        }
    }

    void drawHorizontalDivider(Canvas canvas, int i) {
        this.mDivider.setBounds(getPaddingLeft() + this.mDividerPadding, i, (getWidth() - getPaddingRight()) - this.mDividerPadding, this.mDividerHeight + i);
        this.mDivider.draw(canvas);
    }

    void drawVerticalDivider(Canvas canvas, int i) {
        this.mDivider.setBounds(i, getPaddingTop() + this.mDividerPadding, this.mDividerWidth + i, (getHeight() - getPaddingBottom()) - this.mDividerPadding);
        this.mDivider.draw(canvas);
    }

    public boolean isBaselineAligned() {
        return this.mBaselineAligned;
    }

    public void setBaselineAligned(boolean z) {
        this.mBaselineAligned = z;
    }

    public boolean isMeasureWithLargestChildEnabled() {
        return this.mUseLargestChild;
    }

    public void setMeasureWithLargestChildEnabled(boolean z) {
        this.mUseLargestChild = z;
    }

    @Override // android.view.View
    public int getBaseline() {
        int i;
        if (this.mBaselineAlignedChildIndex < 0) {
            return super.getBaseline();
        }
        if (getChildCount() <= this.mBaselineAlignedChildIndex) {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
        View childAt = getChildAt(this.mBaselineAlignedChildIndex);
        int baseline = childAt.getBaseline();
        if (baseline == -1) {
            if (this.mBaselineAlignedChildIndex == 0) {
                return -1;
            }
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
        }
        int bottom = this.mBaselineChildTop;
        if (this.mOrientation == 1 && (i = this.mGravity & 112) != 48) {
            if (i == 16) {
                bottom += ((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.mTotalLength) / 2;
            } else if (i == 80) {
                bottom = ((getBottom() - getTop()) - getPaddingBottom()) - this.mTotalLength;
            }
        }
        return bottom + ((LinearLayoutCompat$LayoutParams) childAt.getLayoutParams()).topMargin + baseline;
    }

    public int getBaselineAlignedChildIndex() {
        return this.mBaselineAlignedChildIndex;
    }

    public void setBaselineAlignedChildIndex(int i) {
        if (i < 0 || i >= getChildCount()) {
            throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
        }
        this.mBaselineAlignedChildIndex = i;
    }

    View getVirtualChildAt(int i) {
        return getChildAt(i);
    }

    int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.mWeightSum;
    }

    public void setWeightSum(float f) {
        this.mWeightSum = Math.max(0.0f, f);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.mOrientation == 1) {
            measureVertical(i, i2);
        } else {
            measureHorizontal(i, i2);
        }
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY})
    protected boolean hasDividerBeforeChildAt(int i) {
        if (i == 0) {
            return (this.mShowDividers & 1) != 0;
        }
        if (i == getChildCount()) {
            return (this.mShowDividers & 4) != 0;
        }
        if ((this.mShowDividers & 2) == 0) {
            return false;
        }
        for (int i2 = i - 1; i2 >= 0; i2--) {
            if (getChildAt(i2).getVisibility() != 8) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:152:0x0334  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0342  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void measureVertical(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int iMax;
        float f;
        int i8;
        int i9;
        int i10;
        boolean z;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        View view;
        int i17;
        int i18;
        int i19;
        int i20;
        boolean z2;
        int iMax2;
        int iMax3;
        int i21 = i;
        this.mTotalLength = 0;
        int virtualChildCount = getVirtualChildCount();
        int mode = View$MeasureSpec.getMode(i);
        int mode2 = View$MeasureSpec.getMode(i2);
        int i22 = this.mBaselineAlignedChildIndex;
        boolean z3 = this.mUseLargestChild;
        int i23 = 0;
        int i24 = 0;
        int iMax4 = 0;
        int i25 = 0;
        int i26 = 0;
        int childrenSkipCount = 0;
        boolean z4 = false;
        boolean z5 = false;
        float f2 = 0.0f;
        boolean z6 = true;
        while (true) {
            int i27 = 8;
            int i28 = i25;
            if (childrenSkipCount < virtualChildCount) {
                View virtualChildAt = getVirtualChildAt(childrenSkipCount);
                if (virtualChildAt == null) {
                    this.mTotalLength += measureNullChild(childrenSkipCount);
                    i16 = virtualChildCount;
                    i14 = mode2;
                    i25 = i28;
                } else {
                    int i29 = i23;
                    if (virtualChildAt.getVisibility() == 8) {
                        childrenSkipCount += getChildrenSkipCount(virtualChildAt, childrenSkipCount);
                        i16 = virtualChildCount;
                        i14 = mode2;
                        i25 = i28;
                        i23 = i29;
                    } else {
                        if (hasDividerBeforeChildAt(childrenSkipCount)) {
                            this.mTotalLength += this.mDividerHeight;
                        }
                        LinearLayoutCompat$LayoutParams linearLayoutCompat$LayoutParams = (LinearLayoutCompat$LayoutParams) virtualChildAt.getLayoutParams();
                        float f3 = f2 + linearLayoutCompat$LayoutParams.weight;
                        if (mode2 == 1073741824 && linearLayoutCompat$LayoutParams.height == 0 && linearLayoutCompat$LayoutParams.weight > 0.0f) {
                            int i30 = this.mTotalLength;
                            this.mTotalLength = Math.max(i30, linearLayoutCompat$LayoutParams.topMargin + i30 + linearLayoutCompat$LayoutParams.bottomMargin);
                            view = virtualChildAt;
                            i19 = i26;
                            i16 = virtualChildCount;
                            i14 = mode2;
                            z4 = true;
                            i18 = i28;
                            i17 = i29;
                            i15 = i24;
                            i20 = childrenSkipCount;
                        } else {
                            int i31 = i24;
                            if (linearLayoutCompat$LayoutParams.height != 0 || linearLayoutCompat$LayoutParams.weight <= 0.0f) {
                                i13 = Integer.MIN_VALUE;
                            } else {
                                linearLayoutCompat$LayoutParams.height = -2;
                                i13 = 0;
                            }
                            i14 = mode2;
                            int i32 = i13;
                            i15 = i31;
                            i16 = virtualChildCount;
                            int i33 = iMax4;
                            int i34 = i21;
                            view = virtualChildAt;
                            i17 = i29;
                            i18 = i28;
                            i19 = i26;
                            i20 = childrenSkipCount;
                            measureChildBeforeLayout(virtualChildAt, childrenSkipCount, i34, 0, i2, f3 == 0.0f ? this.mTotalLength : 0);
                            if (i32 != Integer.MIN_VALUE) {
                                linearLayoutCompat$LayoutParams.height = i32;
                            }
                            int measuredHeight = view.getMeasuredHeight();
                            int i35 = this.mTotalLength;
                            this.mTotalLength = Math.max(i35, i35 + measuredHeight + linearLayoutCompat$LayoutParams.topMargin + linearLayoutCompat$LayoutParams.bottomMargin + getNextLocationOffset(view));
                            iMax4 = z3 ? Math.max(measuredHeight, i33) : i33;
                        }
                        if (i22 >= 0 && i22 == i20 + 1) {
                            this.mBaselineChildTop = this.mTotalLength;
                        }
                        if (i20 < i22 && linearLayoutCompat$LayoutParams.weight > 0.0f) {
                            throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
                        }
                        if (mode == 1073741824 || linearLayoutCompat$LayoutParams.width != -1) {
                            z2 = false;
                        } else {
                            z2 = true;
                            z5 = true;
                        }
                        int i36 = linearLayoutCompat$LayoutParams.leftMargin + linearLayoutCompat$LayoutParams.rightMargin;
                        int measuredWidth = view.getMeasuredWidth() + i36;
                        int iMax5 = Math.max(i15, measuredWidth);
                        int iCombineMeasuredStates = View.combineMeasuredStates(i17, view.getMeasuredState());
                        boolean z7 = z6 && linearLayoutCompat$LayoutParams.width == -1;
                        if (linearLayoutCompat$LayoutParams.weight > 0.0f) {
                            if (!z2) {
                                i36 = measuredWidth;
                            }
                            iMax2 = Math.max(i18, i36);
                            iMax3 = i19;
                        } else {
                            iMax2 = i18;
                            if (z2) {
                                measuredWidth = i36;
                            }
                            iMax3 = Math.max(i19, measuredWidth);
                        }
                        i24 = iMax5;
                        z6 = z7;
                        i25 = iMax2;
                        childrenSkipCount = getChildrenSkipCount(view, i20) + i20;
                        i23 = iCombineMeasuredStates;
                        i26 = iMax3;
                        f2 = f3;
                    }
                }
                childrenSkipCount++;
                mode2 = i14;
                virtualChildCount = i16;
                i21 = i;
            } else {
                int iCombineMeasuredStates2 = i23;
                int i37 = i24;
                int i38 = i26;
                int i39 = virtualChildCount;
                int i40 = mode2;
                int i41 = iMax4;
                if (this.mTotalLength > 0) {
                    i3 = i39;
                    if (hasDividerBeforeChildAt(i3)) {
                        this.mTotalLength += this.mDividerHeight;
                    }
                } else {
                    i3 = i39;
                }
                if (z3) {
                    i5 = i40;
                    if (i5 == Integer.MIN_VALUE || i5 == 0) {
                        this.mTotalLength = 0;
                        int childrenSkipCount2 = 0;
                        while (childrenSkipCount2 < i3) {
                            View virtualChildAt2 = getVirtualChildAt(childrenSkipCount2);
                            if (virtualChildAt2 == null) {
                                this.mTotalLength += measureNullChild(childrenSkipCount2);
                            } else if (virtualChildAt2.getVisibility() == i27) {
                                childrenSkipCount2 += getChildrenSkipCount(virtualChildAt2, childrenSkipCount2);
                            } else {
                                LinearLayoutCompat$LayoutParams linearLayoutCompat$LayoutParams2 = (LinearLayoutCompat$LayoutParams) virtualChildAt2.getLayoutParams();
                                int i42 = this.mTotalLength;
                                i12 = i37;
                                this.mTotalLength = Math.max(i42, i42 + i41 + linearLayoutCompat$LayoutParams2.topMargin + linearLayoutCompat$LayoutParams2.bottomMargin + getNextLocationOffset(virtualChildAt2));
                                childrenSkipCount2++;
                                i37 = i12;
                                i27 = 8;
                            }
                            i12 = i37;
                            childrenSkipCount2++;
                            i37 = i12;
                            i27 = 8;
                        }
                    }
                    i4 = i37;
                } else {
                    i4 = i37;
                    i5 = i40;
                }
                this.mTotalLength += getPaddingTop() + getPaddingBottom();
                int iResolveSizeAndState = View.resolveSizeAndState(Math.max(this.mTotalLength, getSuggestedMinimumHeight()), i2, 0);
                int i43 = (16777215 & iResolveSizeAndState) - this.mTotalLength;
                if (z4 || (i43 != 0 && f2 > 0.0f)) {
                    if (this.mWeightSum > 0.0f) {
                        f2 = this.mWeightSum;
                    }
                    this.mTotalLength = 0;
                    float f4 = f2;
                    int i44 = 0;
                    int i45 = i43;
                    int i46 = i38;
                    i6 = i4;
                    while (i44 < i3) {
                        View virtualChildAt3 = getVirtualChildAt(i44);
                        if (virtualChildAt3.getVisibility() == 8) {
                            f = f4;
                        } else {
                            LinearLayoutCompat$LayoutParams linearLayoutCompat$LayoutParams3 = (LinearLayoutCompat$LayoutParams) virtualChildAt3.getLayoutParams();
                            float f5 = linearLayoutCompat$LayoutParams3.weight;
                            if (f5 > 0.0f) {
                                int i47 = (int) ((i45 * f5) / f4);
                                i8 = i45 - i47;
                                f = f4 - f5;
                                int childMeasureSpec = getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + linearLayoutCompat$LayoutParams3.leftMargin + linearLayoutCompat$LayoutParams3.rightMargin, linearLayoutCompat$LayoutParams3.width);
                                if (linearLayoutCompat$LayoutParams3.height == 0) {
                                    i11 = 1073741824;
                                    if (i5 == 1073741824) {
                                        if (i47 <= 0) {
                                            i47 = 0;
                                        }
                                        virtualChildAt3.measure(childMeasureSpec, View$MeasureSpec.makeMeasureSpec(i47, 1073741824));
                                    }
                                    iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, virtualChildAt3.getMeasuredState() & (-256));
                                } else {
                                    i11 = 1073741824;
                                }
                                int measuredHeight2 = virtualChildAt3.getMeasuredHeight() + i47;
                                if (measuredHeight2 < 0) {
                                    measuredHeight2 = 0;
                                }
                                virtualChildAt3.measure(childMeasureSpec, View$MeasureSpec.makeMeasureSpec(measuredHeight2, i11));
                                iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, virtualChildAt3.getMeasuredState() & (-256));
                            } else {
                                f = f4;
                                i8 = i45;
                            }
                            int i48 = linearLayoutCompat$LayoutParams3.leftMargin + linearLayoutCompat$LayoutParams3.rightMargin;
                            int measuredWidth2 = virtualChildAt3.getMeasuredWidth() + i48;
                            int iMax6 = Math.max(i6, measuredWidth2);
                            if (mode != 1073741824) {
                                i9 = iMax6;
                                i10 = -1;
                                z = linearLayoutCompat$LayoutParams3.width == -1;
                                if (!z) {
                                    i48 = measuredWidth2;
                                }
                                int iMax7 = Math.max(i46, i48);
                                boolean z8 = !z6 && linearLayoutCompat$LayoutParams3.width == i10;
                                int i49 = this.mTotalLength;
                                this.mTotalLength = Math.max(i49, virtualChildAt3.getMeasuredHeight() + i49 + linearLayoutCompat$LayoutParams3.topMargin + linearLayoutCompat$LayoutParams3.bottomMargin + getNextLocationOffset(virtualChildAt3));
                                z6 = z8;
                                i45 = i8;
                                i6 = i9;
                                i46 = iMax7;
                            } else {
                                i9 = iMax6;
                                i10 = -1;
                            }
                            if (!z) {
                            }
                            int iMax72 = Math.max(i46, i48);
                            if (z6) {
                                int i492 = this.mTotalLength;
                                this.mTotalLength = Math.max(i492, virtualChildAt3.getMeasuredHeight() + i492 + linearLayoutCompat$LayoutParams3.topMargin + linearLayoutCompat$LayoutParams3.bottomMargin + getNextLocationOffset(virtualChildAt3));
                                z6 = z8;
                                i45 = i8;
                                i6 = i9;
                                i46 = iMax72;
                            }
                        }
                        i44++;
                        f4 = f;
                    }
                    i7 = i;
                    this.mTotalLength += getPaddingTop() + getPaddingBottom();
                    iMax = i46;
                } else {
                    iMax = Math.max(i38, i28);
                    if (z3 && i5 != 1073741824) {
                        for (int i50 = 0; i50 < i3; i50++) {
                            View virtualChildAt4 = getVirtualChildAt(i50);
                            if (virtualChildAt4 != null && virtualChildAt4.getVisibility() != 8 && ((LinearLayoutCompat$LayoutParams) virtualChildAt4.getLayoutParams()).weight > 0.0f) {
                                virtualChildAt4.measure(View$MeasureSpec.makeMeasureSpec(virtualChildAt4.getMeasuredWidth(), 1073741824), View$MeasureSpec.makeMeasureSpec(i41, 1073741824));
                            }
                        }
                    }
                    i6 = i4;
                    i7 = i;
                }
                if (z6 || mode == 1073741824) {
                    iMax = i6;
                }
                setMeasuredDimension(View.resolveSizeAndState(Math.max(iMax + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i7, iCombineMeasuredStates2), iResolveSizeAndState);
                if (z5) {
                    forceUniformWidth(i3, i2);
                    return;
                }
                return;
            }
        }
    }

    private void forceUniformWidth(int i, int i2) {
        int iMakeMeasureSpec = View$MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
        for (int i3 = 0; i3 < i; i3++) {
            View virtualChildAt = getVirtualChildAt(i3);
            if (virtualChildAt.getVisibility() != 8) {
                LinearLayoutCompat$LayoutParams linearLayoutCompat$LayoutParams = (LinearLayoutCompat$LayoutParams) virtualChildAt.getLayoutParams();
                if (linearLayoutCompat$LayoutParams.width == -1) {
                    int i4 = linearLayoutCompat$LayoutParams.height;
                    linearLayoutCompat$LayoutParams.height = virtualChildAt.getMeasuredHeight();
                    measureChildWithMargins(virtualChildAt, iMakeMeasureSpec, 0, i2, 0);
                    linearLayoutCompat$LayoutParams.height = i4;
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:199:0x0469  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0192  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01c8  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01d6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void measureHorizontal(int i, int i2) {
        int[] iArr;
        int i3;
        int iMax;
        int i4;
        int i5;
        float f;
        int i6;
        int i7;
        int baseline;
        int i8;
        int i9;
        float f2;
        byte b;
        int i10;
        int i11;
        boolean z;
        boolean z2;
        View view;
        int i12;
        boolean z3;
        int measuredHeight;
        int childrenSkipCount;
        int baseline2;
        int i13 = i;
        int i14 = i2;
        this.mTotalLength = 0;
        int virtualChildCount = getVirtualChildCount();
        int mode = View$MeasureSpec.getMode(i);
        int mode2 = View$MeasureSpec.getMode(i2);
        if (this.mMaxAscent == null || this.mMaxDescent == null) {
            this.mMaxAscent = new int[4];
            this.mMaxDescent = new int[4];
        }
        int[] iArr2 = this.mMaxAscent;
        int[] iArr3 = this.mMaxDescent;
        iArr2[3] = -1;
        iArr2[2] = -1;
        iArr2[1] = -1;
        iArr2[0] = -1;
        iArr3[3] = -1;
        iArr3[2] = -1;
        iArr3[1] = -1;
        iArr3[0] = -1;
        boolean z4 = this.mBaselineAligned;
        boolean z5 = this.mUseLargestChild;
        int i15 = 1073741824;
        boolean z6 = mode == 1073741824;
        int childrenSkipCount2 = 0;
        int iMax2 = 0;
        int i16 = 0;
        boolean z7 = false;
        int iMax3 = 0;
        int iMax4 = 0;
        int i17 = 0;
        boolean z8 = false;
        boolean z9 = true;
        float f3 = 0.0f;
        while (true) {
            iArr = iArr3;
            if (childrenSkipCount2 >= virtualChildCount) {
                break;
            }
            View virtualChildAt = getVirtualChildAt(childrenSkipCount2);
            if (virtualChildAt == null) {
                this.mTotalLength += measureNullChild(childrenSkipCount2);
            } else if (virtualChildAt.getVisibility() == 8) {
                childrenSkipCount2 += getChildrenSkipCount(virtualChildAt, childrenSkipCount2);
            } else {
                if (hasDividerBeforeChildAt(childrenSkipCount2)) {
                    this.mTotalLength += this.mDividerWidth;
                }
                LinearLayoutCompat$LayoutParams linearLayoutCompat$LayoutParams = (LinearLayoutCompat$LayoutParams) virtualChildAt.getLayoutParams();
                f2 = f3 + linearLayoutCompat$LayoutParams.weight;
                if (mode == i15 && linearLayoutCompat$LayoutParams.width == 0 && linearLayoutCompat$LayoutParams.weight > 0.0f) {
                    if (z6) {
                        this.mTotalLength += linearLayoutCompat$LayoutParams.leftMargin + linearLayoutCompat$LayoutParams.rightMargin;
                    } else {
                        int i18 = this.mTotalLength;
                        this.mTotalLength = Math.max(i18, linearLayoutCompat$LayoutParams.leftMargin + i18 + linearLayoutCompat$LayoutParams.rightMargin);
                    }
                    if (z4) {
                        int iMakeMeasureSpec = View$MeasureSpec.makeMeasureSpec(0, 0);
                        virtualChildAt.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                        i11 = childrenSkipCount2;
                        z = z5;
                        z2 = z4;
                        view = virtualChildAt;
                    } else {
                        i11 = childrenSkipCount2;
                        z = z5;
                        z2 = z4;
                        view = virtualChildAt;
                        z7 = true;
                        i12 = 1073741824;
                        if (mode2 == i12 && linearLayoutCompat$LayoutParams.height == -1) {
                            z3 = true;
                            z8 = true;
                        } else {
                            z3 = false;
                        }
                        int i19 = linearLayoutCompat$LayoutParams.topMargin + linearLayoutCompat$LayoutParams.bottomMargin;
                        measuredHeight = view.getMeasuredHeight() + i19;
                        int iCombineMeasuredStates = View.combineMeasuredStates(i17, view.getMeasuredState());
                        if (z2 && (baseline2 = view.getBaseline()) != -1) {
                            int i20 = ((((linearLayoutCompat$LayoutParams.gravity >= 0 ? this.mGravity : linearLayoutCompat$LayoutParams.gravity) & 112) >> 4) & (-2)) >> 1;
                            iArr2[i20] = Math.max(iArr2[i20], baseline2);
                            iArr[i20] = Math.max(iArr[i20], measuredHeight - baseline2);
                        }
                        int iMax5 = Math.max(i16, measuredHeight);
                        boolean z10 = !z9 && linearLayoutCompat$LayoutParams.height == -1;
                        if (linearLayoutCompat$LayoutParams.weight <= 0.0f) {
                            if (!z3) {
                                i19 = measuredHeight;
                            }
                            iMax4 = Math.max(iMax4, i19);
                        } else {
                            int i21 = iMax4;
                            if (z3) {
                                measuredHeight = i19;
                            }
                            iMax3 = Math.max(iMax3, measuredHeight);
                            iMax4 = i21;
                        }
                        int i22 = i11;
                        childrenSkipCount = getChildrenSkipCount(view, i22) + i22;
                        i17 = iCombineMeasuredStates;
                        i16 = iMax5;
                        z9 = z10;
                        i15 = i12;
                        iArr3 = iArr;
                        z5 = z;
                        z4 = z2;
                        i13 = i;
                        i14 = i2;
                        childrenSkipCount2 = childrenSkipCount + 1;
                        f3 = f2;
                    }
                } else {
                    if (linearLayoutCompat$LayoutParams.width != 0 || linearLayoutCompat$LayoutParams.weight <= 0.0f) {
                        b = -2;
                        i10 = Integer.MIN_VALUE;
                    } else {
                        b = -2;
                        linearLayoutCompat$LayoutParams.width = -2;
                        i10 = 0;
                    }
                    i11 = childrenSkipCount2;
                    int i23 = i10;
                    z = z5;
                    z2 = z4;
                    view = virtualChildAt;
                    measureChildBeforeLayout(virtualChildAt, i11, i13, f2 == 0.0f ? this.mTotalLength : 0, i14, 0);
                    if (i23 != Integer.MIN_VALUE) {
                        linearLayoutCompat$LayoutParams.width = i23;
                    }
                    int measuredWidth = view.getMeasuredWidth();
                    if (z6) {
                        this.mTotalLength += linearLayoutCompat$LayoutParams.leftMargin + measuredWidth + linearLayoutCompat$LayoutParams.rightMargin + getNextLocationOffset(view);
                    } else {
                        int i24 = this.mTotalLength;
                        this.mTotalLength = Math.max(i24, i24 + measuredWidth + linearLayoutCompat$LayoutParams.leftMargin + linearLayoutCompat$LayoutParams.rightMargin + getNextLocationOffset(view));
                    }
                    if (z) {
                        iMax2 = Math.max(measuredWidth, iMax2);
                    }
                }
                i12 = 1073741824;
                if (mode2 == i12) {
                    z3 = false;
                    int i192 = linearLayoutCompat$LayoutParams.topMargin + linearLayoutCompat$LayoutParams.bottomMargin;
                    measuredHeight = view.getMeasuredHeight() + i192;
                    int iCombineMeasuredStates2 = View.combineMeasuredStates(i17, view.getMeasuredState());
                    if (z2) {
                        int i202 = ((((linearLayoutCompat$LayoutParams.gravity >= 0 ? this.mGravity : linearLayoutCompat$LayoutParams.gravity) & 112) >> 4) & (-2)) >> 1;
                        iArr2[i202] = Math.max(iArr2[i202], baseline2);
                        iArr[i202] = Math.max(iArr[i202], measuredHeight - baseline2);
                    }
                    int iMax52 = Math.max(i16, measuredHeight);
                    if (z9) {
                        if (linearLayoutCompat$LayoutParams.weight <= 0.0f) {
                        }
                        int i222 = i11;
                        childrenSkipCount = getChildrenSkipCount(view, i222) + i222;
                        i17 = iCombineMeasuredStates2;
                        i16 = iMax52;
                        z9 = z10;
                    }
                }
                i15 = i12;
                iArr3 = iArr;
                z5 = z;
                z4 = z2;
                i13 = i;
                i14 = i2;
                childrenSkipCount2 = childrenSkipCount + 1;
                f3 = f2;
            }
            f2 = f3;
            childrenSkipCount = childrenSkipCount2;
            i12 = i15;
            z = z5;
            z2 = z4;
            i15 = i12;
            iArr3 = iArr;
            z5 = z;
            z4 = z2;
            i13 = i;
            i14 = i2;
            childrenSkipCount2 = childrenSkipCount + 1;
            f3 = f2;
        }
        boolean z11 = z5;
        boolean z12 = z4;
        int iMax6 = i16;
        int i25 = iMax3;
        int i26 = iMax4;
        int iCombineMeasuredStates3 = i17;
        if (this.mTotalLength > 0 && hasDividerBeforeChildAt(virtualChildCount)) {
            this.mTotalLength += this.mDividerWidth;
        }
        if (iArr2[1] != -1 || iArr2[0] != -1 || iArr2[2] != -1 || iArr2[3] != -1) {
            iMax6 = Math.max(iMax6, Math.max(iArr2[3], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))) + Math.max(iArr[3], Math.max(iArr[0], Math.max(iArr[1], iArr[2]))));
        }
        if (z11 && (mode == Integer.MIN_VALUE || mode == 0)) {
            this.mTotalLength = 0;
            int childrenSkipCount3 = 0;
            while (childrenSkipCount3 < virtualChildCount) {
                View virtualChildAt2 = getVirtualChildAt(childrenSkipCount3);
                if (virtualChildAt2 == null) {
                    this.mTotalLength += measureNullChild(childrenSkipCount3);
                } else if (virtualChildAt2.getVisibility() == 8) {
                    childrenSkipCount3 += getChildrenSkipCount(virtualChildAt2, childrenSkipCount3);
                } else {
                    LinearLayoutCompat$LayoutParams linearLayoutCompat$LayoutParams2 = (LinearLayoutCompat$LayoutParams) virtualChildAt2.getLayoutParams();
                    if (z6) {
                        this.mTotalLength += linearLayoutCompat$LayoutParams2.leftMargin + iMax2 + linearLayoutCompat$LayoutParams2.rightMargin + getNextLocationOffset(virtualChildAt2);
                    } else {
                        int i27 = this.mTotalLength;
                        i9 = childrenSkipCount3;
                        this.mTotalLength = Math.max(i27, i27 + iMax2 + linearLayoutCompat$LayoutParams2.leftMargin + linearLayoutCompat$LayoutParams2.rightMargin + getNextLocationOffset(virtualChildAt2));
                        childrenSkipCount3 = i9 + 1;
                    }
                }
                i9 = childrenSkipCount3;
                childrenSkipCount3 = i9 + 1;
            }
        }
        this.mTotalLength += getPaddingLeft() + getPaddingRight();
        int iResolveSizeAndState = View.resolveSizeAndState(Math.max(this.mTotalLength, getSuggestedMinimumWidth()), i, 0);
        int i28 = (16777215 & iResolveSizeAndState) - this.mTotalLength;
        if (z7 || (i28 != 0 && f3 > 0.0f)) {
            if (this.mWeightSum > 0.0f) {
                f3 = this.mWeightSum;
            }
            iArr2[3] = -1;
            iArr2[2] = -1;
            iArr2[1] = -1;
            iArr2[0] = -1;
            iArr[3] = -1;
            iArr[2] = -1;
            iArr[1] = -1;
            iArr[0] = -1;
            this.mTotalLength = 0;
            int i29 = i25;
            iMax6 = -1;
            float f4 = f3;
            int i30 = 0;
            while (i30 < virtualChildCount) {
                View virtualChildAt3 = getVirtualChildAt(i30);
                if (virtualChildAt3 == null || virtualChildAt3.getVisibility() == 8) {
                    i4 = i28;
                } else {
                    LinearLayoutCompat$LayoutParams linearLayoutCompat$LayoutParams3 = (LinearLayoutCompat$LayoutParams) virtualChildAt3.getLayoutParams();
                    float f5 = linearLayoutCompat$LayoutParams3.weight;
                    if (f5 > 0.0f) {
                        int i31 = (int) ((i28 * f5) / f4);
                        float f6 = f4 - f5;
                        int i32 = i28 - i31;
                        int childMeasureSpec = getChildMeasureSpec(i2, getPaddingTop() + getPaddingBottom() + linearLayoutCompat$LayoutParams3.topMargin + linearLayoutCompat$LayoutParams3.bottomMargin, linearLayoutCompat$LayoutParams3.height);
                        if (linearLayoutCompat$LayoutParams3.width == 0) {
                            i8 = 1073741824;
                            if (mode == 1073741824) {
                                if (i31 <= 0) {
                                    i31 = 0;
                                }
                                virtualChildAt3.measure(View$MeasureSpec.makeMeasureSpec(i31, 1073741824), childMeasureSpec);
                            }
                            iCombineMeasuredStates3 = View.combineMeasuredStates(iCombineMeasuredStates3, virtualChildAt3.getMeasuredState() & (-16777216));
                            f4 = f6;
                            i5 = i32;
                        } else {
                            i8 = 1073741824;
                        }
                        int measuredWidth2 = virtualChildAt3.getMeasuredWidth() + i31;
                        if (measuredWidth2 < 0) {
                            measuredWidth2 = 0;
                        }
                        virtualChildAt3.measure(View$MeasureSpec.makeMeasureSpec(measuredWidth2, i8), childMeasureSpec);
                        iCombineMeasuredStates3 = View.combineMeasuredStates(iCombineMeasuredStates3, virtualChildAt3.getMeasuredState() & (-16777216));
                        f4 = f6;
                        i5 = i32;
                    } else {
                        i5 = i28;
                    }
                    if (z6) {
                        f = f4;
                        this.mTotalLength += virtualChildAt3.getMeasuredWidth() + linearLayoutCompat$LayoutParams3.leftMargin + linearLayoutCompat$LayoutParams3.rightMargin + getNextLocationOffset(virtualChildAt3);
                        i6 = i5;
                    } else {
                        f = f4;
                        int i33 = this.mTotalLength;
                        i6 = i5;
                        this.mTotalLength = Math.max(i33, virtualChildAt3.getMeasuredWidth() + i33 + linearLayoutCompat$LayoutParams3.leftMargin + linearLayoutCompat$LayoutParams3.rightMargin + getNextLocationOffset(virtualChildAt3));
                    }
                    boolean z13 = mode2 != 1073741824 && linearLayoutCompat$LayoutParams3.height == -1;
                    int i34 = linearLayoutCompat$LayoutParams3.topMargin + linearLayoutCompat$LayoutParams3.bottomMargin;
                    int measuredHeight2 = virtualChildAt3.getMeasuredHeight() + i34;
                    iMax6 = Math.max(iMax6, measuredHeight2);
                    if (!z13) {
                        i34 = measuredHeight2;
                    }
                    int iMax7 = Math.max(i29, i34);
                    if (z9) {
                        i7 = -1;
                        boolean z14 = linearLayoutCompat$LayoutParams3.height == -1;
                        if (!z12 && (baseline = virtualChildAt3.getBaseline()) != i7) {
                            int i35 = ((((linearLayoutCompat$LayoutParams3.gravity < 0 ? this.mGravity : linearLayoutCompat$LayoutParams3.gravity) & 112) >> 4) & (-2)) >> 1;
                            iArr2[i35] = Math.max(iArr2[i35], baseline);
                            iArr[i35] = Math.max(iArr[i35], measuredHeight2 - baseline);
                        }
                        i29 = iMax7;
                        z9 = z14;
                        f4 = f;
                        i4 = i6;
                    } else {
                        i7 = -1;
                    }
                    if (!z12) {
                        i29 = iMax7;
                        z9 = z14;
                        f4 = f;
                        i4 = i6;
                    }
                }
                i30++;
                i28 = i4;
            }
            i3 = i2;
            this.mTotalLength += getPaddingLeft() + getPaddingRight();
            if (iArr2[1] != -1 || iArr2[0] != -1 || iArr2[2] != -1 || iArr2[3] != -1) {
                iMax6 = Math.max(iMax6, Math.max(iArr2[3], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))) + Math.max(iArr[3], Math.max(iArr[0], Math.max(iArr[1], iArr[2]))));
            }
            iMax = i29;
        } else {
            iMax = Math.max(i25, i26);
            if (z11 && mode != 1073741824) {
                for (int i36 = 0; i36 < virtualChildCount; i36++) {
                    View virtualChildAt4 = getVirtualChildAt(i36);
                    if (virtualChildAt4 != null && virtualChildAt4.getVisibility() != 8 && ((LinearLayoutCompat$LayoutParams) virtualChildAt4.getLayoutParams()).weight > 0.0f) {
                        virtualChildAt4.measure(View$MeasureSpec.makeMeasureSpec(iMax2, 1073741824), View$MeasureSpec.makeMeasureSpec(virtualChildAt4.getMeasuredHeight(), 1073741824));
                    }
                }
            }
            i3 = i2;
        }
        if (z9 || mode2 == 1073741824) {
            iMax = iMax6;
        }
        setMeasuredDimension(iResolveSizeAndState | ((-16777216) & iCombineMeasuredStates3), View.resolveSizeAndState(Math.max(iMax + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i3, iCombineMeasuredStates3 << 16));
        if (z8) {
            forceUniformHeight(virtualChildCount, i);
        }
    }

    private void forceUniformHeight(int i, int i2) {
        int iMakeMeasureSpec = View$MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
        for (int i3 = 0; i3 < i; i3++) {
            View virtualChildAt = getVirtualChildAt(i3);
            if (virtualChildAt.getVisibility() != 8) {
                LinearLayoutCompat$LayoutParams linearLayoutCompat$LayoutParams = (LinearLayoutCompat$LayoutParams) virtualChildAt.getLayoutParams();
                if (linearLayoutCompat$LayoutParams.height == -1) {
                    int i4 = linearLayoutCompat$LayoutParams.width;
                    linearLayoutCompat$LayoutParams.width = virtualChildAt.getMeasuredWidth();
                    measureChildWithMargins(virtualChildAt, i2, 0, iMakeMeasureSpec, 0);
                    linearLayoutCompat$LayoutParams.width = i4;
                }
            }
        }
    }

    void measureChildBeforeLayout(View view, int i, int i2, int i3, int i4, int i5) {
        measureChildWithMargins(view, i2, i3, i4, i5);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.mOrientation == 1) {
            layoutVertical(i, i2, i3, i4);
        } else {
            layoutHorizontal(i, i2, i3, i4);
        }
    }

    void layoutVertical(int i, int i2, int i3, int i4) {
        int paddingTop;
        int i5;
        int i6;
        int paddingLeft = getPaddingLeft();
        int i7 = i3 - i;
        int paddingRight = i7 - getPaddingRight();
        int paddingRight2 = (i7 - paddingLeft) - getPaddingRight();
        int virtualChildCount = getVirtualChildCount();
        int i8 = this.mGravity & 112;
        int i9 = this.mGravity & 8388615;
        if (i8 == 16) {
            paddingTop = (((i4 - i2) - this.mTotalLength) / 2) + getPaddingTop();
        } else if (i8 == 80) {
            paddingTop = ((getPaddingTop() + i4) - i2) - this.mTotalLength;
        } else {
            paddingTop = getPaddingTop();
        }
        int childrenSkipCount = 0;
        while (childrenSkipCount < virtualChildCount) {
            View virtualChildAt = getVirtualChildAt(childrenSkipCount);
            if (virtualChildAt == null) {
                paddingTop += measureNullChild(childrenSkipCount);
            } else {
                if (virtualChildAt.getVisibility() != 8) {
                    int measuredWidth = virtualChildAt.getMeasuredWidth();
                    int measuredHeight = virtualChildAt.getMeasuredHeight();
                    LinearLayoutCompat$LayoutParams linearLayoutCompat$LayoutParams = (LinearLayoutCompat$LayoutParams) virtualChildAt.getLayoutParams();
                    int i10 = linearLayoutCompat$LayoutParams.gravity;
                    if (i10 < 0) {
                        i10 = i9;
                    }
                    int absoluteGravity = GravityCompat.getAbsoluteGravity(i10, ViewCompat.getLayoutDirection(this)) & 7;
                    if (absoluteGravity == 1) {
                        i5 = ((((paddingRight2 - measuredWidth) / 2) + paddingLeft) + linearLayoutCompat$LayoutParams.leftMargin) - linearLayoutCompat$LayoutParams.rightMargin;
                    } else if (absoluteGravity == 5) {
                        i5 = (paddingRight - measuredWidth) - linearLayoutCompat$LayoutParams.rightMargin;
                    } else {
                        i5 = linearLayoutCompat$LayoutParams.leftMargin + paddingLeft;
                    }
                    int i11 = i5;
                    if (hasDividerBeforeChildAt(childrenSkipCount)) {
                        paddingTop += this.mDividerHeight;
                    }
                    int i12 = paddingTop + linearLayoutCompat$LayoutParams.topMargin;
                    setChildFrame(virtualChildAt, i11, i12 + getLocationOffset(virtualChildAt), measuredWidth, measuredHeight);
                    int nextLocationOffset = i12 + measuredHeight + linearLayoutCompat$LayoutParams.bottomMargin + getNextLocationOffset(virtualChildAt);
                    childrenSkipCount += getChildrenSkipCount(virtualChildAt, childrenSkipCount);
                    paddingTop = nextLocationOffset;
                    i6 = 1;
                }
                childrenSkipCount += i6;
            }
            i6 = 1;
            childrenSkipCount += i6;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x010a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void layoutHorizontal(int i, int i2, int i3, int i4) {
        int paddingLeft;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        boolean z;
        int i10;
        int i11;
        int i12;
        int i13;
        boolean zIsLayoutRtl = ViewUtils.isLayoutRtl(this);
        int paddingTop = getPaddingTop();
        int i14 = i4 - i2;
        int paddingBottom = i14 - getPaddingBottom();
        int paddingBottom2 = (i14 - paddingTop) - getPaddingBottom();
        int virtualChildCount = getVirtualChildCount();
        int i15 = this.mGravity & 8388615;
        int i16 = this.mGravity & 112;
        boolean z2 = this.mBaselineAligned;
        int[] iArr = this.mMaxAscent;
        int[] iArr2 = this.mMaxDescent;
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i15, ViewCompat.getLayoutDirection(this));
        boolean z3 = true;
        if (absoluteGravity == 1) {
            paddingLeft = (((i3 - i) - this.mTotalLength) / 2) + getPaddingLeft();
        } else if (absoluteGravity == 5) {
            paddingLeft = ((getPaddingLeft() + i3) - i) - this.mTotalLength;
        } else {
            paddingLeft = getPaddingLeft();
        }
        if (zIsLayoutRtl) {
            i5 = virtualChildCount - 1;
            i6 = -1;
        } else {
            i5 = 0;
            i6 = 1;
        }
        int childrenSkipCount = 0;
        while (childrenSkipCount < virtualChildCount) {
            int i17 = i5 + (i6 * childrenSkipCount);
            View virtualChildAt = getVirtualChildAt(i17);
            if (virtualChildAt == null) {
                paddingLeft += measureNullChild(i17);
                z = z3;
                i7 = paddingTop;
                i8 = virtualChildCount;
                i9 = i16;
            } else if (virtualChildAt.getVisibility() != 8) {
                int measuredWidth = virtualChildAt.getMeasuredWidth();
                int measuredHeight = virtualChildAt.getMeasuredHeight();
                LinearLayoutCompat$LayoutParams linearLayoutCompat$LayoutParams = (LinearLayoutCompat$LayoutParams) virtualChildAt.getLayoutParams();
                if (z2) {
                    i10 = childrenSkipCount;
                    i8 = virtualChildCount;
                    int baseline = linearLayoutCompat$LayoutParams.height != -1 ? virtualChildAt.getBaseline() : -1;
                    i11 = linearLayoutCompat$LayoutParams.gravity;
                    if (i11 < 0) {
                        i11 = i16;
                    }
                    i12 = i11 & 112;
                    i9 = i16;
                    if (i12 != 16) {
                        z = true;
                        i13 = ((((paddingBottom2 - measuredHeight) / 2) + paddingTop) + linearLayoutCompat$LayoutParams.topMargin) - linearLayoutCompat$LayoutParams.bottomMargin;
                    } else if (i12 != 48) {
                        if (i12 != 80) {
                            i13 = paddingTop;
                        } else {
                            int measuredHeight2 = (paddingBottom - measuredHeight) - linearLayoutCompat$LayoutParams.bottomMargin;
                            if (baseline != -1) {
                                measuredHeight2 -= iArr2[2] - (virtualChildAt.getMeasuredHeight() - baseline);
                            }
                            i13 = measuredHeight2;
                        }
                        z = true;
                    } else {
                        int i18 = linearLayoutCompat$LayoutParams.topMargin + paddingTop;
                        if (baseline != -1) {
                            z = true;
                            i18 += iArr[1] - baseline;
                        } else {
                            z = true;
                        }
                        i13 = i18;
                    }
                    if (hasDividerBeforeChildAt(i17)) {
                        paddingLeft += this.mDividerWidth;
                    }
                    int i19 = linearLayoutCompat$LayoutParams.leftMargin + paddingLeft;
                    i7 = paddingTop;
                    setChildFrame(virtualChildAt, i19 + getLocationOffset(virtualChildAt), i13, measuredWidth, measuredHeight);
                    int nextLocationOffset = i19 + measuredWidth + linearLayoutCompat$LayoutParams.rightMargin + getNextLocationOffset(virtualChildAt);
                    childrenSkipCount = i10 + getChildrenSkipCount(virtualChildAt, i17);
                    paddingLeft = nextLocationOffset;
                    childrenSkipCount++;
                    z3 = z;
                    virtualChildCount = i8;
                    i16 = i9;
                    paddingTop = i7;
                } else {
                    i10 = childrenSkipCount;
                    i8 = virtualChildCount;
                }
                i11 = linearLayoutCompat$LayoutParams.gravity;
                if (i11 < 0) {
                }
                i12 = i11 & 112;
                i9 = i16;
                if (i12 != 16) {
                }
                if (hasDividerBeforeChildAt(i17)) {
                }
                int i192 = linearLayoutCompat$LayoutParams.leftMargin + paddingLeft;
                i7 = paddingTop;
                setChildFrame(virtualChildAt, i192 + getLocationOffset(virtualChildAt), i13, measuredWidth, measuredHeight);
                int nextLocationOffset2 = i192 + measuredWidth + linearLayoutCompat$LayoutParams.rightMargin + getNextLocationOffset(virtualChildAt);
                childrenSkipCount = i10 + getChildrenSkipCount(virtualChildAt, i17);
                paddingLeft = nextLocationOffset2;
                childrenSkipCount++;
                z3 = z;
                virtualChildCount = i8;
                i16 = i9;
                paddingTop = i7;
            } else {
                i7 = paddingTop;
                i8 = virtualChildCount;
                i9 = i16;
                z = true;
            }
            childrenSkipCount++;
            z3 = z;
            virtualChildCount = i8;
            i16 = i9;
            paddingTop = i7;
        }
    }

    private void setChildFrame(View view, int i, int i2, int i3, int i4) {
        view.layout(i, i2, i3 + i, i4 + i2);
    }

    public void setOrientation(int i) {
        if (this.mOrientation != i) {
            this.mOrientation = i;
            requestLayout();
        }
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public void setGravity(int i) {
        if (this.mGravity != i) {
            if ((8388615 & i) == 0) {
                i |= 8388611;
            }
            if ((i & 112) == 0) {
                i |= 48;
            }
            this.mGravity = i;
            requestLayout();
        }
    }

    public int getGravity() {
        return this.mGravity;
    }

    public void setHorizontalGravity(int i) {
        int i2 = i & 8388615;
        if ((8388615 & this.mGravity) != i2) {
            this.mGravity = i2 | (this.mGravity & (-8388616));
            requestLayout();
        }
    }

    public void setVerticalGravity(int i) {
        int i2 = i & 112;
        if ((this.mGravity & 112) != i2) {
            this.mGravity = i2 | (this.mGravity & (-113));
            requestLayout();
        }
    }

    @Override // android.view.ViewGroup
    public LinearLayoutCompat$LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LinearLayoutCompat$LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected LinearLayoutCompat$LayoutParams generateDefaultLayoutParams() {
        if (this.mOrientation == 0) {
            return new LinearLayoutCompat$LayoutParams(-2, -2);
        }
        if (this.mOrientation == 1) {
            return new LinearLayoutCompat$LayoutParams(-1, -2);
        }
        return null;
    }

    @Override // android.view.ViewGroup
    protected LinearLayoutCompat$LayoutParams generateLayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return new LinearLayoutCompat$LayoutParams(viewGroup$LayoutParams);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return viewGroup$LayoutParams instanceof LinearLayoutCompat$LayoutParams;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(LinearLayoutCompat.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(LinearLayoutCompat.class.getName());
    }
}
