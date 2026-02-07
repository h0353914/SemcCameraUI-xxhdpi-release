package android.support.v4.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff$Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build$VERSION;
import android.os.Parcelable;
import android.support.annotation.ColorInt;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.Px;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View$MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup$LayoutParams;
import android.view.ViewGroup$MarginLayoutParams;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class SlidingPaneLayout extends ViewGroup {
    private static final int DEFAULT_FADE_COLOR = -858993460;
    private static final int DEFAULT_OVERHANG_SIZE = 32;
    private static final int MIN_FLING_VELOCITY = 400;
    private static final String TAG = "SlidingPaneLayout";
    private boolean mCanSlide;
    private int mCoveredFadeColor;
    private boolean mDisplayListReflectionLoaded;
    final ViewDragHelper mDragHelper;
    private boolean mFirstLayout;
    private Method mGetDisplayList;
    private float mInitialMotionX;
    private float mInitialMotionY;
    boolean mIsUnableToDrag;
    private final int mOverhangSize;
    private SlidingPaneLayout$PanelSlideListener mPanelSlideListener;
    private int mParallaxBy;
    private float mParallaxOffset;
    final ArrayList<SlidingPaneLayout$DisableLayerRunnable> mPostedRunnables;
    boolean mPreservedOpenState;
    private Field mRecreateDisplayList;
    private Drawable mShadowDrawableLeft;
    private Drawable mShadowDrawableRight;
    float mSlideOffset;
    int mSlideRange;
    View mSlideableView;
    private int mSliderFadeColor;
    private final Rect mTmpRect;

    public SlidingPaneLayout(@NonNull Context context) {
        this(context, null);
    }

    public SlidingPaneLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SlidingPaneLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mSliderFadeColor = -858993460;
        this.mFirstLayout = true;
        this.mTmpRect = new Rect();
        this.mPostedRunnables = new ArrayList<>();
        float f = context.getResources().getDisplayMetrics().density;
        this.mOverhangSize = (int) ((32.0f * f) + 0.5f);
        setWillNotDraw(false);
        ViewCompat.setAccessibilityDelegate(this, new SlidingPaneLayout$AccessibilityDelegate(this));
        ViewCompat.setImportantForAccessibility(this, 1);
        this.mDragHelper = ViewDragHelper.create(this, 0.5f, new SlidingPaneLayout$DragHelperCallback(this));
        this.mDragHelper.setMinVelocity(400.0f * f);
    }

    public void setParallaxDistance(@Px int i) {
        this.mParallaxBy = i;
        requestLayout();
    }

    @Px
    public int getParallaxDistance() {
        return this.mParallaxBy;
    }

    public void setSliderFadeColor(@ColorInt int i) {
        this.mSliderFadeColor = i;
    }

    @ColorInt
    public int getSliderFadeColor() {
        return this.mSliderFadeColor;
    }

    public void setCoveredFadeColor(@ColorInt int i) {
        this.mCoveredFadeColor = i;
    }

    @ColorInt
    public int getCoveredFadeColor() {
        return this.mCoveredFadeColor;
    }

    public void setPanelSlideListener(@Nullable SlidingPaneLayout$PanelSlideListener slidingPaneLayout$PanelSlideListener) {
        this.mPanelSlideListener = slidingPaneLayout$PanelSlideListener;
    }

    void dispatchOnPanelSlide(View view) {
        if (this.mPanelSlideListener != null) {
            this.mPanelSlideListener.onPanelSlide(view, this.mSlideOffset);
        }
    }

    void dispatchOnPanelOpened(View view) {
        if (this.mPanelSlideListener != null) {
            this.mPanelSlideListener.onPanelOpened(view);
        }
        sendAccessibilityEvent(32);
    }

    void dispatchOnPanelClosed(View view) {
        if (this.mPanelSlideListener != null) {
            this.mPanelSlideListener.onPanelClosed(view);
        }
        sendAccessibilityEvent(32);
    }

    void updateObscuredViewsVisibility(View view) {
        int left;
        int right;
        int top;
        int bottom;
        boolean z;
        int i;
        View view2 = view;
        boolean zIsLayoutRtlSupport = isLayoutRtlSupport();
        int width = zIsLayoutRtlSupport ? getWidth() - getPaddingRight() : getPaddingLeft();
        int paddingLeft = zIsLayoutRtlSupport ? getPaddingLeft() : getWidth() - getPaddingRight();
        int paddingTop = getPaddingTop();
        int height = getHeight() - getPaddingBottom();
        if (view2 == null || !viewIsOpaque(view)) {
            left = 0;
            right = 0;
            top = 0;
            bottom = 0;
        } else {
            left = view.getLeft();
            right = view.getRight();
            top = view.getTop();
            bottom = view.getBottom();
        }
        int childCount = getChildCount();
        int i2 = 0;
        while (i2 < childCount) {
            View childAt = getChildAt(i2);
            if (childAt == view2) {
                return;
            }
            if (childAt.getVisibility() == 8) {
                z = zIsLayoutRtlSupport;
            } else {
                int iMax = Math.max(zIsLayoutRtlSupport ? paddingLeft : width, childAt.getLeft());
                int iMax2 = Math.max(paddingTop, childAt.getTop());
                if (zIsLayoutRtlSupport) {
                    z = zIsLayoutRtlSupport;
                    i = width;
                } else {
                    z = zIsLayoutRtlSupport;
                    i = paddingLeft;
                }
                childAt.setVisibility((iMax < left || iMax2 < top || Math.min(i, childAt.getRight()) > right || Math.min(height, childAt.getBottom()) > bottom) ? 0 : 4);
            }
            i2++;
            zIsLayoutRtlSupport = z;
            view2 = view;
        }
    }

    void setAllChildrenVisible() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 4) {
                childAt.setVisibility(0);
            }
        }
    }

    private static boolean viewIsOpaque(View view) {
        Drawable background;
        if (view.isOpaque()) {
            return true;
        }
        return Build$VERSION.SDK_INT < 18 && (background = view.getBackground()) != null && background.getOpacity() == -1;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mFirstLayout = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mFirstLayout = true;
        int size = this.mPostedRunnables.size();
        for (int i = 0; i < size; i++) {
            this.mPostedRunnables.get(i).run();
        }
        this.mPostedRunnables.clear();
    }

    /* JADX WARN: Removed duplicated region for block: B:120:0x01f5  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x020b  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00b0 A[PHI: r12
      0x00b0: PHI (r12v2 float) = (r12v1 float), (r12v3 float) binds: [B:36:0x00a5, B:38:0x00ac] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0142  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onMeasure(int i, int i2) {
        int paddingTop;
        int paddingTop2;
        int i3;
        int iMakeMeasureSpec;
        int iMakeMeasureSpec2;
        int i4;
        int i5;
        int iMakeMeasureSpec3;
        int iMakeMeasureSpec4;
        int iMakeMeasureSpec5;
        int mode = View$MeasureSpec.getMode(i);
        int size = View$MeasureSpec.getSize(i);
        int mode2 = View$MeasureSpec.getMode(i2);
        int size2 = View$MeasureSpec.getSize(i2);
        if (mode != 1073741824) {
            if (!isInEditMode()) {
                throw new IllegalStateException("Width must have an exact value or MATCH_PARENT");
            }
            if (mode != Integer.MIN_VALUE && mode == 0) {
                size = 300;
            }
        } else if (mode2 == 0) {
            if (!isInEditMode()) {
                throw new IllegalStateException("Height must not be UNSPECIFIED");
            }
            if (mode2 == 0) {
                size2 = 300;
                mode2 = Integer.MIN_VALUE;
            }
        }
        boolean z = false;
        if (mode2 != Integer.MIN_VALUE) {
            paddingTop2 = mode2 != 1073741824 ? 0 : (size2 - getPaddingTop()) - getPaddingBottom();
            paddingTop = paddingTop2;
        } else {
            paddingTop = (size2 - getPaddingTop()) - getPaddingBottom();
            paddingTop2 = 0;
        }
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        int childCount = getChildCount();
        if (childCount > 2) {
            Log.e("SlidingPaneLayout", "onMeasure: More than two child views are not supported.");
        }
        this.mSlideableView = null;
        boolean z2 = false;
        int iMin = paddingTop2;
        int i6 = paddingLeft;
        float f = 0.0f;
        int i7 = 0;
        while (true) {
            i3 = 8;
            if (i7 >= childCount) {
                break;
            }
            View childAt = getChildAt(i7);
            SlidingPaneLayout$LayoutParams slidingPaneLayout$LayoutParams = (SlidingPaneLayout$LayoutParams) childAt.getLayoutParams();
            if (childAt.getVisibility() == 8) {
                slidingPaneLayout$LayoutParams.dimWhenOffset = z;
            } else if (slidingPaneLayout$LayoutParams.weight > 0.0f) {
                f += slidingPaneLayout$LayoutParams.weight;
                if (slidingPaneLayout$LayoutParams.width != 0) {
                    int i8 = slidingPaneLayout$LayoutParams.leftMargin + slidingPaneLayout$LayoutParams.rightMargin;
                    if (slidingPaneLayout$LayoutParams.width == -2) {
                        iMakeMeasureSpec4 = View$MeasureSpec.makeMeasureSpec(paddingLeft - i8, Integer.MIN_VALUE);
                    } else if (slidingPaneLayout$LayoutParams.width == -1) {
                        iMakeMeasureSpec4 = View$MeasureSpec.makeMeasureSpec(paddingLeft - i8, 1073741824);
                    } else {
                        iMakeMeasureSpec4 = View$MeasureSpec.makeMeasureSpec(slidingPaneLayout$LayoutParams.width, 1073741824);
                    }
                    if (slidingPaneLayout$LayoutParams.height == -2) {
                        iMakeMeasureSpec5 = View$MeasureSpec.makeMeasureSpec(paddingTop, Integer.MIN_VALUE);
                    } else if (slidingPaneLayout$LayoutParams.height == -1) {
                        iMakeMeasureSpec5 = View$MeasureSpec.makeMeasureSpec(paddingTop, 1073741824);
                    } else {
                        iMakeMeasureSpec5 = View$MeasureSpec.makeMeasureSpec(slidingPaneLayout$LayoutParams.height, 1073741824);
                    }
                    childAt.measure(iMakeMeasureSpec4, iMakeMeasureSpec5);
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (mode2 == Integer.MIN_VALUE && measuredHeight > iMin) {
                        iMin = Math.min(measuredHeight, paddingTop);
                    }
                    i6 -= measuredWidth;
                    boolean z3 = i6 < 0;
                    slidingPaneLayout$LayoutParams.slideable = z3;
                    boolean z4 = z3 | z2;
                    if (slidingPaneLayout$LayoutParams.slideable) {
                        this.mSlideableView = childAt;
                    }
                    z2 = z4;
                }
            }
            i7++;
            z = false;
        }
        if (z2 || f > 0.0f) {
            int i9 = paddingLeft - this.mOverhangSize;
            int i10 = 0;
            while (i10 < childCount) {
                View childAt2 = getChildAt(i10);
                if (childAt2.getVisibility() == i3) {
                    i4 = i9;
                } else {
                    SlidingPaneLayout$LayoutParams slidingPaneLayout$LayoutParams2 = (SlidingPaneLayout$LayoutParams) childAt2.getLayoutParams();
                    if (childAt2.getVisibility() != i3) {
                        boolean z5 = slidingPaneLayout$LayoutParams2.width == 0 && slidingPaneLayout$LayoutParams2.weight > 0.0f;
                        int measuredWidth2 = z5 ? 0 : childAt2.getMeasuredWidth();
                        if (!z2 || childAt2 == this.mSlideableView) {
                            if (slidingPaneLayout$LayoutParams2.weight > 0.0f) {
                                if (slidingPaneLayout$LayoutParams2.width == 0) {
                                    if (slidingPaneLayout$LayoutParams2.height == -2) {
                                        iMakeMeasureSpec2 = View$MeasureSpec.makeMeasureSpec(paddingTop, Integer.MIN_VALUE);
                                        if (!z2) {
                                            int i11 = paddingLeft - (slidingPaneLayout$LayoutParams2.leftMargin + slidingPaneLayout$LayoutParams2.rightMargin);
                                            i4 = i9;
                                            int iMakeMeasureSpec6 = View$MeasureSpec.makeMeasureSpec(i11, 1073741824);
                                            if (measuredWidth2 != i11) {
                                                childAt2.measure(iMakeMeasureSpec6, iMakeMeasureSpec2);
                                            }
                                        } else {
                                            i4 = i9;
                                            childAt2.measure(View$MeasureSpec.makeMeasureSpec(measuredWidth2 + ((int) ((slidingPaneLayout$LayoutParams2.weight * Math.max(0, i6)) / f)), 1073741824), iMakeMeasureSpec2);
                                        }
                                    } else if (slidingPaneLayout$LayoutParams2.height == -1) {
                                        iMakeMeasureSpec = View$MeasureSpec.makeMeasureSpec(paddingTop, 1073741824);
                                    } else {
                                        iMakeMeasureSpec = View$MeasureSpec.makeMeasureSpec(slidingPaneLayout$LayoutParams2.height, 1073741824);
                                    }
                                } else {
                                    iMakeMeasureSpec = View$MeasureSpec.makeMeasureSpec(childAt2.getMeasuredHeight(), 1073741824);
                                }
                                iMakeMeasureSpec2 = iMakeMeasureSpec;
                                if (!z2) {
                                }
                            }
                        } else if (slidingPaneLayout$LayoutParams2.width < 0 && (measuredWidth2 > i9 || slidingPaneLayout$LayoutParams2.weight > 0.0f)) {
                            if (z5) {
                                if (slidingPaneLayout$LayoutParams2.height == -2) {
                                    iMakeMeasureSpec3 = View$MeasureSpec.makeMeasureSpec(paddingTop, Integer.MIN_VALUE);
                                    i5 = 1073741824;
                                } else if (slidingPaneLayout$LayoutParams2.height == -1) {
                                    i5 = 1073741824;
                                    iMakeMeasureSpec3 = View$MeasureSpec.makeMeasureSpec(paddingTop, 1073741824);
                                } else {
                                    i5 = 1073741824;
                                    iMakeMeasureSpec3 = View$MeasureSpec.makeMeasureSpec(slidingPaneLayout$LayoutParams2.height, 1073741824);
                                }
                            } else {
                                i5 = 1073741824;
                                iMakeMeasureSpec3 = View$MeasureSpec.makeMeasureSpec(childAt2.getMeasuredHeight(), 1073741824);
                            }
                            childAt2.measure(View$MeasureSpec.makeMeasureSpec(i9, i5), iMakeMeasureSpec3);
                        }
                        i4 = i9;
                    }
                }
                i10++;
                i9 = i4;
                i3 = 8;
            }
        }
        setMeasuredDimension(size, iMin + getPaddingTop() + getPaddingBottom());
        this.mCanSlide = z2;
        if (this.mDragHelper.getViewDragState() == 0 || z2) {
            return;
        }
        this.mDragHelper.abort();
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00c6  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        boolean zIsLayoutRtlSupport = isLayoutRtlSupport();
        if (zIsLayoutRtlSupport) {
            this.mDragHelper.setEdgeTrackingEnabled(2);
        } else {
            this.mDragHelper.setEdgeTrackingEnabled(1);
        }
        int i9 = i3 - i;
        int paddingRight = zIsLayoutRtlSupport ? getPaddingRight() : getPaddingLeft();
        int paddingLeft = zIsLayoutRtlSupport ? getPaddingLeft() : getPaddingRight();
        int paddingTop = getPaddingTop();
        int childCount = getChildCount();
        if (this.mFirstLayout) {
            this.mSlideOffset = (this.mCanSlide && this.mPreservedOpenState) ? 1.0f : 0.0f;
        }
        int width = paddingRight;
        int i10 = width;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8) {
                SlidingPaneLayout$LayoutParams slidingPaneLayout$LayoutParams = (SlidingPaneLayout$LayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                if (slidingPaneLayout$LayoutParams.slideable) {
                    int i12 = i9 - paddingLeft;
                    int iMin = (Math.min(width, i12 - this.mOverhangSize) - i10) - (slidingPaneLayout$LayoutParams.leftMargin + slidingPaneLayout$LayoutParams.rightMargin);
                    this.mSlideRange = iMin;
                    int i13 = zIsLayoutRtlSupport ? slidingPaneLayout$LayoutParams.rightMargin : slidingPaneLayout$LayoutParams.leftMargin;
                    slidingPaneLayout$LayoutParams.dimWhenOffset = ((i10 + i13) + iMin) + (measuredWidth / 2) > i12;
                    int i14 = (int) (iMin * this.mSlideOffset);
                    i5 = i13 + i14 + i10;
                    this.mSlideOffset = i14 / this.mSlideRange;
                } else if (!this.mCanSlide || this.mParallaxBy == 0) {
                    i5 = width;
                } else {
                    i6 = (int) ((1.0f - this.mSlideOffset) * this.mParallaxBy);
                    i5 = width;
                    if (zIsLayoutRtlSupport) {
                        i7 = i5 - i6;
                        i8 = i7 + measuredWidth;
                    } else {
                        i8 = (i9 - i5) + i6;
                        i7 = i8 - measuredWidth;
                    }
                    childAt.layout(i7, paddingTop, i8, childAt.getMeasuredHeight() + paddingTop);
                    width += childAt.getWidth();
                    i10 = i5;
                }
                i6 = 0;
                if (zIsLayoutRtlSupport) {
                }
                childAt.layout(i7, paddingTop, i8, childAt.getMeasuredHeight() + paddingTop);
                width += childAt.getWidth();
                i10 = i5;
            }
        }
        if (this.mFirstLayout) {
            if (this.mCanSlide) {
                if (this.mParallaxBy != 0) {
                    parallaxOtherViews(this.mSlideOffset);
                }
                if (((SlidingPaneLayout$LayoutParams) this.mSlideableView.getLayoutParams()).dimWhenOffset) {
                    dimChildView(this.mSlideableView, this.mSlideOffset, this.mSliderFadeColor);
                }
            } else {
                for (int i15 = 0; i15 < childCount; i15++) {
                    dimChildView(getChildAt(i15), 0.0f, this.mSliderFadeColor);
                }
            }
            updateObscuredViewsVisibility(this.mSlideableView);
        }
        this.mFirstLayout = false;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            this.mFirstLayout = true;
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        if (isInTouchMode() || this.mCanSlide) {
            return;
        }
        this.mPreservedOpenState = view == this.mSlideableView;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        View childAt;
        int actionMasked = motionEvent.getActionMasked();
        if (!this.mCanSlide && actionMasked == 0 && getChildCount() > 1 && (childAt = getChildAt(1)) != null) {
            this.mPreservedOpenState = !this.mDragHelper.isViewUnder(childAt, (int) motionEvent.getX(), (int) motionEvent.getY());
        }
        if (!this.mCanSlide || (this.mIsUnableToDrag && actionMasked != 0)) {
            this.mDragHelper.cancel();
            return super.onInterceptTouchEvent(motionEvent);
        }
        if (actionMasked == 3 || actionMasked == 1) {
            this.mDragHelper.cancel();
            return false;
        }
        if (actionMasked == 0) {
            this.mIsUnableToDrag = false;
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            this.mInitialMotionX = x;
            this.mInitialMotionY = y;
            if (this.mDragHelper.isViewUnder(this.mSlideableView, (int) x, (int) y) && isDimmed(this.mSlideableView)) {
                z = true;
            }
            return this.mDragHelper.shouldInterceptTouchEvent(motionEvent) || z;
        }
        if (actionMasked == 2) {
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            float fAbs = Math.abs(x2 - this.mInitialMotionX);
            float fAbs2 = Math.abs(y2 - this.mInitialMotionY);
            if (fAbs > this.mDragHelper.getTouchSlop() && fAbs2 > fAbs) {
                this.mDragHelper.cancel();
                this.mIsUnableToDrag = true;
                return false;
            }
        }
        z = false;
        if (this.mDragHelper.shouldInterceptTouchEvent(motionEvent)) {
            return true;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.mCanSlide) {
            return super.onTouchEvent(motionEvent);
        }
        this.mDragHelper.processTouchEvent(motionEvent);
        switch (motionEvent.getActionMasked()) {
            case 0:
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                this.mInitialMotionX = x;
                this.mInitialMotionY = y;
                return true;
            case 1:
                if (isDimmed(this.mSlideableView)) {
                    float x2 = motionEvent.getX();
                    float y2 = motionEvent.getY();
                    float f = x2 - this.mInitialMotionX;
                    float f2 = y2 - this.mInitialMotionY;
                    int touchSlop = this.mDragHelper.getTouchSlop();
                    if ((f * f) + (f2 * f2) < touchSlop * touchSlop && this.mDragHelper.isViewUnder(this.mSlideableView, (int) x2, (int) y2)) {
                        closePane(this.mSlideableView, 0);
                    }
                }
                return true;
            default:
                return true;
        }
    }

    private boolean closePane(View view, int i) {
        if (!this.mFirstLayout && !smoothSlideTo(0.0f, i)) {
            return false;
        }
        this.mPreservedOpenState = false;
        return true;
    }

    private boolean openPane(View view, int i) {
        if (!this.mFirstLayout && !smoothSlideTo(1.0f, i)) {
            return false;
        }
        this.mPreservedOpenState = true;
        return true;
    }

    @Deprecated
    public void smoothSlideOpen() {
        openPane();
    }

    public boolean openPane() {
        return openPane(this.mSlideableView, 0);
    }

    @Deprecated
    public void smoothSlideClosed() {
        closePane();
    }

    public boolean closePane() {
        return closePane(this.mSlideableView, 0);
    }

    public boolean isOpen() {
        return !this.mCanSlide || this.mSlideOffset == 1.0f;
    }

    @Deprecated
    public boolean canSlide() {
        return this.mCanSlide;
    }

    public boolean isSlideable() {
        return this.mCanSlide;
    }

    void onPanelDragged(int i) {
        if (this.mSlideableView == null) {
            this.mSlideOffset = 0.0f;
            return;
        }
        boolean zIsLayoutRtlSupport = isLayoutRtlSupport();
        SlidingPaneLayout$LayoutParams slidingPaneLayout$LayoutParams = (SlidingPaneLayout$LayoutParams) this.mSlideableView.getLayoutParams();
        int width = this.mSlideableView.getWidth();
        if (zIsLayoutRtlSupport) {
            i = (getWidth() - i) - width;
        }
        this.mSlideOffset = (i - ((zIsLayoutRtlSupport ? getPaddingRight() : getPaddingLeft()) + (zIsLayoutRtlSupport ? slidingPaneLayout$LayoutParams.rightMargin : slidingPaneLayout$LayoutParams.leftMargin))) / this.mSlideRange;
        if (this.mParallaxBy != 0) {
            parallaxOtherViews(this.mSlideOffset);
        }
        if (slidingPaneLayout$LayoutParams.dimWhenOffset) {
            dimChildView(this.mSlideableView, this.mSlideOffset, this.mSliderFadeColor);
        }
        dispatchOnPanelSlide(this.mSlideableView);
    }

    private void dimChildView(View view, float f, int i) {
        SlidingPaneLayout$LayoutParams slidingPaneLayout$LayoutParams = (SlidingPaneLayout$LayoutParams) view.getLayoutParams();
        if (f > 0.0f && i != 0) {
            int i2 = (((int) ((((-16777216) & i) >>> 24) * f)) << 24) | (i & 16777215);
            if (slidingPaneLayout$LayoutParams.dimPaint == null) {
                slidingPaneLayout$LayoutParams.dimPaint = new Paint();
            }
            slidingPaneLayout$LayoutParams.dimPaint.setColorFilter(new PorterDuffColorFilter(i2, PorterDuff$Mode.SRC_OVER));
            if (view.getLayerType() != 2) {
                view.setLayerType(2, slidingPaneLayout$LayoutParams.dimPaint);
            }
            invalidateChildRegion(view);
            return;
        }
        if (view.getLayerType() != 0) {
            if (slidingPaneLayout$LayoutParams.dimPaint != null) {
                slidingPaneLayout$LayoutParams.dimPaint.setColorFilter(null);
            }
            SlidingPaneLayout$DisableLayerRunnable slidingPaneLayout$DisableLayerRunnable = new SlidingPaneLayout$DisableLayerRunnable(this, view);
            this.mPostedRunnables.add(slidingPaneLayout$DisableLayerRunnable);
            ViewCompat.postOnAnimation(this, slidingPaneLayout$DisableLayerRunnable);
        }
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        SlidingPaneLayout$LayoutParams slidingPaneLayout$LayoutParams = (SlidingPaneLayout$LayoutParams) view.getLayoutParams();
        int iSave = canvas.save();
        if (this.mCanSlide && !slidingPaneLayout$LayoutParams.slideable && this.mSlideableView != null) {
            canvas.getClipBounds(this.mTmpRect);
            if (isLayoutRtlSupport()) {
                this.mTmpRect.left = Math.max(this.mTmpRect.left, this.mSlideableView.getRight());
            } else {
                this.mTmpRect.right = Math.min(this.mTmpRect.right, this.mSlideableView.getLeft());
            }
            canvas.clipRect(this.mTmpRect);
        }
        boolean zDrawChild = super.drawChild(canvas, view, j);
        canvas.restoreToCount(iSave);
        return zDrawChild;
    }

    void invalidateChildRegion(View view) {
        if (Build$VERSION.SDK_INT >= 17) {
            ViewCompat.setLayerPaint(view, ((SlidingPaneLayout$LayoutParams) view.getLayoutParams()).dimPaint);
            return;
        }
        if (Build$VERSION.SDK_INT >= 16) {
            if (!this.mDisplayListReflectionLoaded) {
                try {
                    this.mGetDisplayList = View.class.getDeclaredMethod("getDisplayList", (Class[]) null);
                } catch (NoSuchMethodException e) {
                    Log.e("SlidingPaneLayout", "Couldn't fetch getDisplayList method; dimming won't work right.", e);
                }
                try {
                    this.mRecreateDisplayList = View.class.getDeclaredField("mRecreateDisplayList");
                    this.mRecreateDisplayList.setAccessible(true);
                } catch (NoSuchFieldException e2) {
                    Log.e("SlidingPaneLayout", "Couldn't fetch mRecreateDisplayList field; dimming will be slow.", e2);
                }
                this.mDisplayListReflectionLoaded = true;
            }
            if (this.mGetDisplayList == null || this.mRecreateDisplayList == null) {
                view.invalidate();
                return;
            }
            try {
                this.mRecreateDisplayList.setBoolean(view, true);
                this.mGetDisplayList.invoke(view, (Object[]) null);
            } catch (Exception e3) {
                Log.e("SlidingPaneLayout", "Error refreshing display list state", e3);
            }
        }
        ViewCompat.postInvalidateOnAnimation(this, view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
    }

    boolean smoothSlideTo(float f, int i) {
        int paddingLeft;
        if (!this.mCanSlide) {
            return false;
        }
        boolean zIsLayoutRtlSupport = isLayoutRtlSupport();
        SlidingPaneLayout$LayoutParams slidingPaneLayout$LayoutParams = (SlidingPaneLayout$LayoutParams) this.mSlideableView.getLayoutParams();
        if (zIsLayoutRtlSupport) {
            paddingLeft = (int) (getWidth() - (((getPaddingRight() + slidingPaneLayout$LayoutParams.rightMargin) + (f * this.mSlideRange)) + this.mSlideableView.getWidth()));
        } else {
            paddingLeft = (int) (getPaddingLeft() + slidingPaneLayout$LayoutParams.leftMargin + (f * this.mSlideRange));
        }
        if (!this.mDragHelper.smoothSlideViewTo(this.mSlideableView, paddingLeft, this.mSlideableView.getTop())) {
            return false;
        }
        setAllChildrenVisible();
        ViewCompat.postInvalidateOnAnimation(this);
        return true;
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.mDragHelper.continueSettling(true)) {
            if (!this.mCanSlide) {
                this.mDragHelper.abort();
            } else {
                ViewCompat.postInvalidateOnAnimation(this);
            }
        }
    }

    @Deprecated
    public void setShadowDrawable(Drawable drawable) {
        setShadowDrawableLeft(drawable);
    }

    public void setShadowDrawableLeft(@Nullable Drawable drawable) {
        this.mShadowDrawableLeft = drawable;
    }

    public void setShadowDrawableRight(@Nullable Drawable drawable) {
        this.mShadowDrawableRight = drawable;
    }

    @Deprecated
    public void setShadowResource(@DrawableRes int i) {
        setShadowDrawable(getResources().getDrawable(i));
    }

    public void setShadowResourceLeft(int i) {
        setShadowDrawableLeft(ContextCompat.getDrawable(getContext(), i));
    }

    public void setShadowResourceRight(int i) {
        setShadowDrawableRight(ContextCompat.getDrawable(getContext(), i));
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        Drawable drawable;
        int i;
        int right;
        super.draw(canvas);
        if (isLayoutRtlSupport()) {
            drawable = this.mShadowDrawableRight;
        } else {
            drawable = this.mShadowDrawableLeft;
        }
        View childAt = getChildCount() > 1 ? getChildAt(1) : null;
        if (childAt == null || drawable == null) {
            return;
        }
        int top = childAt.getTop();
        int bottom = childAt.getBottom();
        int intrinsicWidth = drawable.getIntrinsicWidth();
        if (isLayoutRtlSupport()) {
            right = childAt.getRight();
            i = intrinsicWidth + right;
        } else {
            int left = childAt.getLeft();
            int i2 = left - intrinsicWidth;
            i = left;
            right = i2;
        }
        drawable.setBounds(right, top, i, bottom);
        drawable.draw(canvas);
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x001c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void parallaxOtherViews(float f) {
        boolean z;
        boolean zIsLayoutRtlSupport = isLayoutRtlSupport();
        SlidingPaneLayout$LayoutParams slidingPaneLayout$LayoutParams = (SlidingPaneLayout$LayoutParams) this.mSlideableView.getLayoutParams();
        if (!slidingPaneLayout$LayoutParams.dimWhenOffset) {
            z = false;
        } else if ((zIsLayoutRtlSupport ? slidingPaneLayout$LayoutParams.rightMargin : slidingPaneLayout$LayoutParams.leftMargin) <= 0) {
            z = true;
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt != this.mSlideableView) {
                int i2 = (int) ((1.0f - this.mParallaxOffset) * this.mParallaxBy);
                this.mParallaxOffset = f;
                int i3 = i2 - ((int) ((1.0f - f) * this.mParallaxBy));
                if (zIsLayoutRtlSupport) {
                    i3 = -i3;
                }
                childAt.offsetLeftAndRight(i3);
                if (z) {
                    dimChildView(childAt, zIsLayoutRtlSupport ? this.mParallaxOffset - 1.0f : 1.0f - this.mParallaxOffset, this.mCoveredFadeColor);
                }
            }
        }
    }

    protected boolean canScroll(View view, boolean z, int i, int i2, int i3) {
        int i4;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i5 = i2 + scrollX;
                if (i5 >= childAt.getLeft() && i5 < childAt.getRight() && (i4 = i3 + scrollY) >= childAt.getTop() && i4 < childAt.getBottom() && canScroll(childAt, true, i, i5 - childAt.getLeft(), i4 - childAt.getTop())) {
                    return true;
                }
            }
        }
        if (z) {
            if (view.canScrollHorizontally(isLayoutRtlSupport() ? i : -i)) {
                return true;
            }
        }
        return false;
    }

    boolean isDimmed(View view) {
        if (view == null) {
            return false;
        }
        return this.mCanSlide && ((SlidingPaneLayout$LayoutParams) view.getLayoutParams()).dimWhenOffset && this.mSlideOffset > 0.0f;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup$LayoutParams generateDefaultLayoutParams() {
        return new SlidingPaneLayout$LayoutParams();
    }

    @Override // android.view.ViewGroup
    protected ViewGroup$LayoutParams generateLayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return viewGroup$LayoutParams instanceof ViewGroup$MarginLayoutParams ? new SlidingPaneLayout$LayoutParams((ViewGroup$MarginLayoutParams) viewGroup$LayoutParams) : new SlidingPaneLayout$LayoutParams(viewGroup$LayoutParams);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return (viewGroup$LayoutParams instanceof SlidingPaneLayout$LayoutParams) && super.checkLayoutParams(viewGroup$LayoutParams);
    }

    @Override // android.view.ViewGroup
    public ViewGroup$LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new SlidingPaneLayout$LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SlidingPaneLayout$SavedState slidingPaneLayout$SavedState = new SlidingPaneLayout$SavedState(super.onSaveInstanceState());
        slidingPaneLayout$SavedState.isOpen = isSlideable() ? isOpen() : this.mPreservedOpenState;
        return slidingPaneLayout$SavedState;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SlidingPaneLayout$SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SlidingPaneLayout$SavedState slidingPaneLayout$SavedState = (SlidingPaneLayout$SavedState) parcelable;
        super.onRestoreInstanceState(slidingPaneLayout$SavedState.getSuperState());
        if (slidingPaneLayout$SavedState.isOpen) {
            openPane();
        } else {
            closePane();
        }
        this.mPreservedOpenState = slidingPaneLayout$SavedState.isOpen;
    }

    boolean isLayoutRtlSupport() {
        return ViewCompat.getLayoutDirection(this) == 1;
    }
}
