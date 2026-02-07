package android.support.v4.view;

import android.content.Context;
import android.content.res.Resources$NotFoundException;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.annotation.CallSuper;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.util.Log;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View$MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup$LayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.Scroller;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ViewPager extends ViewGroup {
    private static final int CLOSE_ENOUGH = 2;
    private static final boolean DEBUG = false;
    private static final int DEFAULT_GUTTER_SIZE = 16;
    private static final int DEFAULT_OFFSCREEN_PAGES = 1;
    private static final int DRAW_ORDER_DEFAULT = 0;
    private static final int DRAW_ORDER_FORWARD = 1;
    private static final int DRAW_ORDER_REVERSE = 2;
    private static final int INVALID_POINTER = -1;
    private static final int MAX_SETTLE_DURATION = 600;
    private static final int MIN_DISTANCE_FOR_FLING = 25;
    private static final int MIN_FLING_VELOCITY = 400;
    public static final int SCROLL_STATE_DRAGGING = 1;
    public static final int SCROLL_STATE_IDLE = 0;
    public static final int SCROLL_STATE_SETTLING = 2;
    private static final String TAG = "ViewPager";
    private static final boolean USE_CACHE = false;
    private int mActivePointerId;
    PagerAdapter mAdapter;
    private List<ViewPager$OnAdapterChangeListener> mAdapterChangeListeners;
    private int mBottomPageBounds;
    private boolean mCalledSuper;
    private int mChildHeightMeasureSpec;
    private int mChildWidthMeasureSpec;
    private int mCloseEnough;
    int mCurItem;
    private int mDecorChildCount;
    private int mDefaultGutterSize;
    private int mDrawingOrder;
    private ArrayList<View> mDrawingOrderedChildren;
    private final Runnable mEndScrollRunnable;
    private int mExpectedAdapterCount;
    private long mFakeDragBeginTime;
    private boolean mFakeDragging;
    private boolean mFirstLayout;
    private float mFirstOffset;
    private int mFlingDistance;
    private int mGutterSize;
    private boolean mInLayout;
    private float mInitialMotionX;
    private float mInitialMotionY;
    private ViewPager$OnPageChangeListener mInternalPageChangeListener;
    private boolean mIsBeingDragged;
    private boolean mIsScrollStarted;
    private boolean mIsUnableToDrag;
    private final ArrayList<ViewPager$ItemInfo> mItems;
    private float mLastMotionX;
    private float mLastMotionY;
    private float mLastOffset;
    private EdgeEffect mLeftEdge;
    private Drawable mMarginDrawable;
    private int mMaximumVelocity;
    private int mMinimumVelocity;
    private boolean mNeedCalculatePageOffsets;
    private ViewPager$PagerObserver mObserver;
    private int mOffscreenPageLimit;
    private ViewPager$OnPageChangeListener mOnPageChangeListener;
    private List<ViewPager$OnPageChangeListener> mOnPageChangeListeners;
    private int mPageMargin;
    private ViewPager$PageTransformer mPageTransformer;
    private int mPageTransformerLayerType;
    private boolean mPopulatePending;
    private Parcelable mRestoredAdapterState;
    private ClassLoader mRestoredClassLoader;
    private int mRestoredCurItem;
    private EdgeEffect mRightEdge;
    private int mScrollState;
    private Scroller mScroller;
    private boolean mScrollingCacheEnabled;
    private final ViewPager$ItemInfo mTempItem;
    private final Rect mTempRect;
    private int mTopPageBounds;
    private int mTouchSlop;
    private VelocityTracker mVelocityTracker;
    static final int[] LAYOUT_ATTRS = {16842931};
    private static final Comparator<ViewPager$ItemInfo> COMPARATOR = new ViewPager$1();
    private static final Interpolator sInterpolator = new ViewPager$2();
    private static final ViewPager$ViewPositionComparator sPositionComparator = new ViewPager$ViewPositionComparator();

    public ViewPager(@NonNull Context context) {
        super(context);
        this.mItems = new ArrayList<>();
        this.mTempItem = new ViewPager$ItemInfo();
        this.mTempRect = new Rect();
        this.mRestoredCurItem = -1;
        this.mRestoredAdapterState = null;
        this.mRestoredClassLoader = null;
        this.mFirstOffset = -3.4028235E38f;
        this.mLastOffset = Float.MAX_VALUE;
        this.mOffscreenPageLimit = 1;
        this.mActivePointerId = -1;
        this.mFirstLayout = true;
        this.mNeedCalculatePageOffsets = false;
        this.mEndScrollRunnable = new ViewPager$3(this);
        this.mScrollState = 0;
        initViewPager();
    }

    public ViewPager(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mItems = new ArrayList<>();
        this.mTempItem = new ViewPager$ItemInfo();
        this.mTempRect = new Rect();
        this.mRestoredCurItem = -1;
        this.mRestoredAdapterState = null;
        this.mRestoredClassLoader = null;
        this.mFirstOffset = -3.4028235E38f;
        this.mLastOffset = Float.MAX_VALUE;
        this.mOffscreenPageLimit = 1;
        this.mActivePointerId = -1;
        this.mFirstLayout = true;
        this.mNeedCalculatePageOffsets = false;
        this.mEndScrollRunnable = new ViewPager$3(this);
        this.mScrollState = 0;
        initViewPager();
    }

    void initViewPager() {
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context = getContext();
        this.mScroller = new Scroller(context, sInterpolator);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        float f = context.getResources().getDisplayMetrics().density;
        this.mTouchSlop = viewConfiguration.getScaledPagingTouchSlop();
        this.mMinimumVelocity = (int) (400.0f * f);
        this.mMaximumVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        this.mLeftEdge = new EdgeEffect(context);
        this.mRightEdge = new EdgeEffect(context);
        this.mFlingDistance = (int) (25.0f * f);
        this.mCloseEnough = (int) (2.0f * f);
        this.mDefaultGutterSize = (int) (16.0f * f);
        ViewCompat.setAccessibilityDelegate(this, new ViewPager$MyAccessibilityDelegate(this));
        if (ViewCompat.getImportantForAccessibility(this) == 0) {
            ViewCompat.setImportantForAccessibility(this, 1);
        }
        ViewCompat.setOnApplyWindowInsetsListener(this, new ViewPager$4(this));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        removeCallbacks(this.mEndScrollRunnable);
        if (this.mScroller != null && !this.mScroller.isFinished()) {
            this.mScroller.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    void setScrollState(int i) {
        if (this.mScrollState == i) {
            return;
        }
        this.mScrollState = i;
        if (this.mPageTransformer != null) {
            enableLayers(i != 0);
        }
        dispatchOnScrollStateChanged(i);
    }

    public void setAdapter(@Nullable PagerAdapter pagerAdapter) {
        if (this.mAdapter != null) {
            this.mAdapter.setViewPagerObserver(null);
            this.mAdapter.startUpdate((ViewGroup) this);
            for (int i = 0; i < this.mItems.size(); i++) {
                ViewPager$ItemInfo viewPager$ItemInfo = this.mItems.get(i);
                this.mAdapter.destroyItem((ViewGroup) this, viewPager$ItemInfo.position, viewPager$ItemInfo.object);
            }
            this.mAdapter.finishUpdate((ViewGroup) this);
            this.mItems.clear();
            removeNonDecorViews();
            this.mCurItem = 0;
            scrollTo(0, 0);
        }
        PagerAdapter pagerAdapter2 = this.mAdapter;
        this.mAdapter = pagerAdapter;
        this.mExpectedAdapterCount = 0;
        if (this.mAdapter != null) {
            if (this.mObserver == null) {
                this.mObserver = new ViewPager$PagerObserver(this);
            }
            this.mAdapter.setViewPagerObserver(this.mObserver);
            this.mPopulatePending = false;
            boolean z = this.mFirstLayout;
            this.mFirstLayout = true;
            this.mExpectedAdapterCount = this.mAdapter.getCount();
            if (this.mRestoredCurItem >= 0) {
                this.mAdapter.restoreState(this.mRestoredAdapterState, this.mRestoredClassLoader);
                setCurrentItemInternal(this.mRestoredCurItem, false, true);
                this.mRestoredCurItem = -1;
                this.mRestoredAdapterState = null;
                this.mRestoredClassLoader = null;
            } else if (!z) {
                populate();
            } else {
                requestLayout();
            }
        }
        if (this.mAdapterChangeListeners == null || this.mAdapterChangeListeners.isEmpty()) {
            return;
        }
        int size = this.mAdapterChangeListeners.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.mAdapterChangeListeners.get(i2).onAdapterChanged(this, pagerAdapter2, pagerAdapter);
        }
    }

    private void removeNonDecorViews() {
        int i = 0;
        while (i < getChildCount()) {
            if (!((ViewPager$LayoutParams) getChildAt(i).getLayoutParams()).isDecor) {
                removeViewAt(i);
                i--;
            }
            i++;
        }
    }

    @Nullable
    public PagerAdapter getAdapter() {
        return this.mAdapter;
    }

    public void addOnAdapterChangeListener(@NonNull ViewPager$OnAdapterChangeListener viewPager$OnAdapterChangeListener) {
        if (this.mAdapterChangeListeners == null) {
            this.mAdapterChangeListeners = new ArrayList();
        }
        this.mAdapterChangeListeners.add(viewPager$OnAdapterChangeListener);
    }

    public void removeOnAdapterChangeListener(@NonNull ViewPager$OnAdapterChangeListener viewPager$OnAdapterChangeListener) {
        if (this.mAdapterChangeListeners != null) {
            this.mAdapterChangeListeners.remove(viewPager$OnAdapterChangeListener);
        }
    }

    private int getClientWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    public void setCurrentItem(int i) {
        this.mPopulatePending = false;
        setCurrentItemInternal(i, !this.mFirstLayout, false);
    }

    public void setCurrentItem(int i, boolean z) {
        this.mPopulatePending = false;
        setCurrentItemInternal(i, z, false);
    }

    public int getCurrentItem() {
        return this.mCurItem;
    }

    void setCurrentItemInternal(int i, boolean z, boolean z2) {
        setCurrentItemInternal(i, z, z2, 0);
    }

    void setCurrentItemInternal(int i, boolean z, boolean z2, int i2) {
        if (this.mAdapter == null || this.mAdapter.getCount() <= 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        if (!z2 && this.mCurItem == i && this.mItems.size() != 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        if (i < 0) {
            i = 0;
        } else if (i >= this.mAdapter.getCount()) {
            i = this.mAdapter.getCount() - 1;
        }
        int i3 = this.mOffscreenPageLimit;
        if (i > this.mCurItem + i3 || i < this.mCurItem - i3) {
            for (int i4 = 0; i4 < this.mItems.size(); i4++) {
                this.mItems.get(i4).scrolling = true;
            }
        }
        boolean z3 = this.mCurItem != i;
        if (this.mFirstLayout) {
            this.mCurItem = i;
            if (z3) {
                dispatchOnPageSelected(i);
            }
            requestLayout();
            return;
        }
        populate(i);
        scrollToItem(i, z, i2, z3);
    }

    private void scrollToItem(int i, boolean z, int i2, boolean z2) {
        ViewPager$ItemInfo viewPager$ItemInfoInfoForPosition = infoForPosition(i);
        int clientWidth = viewPager$ItemInfoInfoForPosition != null ? (int) (getClientWidth() * Math.max(this.mFirstOffset, Math.min(viewPager$ItemInfoInfoForPosition.offset, this.mLastOffset))) : 0;
        if (z) {
            smoothScrollTo(clientWidth, 0, i2);
            if (z2) {
                dispatchOnPageSelected(i);
                return;
            }
            return;
        }
        if (z2) {
            dispatchOnPageSelected(i);
        }
        completeScroll(false);
        scrollTo(clientWidth, 0);
        pageScrolled(clientWidth);
    }

    @Deprecated
    public void setOnPageChangeListener(ViewPager$OnPageChangeListener viewPager$OnPageChangeListener) {
        this.mOnPageChangeListener = viewPager$OnPageChangeListener;
    }

    public void addOnPageChangeListener(@NonNull ViewPager$OnPageChangeListener viewPager$OnPageChangeListener) {
        if (this.mOnPageChangeListeners == null) {
            this.mOnPageChangeListeners = new ArrayList();
        }
        this.mOnPageChangeListeners.add(viewPager$OnPageChangeListener);
    }

    public void removeOnPageChangeListener(@NonNull ViewPager$OnPageChangeListener viewPager$OnPageChangeListener) {
        if (this.mOnPageChangeListeners != null) {
            this.mOnPageChangeListeners.remove(viewPager$OnPageChangeListener);
        }
    }

    public void clearOnPageChangeListeners() {
        if (this.mOnPageChangeListeners != null) {
            this.mOnPageChangeListeners.clear();
        }
    }

    public void setPageTransformer(boolean z, @Nullable ViewPager$PageTransformer viewPager$PageTransformer) {
        setPageTransformer(z, viewPager$PageTransformer, 2);
    }

    public void setPageTransformer(boolean z, @Nullable ViewPager$PageTransformer viewPager$PageTransformer, int i) {
        boolean z2 = viewPager$PageTransformer != null;
        boolean z3 = z2 != (this.mPageTransformer != null);
        this.mPageTransformer = viewPager$PageTransformer;
        setChildrenDrawingOrderEnabled(z2);
        if (z2) {
            this.mDrawingOrder = z ? 2 : 1;
            this.mPageTransformerLayerType = i;
        } else {
            this.mDrawingOrder = 0;
        }
        if (z3) {
            populate();
        }
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i, int i2) {
        if (this.mDrawingOrder == 2) {
            i2 = (i - 1) - i2;
        }
        return ((ViewPager$LayoutParams) this.mDrawingOrderedChildren.get(i2).getLayoutParams()).childIndex;
    }

    ViewPager$OnPageChangeListener setInternalPageChangeListener(ViewPager$OnPageChangeListener viewPager$OnPageChangeListener) {
        ViewPager$OnPageChangeListener viewPager$OnPageChangeListener2 = this.mInternalPageChangeListener;
        this.mInternalPageChangeListener = viewPager$OnPageChangeListener;
        return viewPager$OnPageChangeListener2;
    }

    public int getOffscreenPageLimit() {
        return this.mOffscreenPageLimit;
    }

    public void setOffscreenPageLimit(int i) {
        if (i < 1) {
            Log.w("ViewPager", "Requested offscreen page limit " + i + " too small; defaulting to 1");
            i = 1;
        }
        if (i != this.mOffscreenPageLimit) {
            this.mOffscreenPageLimit = i;
            populate();
        }
    }

    public void setPageMargin(int i) {
        int i2 = this.mPageMargin;
        this.mPageMargin = i;
        int width = getWidth();
        recomputeScrollPosition(width, width, i, i2);
        requestLayout();
    }

    public int getPageMargin() {
        return this.mPageMargin;
    }

    public void setPageMarginDrawable(@Nullable Drawable drawable) {
        this.mMarginDrawable = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    public void setPageMarginDrawable(@DrawableRes int i) {
        setPageMarginDrawable(ContextCompat.getDrawable(getContext(), i));
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.mMarginDrawable;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.mMarginDrawable;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        drawable.setState(getDrawableState());
    }

    float distanceInfluenceForSnapDuration(float f) {
        return (float) Math.sin((f - 0.5f) * 0.47123894f);
    }

    void smoothScrollTo(int i, int i2) {
        smoothScrollTo(i, i2, 0);
    }

    void smoothScrollTo(int i, int i2, int i3) {
        int scrollX;
        int iAbs;
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        if ((this.mScroller == null || this.mScroller.isFinished()) ? false : true) {
            scrollX = this.mIsScrollStarted ? this.mScroller.getCurrX() : this.mScroller.getStartX();
            this.mScroller.abortAnimation();
            setScrollingCacheEnabled(false);
        } else {
            scrollX = getScrollX();
        }
        int i4 = scrollX;
        int scrollY = getScrollY();
        int i5 = i - i4;
        int i6 = i2 - scrollY;
        if (i5 == 0 && i6 == 0) {
            completeScroll(false);
            populate();
            setScrollState(0);
            return;
        }
        setScrollingCacheEnabled(true);
        setScrollState(2);
        int clientWidth = getClientWidth();
        int i7 = clientWidth / 2;
        float f = clientWidth;
        float f2 = i7;
        float fDistanceInfluenceForSnapDuration = f2 + (distanceInfluenceForSnapDuration(Math.min(1.0f, (Math.abs(i5) * 1.0f) / f)) * f2);
        int iAbs2 = Math.abs(i3);
        if (iAbs2 > 0) {
            iAbs = 4 * Math.round(1000.0f * Math.abs(fDistanceInfluenceForSnapDuration / iAbs2));
        } else {
            iAbs = (int) (((Math.abs(i5) / ((f * this.mAdapter.getPageWidth(this.mCurItem)) + this.mPageMargin)) + 1.0f) * 100.0f);
        }
        int iMin = Math.min(iAbs, 600);
        this.mIsScrollStarted = false;
        this.mScroller.startScroll(i4, scrollY, i5, i6, iMin);
        ViewCompat.postInvalidateOnAnimation(this);
    }

    ViewPager$ItemInfo addNewItem(int i, int i2) {
        ViewPager$ItemInfo viewPager$ItemInfo = new ViewPager$ItemInfo();
        viewPager$ItemInfo.position = i;
        viewPager$ItemInfo.object = this.mAdapter.instantiateItem((ViewGroup) this, i);
        viewPager$ItemInfo.widthFactor = this.mAdapter.getPageWidth(i);
        if (i2 < 0 || i2 >= this.mItems.size()) {
            this.mItems.add(viewPager$ItemInfo);
        } else {
            this.mItems.add(i2, viewPager$ItemInfo);
        }
        return viewPager$ItemInfo;
    }

    void dataSetChanged() {
        int count = this.mAdapter.getCount();
        this.mExpectedAdapterCount = count;
        boolean z = this.mItems.size() < (this.mOffscreenPageLimit * 2) + 1 && this.mItems.size() < count;
        int iMax = this.mCurItem;
        int i = 0;
        boolean z2 = false;
        while (i < this.mItems.size()) {
            ViewPager$ItemInfo viewPager$ItemInfo = this.mItems.get(i);
            int itemPosition = this.mAdapter.getItemPosition(viewPager$ItemInfo.object);
            if (itemPosition != -1) {
                if (itemPosition == -2) {
                    this.mItems.remove(i);
                    i--;
                    if (!z2) {
                        this.mAdapter.startUpdate((ViewGroup) this);
                        z2 = true;
                    }
                    this.mAdapter.destroyItem((ViewGroup) this, viewPager$ItemInfo.position, viewPager$ItemInfo.object);
                    if (this.mCurItem == viewPager$ItemInfo.position) {
                        iMax = Math.max(0, Math.min(this.mCurItem, count - 1));
                    }
                } else if (viewPager$ItemInfo.position != itemPosition) {
                    if (viewPager$ItemInfo.position == this.mCurItem) {
                        iMax = itemPosition;
                    }
                    viewPager$ItemInfo.position = itemPosition;
                }
                z = true;
            }
            i++;
        }
        if (z2) {
            this.mAdapter.finishUpdate((ViewGroup) this);
        }
        Collections.sort(this.mItems, COMPARATOR);
        if (z) {
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                ViewPager$LayoutParams viewPager$LayoutParams = (ViewPager$LayoutParams) getChildAt(i2).getLayoutParams();
                if (!viewPager$LayoutParams.isDecor) {
                    viewPager$LayoutParams.widthFactor = 0.0f;
                }
            }
            setCurrentItemInternal(iMax, false, true);
            requestLayout();
        }
    }

    void populate() {
        populate(this.mCurItem);
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x00c4, code lost:
    
        r8 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0157 A[PHI: r7 r10 r15
      0x0157: PHI (r7v14 float) = (r7v12 float), (r7v13 float), (r7v5 float) binds: [B:68:0x014c, B:65:0x0136, B:59:0x0120] A[DONT_GENERATE, DONT_INLINE]
      0x0157: PHI (r10v7 int) = (r10v1 int), (r10v6 int), (r10v10 int) binds: [B:68:0x014c, B:65:0x0136, B:59:0x0120] A[DONT_GENERATE, DONT_INLINE]
      0x0157: PHI (r15v6 int) = (r15v5 int), (r15v4 int), (r15v9 int) binds: [B:68:0x014c, B:65:0x0136, B:59:0x0120] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void populate(int i) {
        ViewPager$ItemInfo viewPager$ItemInfoInfoForPosition;
        String hexString;
        ViewPager$ItemInfo viewPager$ItemInfoAddNewItem;
        ViewPager$ItemInfo viewPager$ItemInfoInfoForChild;
        ViewPager$ItemInfo viewPager$ItemInfo;
        if (this.mCurItem != i) {
            viewPager$ItemInfoInfoForPosition = infoForPosition(this.mCurItem);
            this.mCurItem = i;
        } else {
            viewPager$ItemInfoInfoForPosition = null;
        }
        if (this.mAdapter == null) {
            sortChildDrawingOrder();
            return;
        }
        if (this.mPopulatePending) {
            sortChildDrawingOrder();
            return;
        }
        if (getWindowToken() == null) {
            return;
        }
        this.mAdapter.startUpdate((ViewGroup) this);
        int i2 = this.mOffscreenPageLimit;
        int iMax = Math.max(0, this.mCurItem - i2);
        int count = this.mAdapter.getCount();
        int iMin = Math.min(count - 1, this.mCurItem + i2);
        if (count != this.mExpectedAdapterCount) {
            try {
                hexString = getResources().getResourceName(getId());
            } catch (Resources$NotFoundException unused) {
                hexString = Integer.toHexString(getId());
            }
            throw new IllegalStateException("The application's PagerAdapter changed the adapter's contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: " + this.mExpectedAdapterCount + ", found: " + count + " Pager id: " + hexString + " Pager class: " + getClass() + " Problematic adapter: " + this.mAdapter.getClass());
        }
        int i3 = 0;
        while (true) {
            if (i3 >= this.mItems.size()) {
                break;
            }
            viewPager$ItemInfoAddNewItem = this.mItems.get(i3);
            if (viewPager$ItemInfoAddNewItem.position >= this.mCurItem) {
                if (viewPager$ItemInfoAddNewItem.position != this.mCurItem) {
                    break;
                }
            } else {
                i3++;
            }
        }
        if (viewPager$ItemInfoAddNewItem == null && count > 0) {
            viewPager$ItemInfoAddNewItem = addNewItem(this.mCurItem, i3);
        }
        if (viewPager$ItemInfoAddNewItem != null) {
            int i4 = i3 - 1;
            ViewPager$ItemInfo viewPager$ItemInfo2 = i4 >= 0 ? this.mItems.get(i4) : null;
            int clientWidth = getClientWidth();
            float paddingLeft = clientWidth <= 0 ? 0.0f : (2.0f - viewPager$ItemInfoAddNewItem.widthFactor) + (getPaddingLeft() / clientWidth);
            int i5 = i3;
            float f = 0.0f;
            for (int i6 = this.mCurItem - 1; i6 >= 0; i6--) {
                if (f >= paddingLeft && i6 < iMax) {
                    if (viewPager$ItemInfo2 == null) {
                        break;
                    }
                    if (i6 == viewPager$ItemInfo2.position && !viewPager$ItemInfo2.scrolling) {
                        this.mItems.remove(i4);
                        this.mAdapter.destroyItem((ViewGroup) this, i6, viewPager$ItemInfo2.object);
                        i4--;
                        i5--;
                        if (i4 >= 0) {
                            viewPager$ItemInfo = this.mItems.get(i4);
                        }
                        viewPager$ItemInfo2 = viewPager$ItemInfo;
                    }
                } else if (viewPager$ItemInfo2 != null && i6 == viewPager$ItemInfo2.position) {
                    f += viewPager$ItemInfo2.widthFactor;
                    i4--;
                    if (i4 >= 0) {
                        viewPager$ItemInfo = this.mItems.get(i4);
                    }
                    viewPager$ItemInfo2 = viewPager$ItemInfo;
                } else {
                    f += addNewItem(i6, i4 + 1).widthFactor;
                    i5++;
                    viewPager$ItemInfo = i4 >= 0 ? this.mItems.get(i4) : null;
                    viewPager$ItemInfo2 = viewPager$ItemInfo;
                }
            }
            float f2 = viewPager$ItemInfoAddNewItem.widthFactor;
            int i7 = i5 + 1;
            if (f2 < 2.0f) {
                ViewPager$ItemInfo viewPager$ItemInfo3 = i7 < this.mItems.size() ? this.mItems.get(i7) : null;
                float paddingRight = clientWidth <= 0 ? 0.0f : (getPaddingRight() / clientWidth) + 2.0f;
                int i8 = this.mCurItem;
                while (true) {
                    i8++;
                    if (i8 >= count) {
                        break;
                    }
                    if (f2 >= paddingRight && i8 > iMin) {
                        if (viewPager$ItemInfo3 == null) {
                            break;
                        }
                        if (i8 == viewPager$ItemInfo3.position && !viewPager$ItemInfo3.scrolling) {
                            this.mItems.remove(i7);
                            this.mAdapter.destroyItem((ViewGroup) this, i8, viewPager$ItemInfo3.object);
                            if (i7 < this.mItems.size()) {
                                viewPager$ItemInfo3 = this.mItems.get(i7);
                            }
                        }
                    } else if (viewPager$ItemInfo3 != null && i8 == viewPager$ItemInfo3.position) {
                        f2 += viewPager$ItemInfo3.widthFactor;
                        i7++;
                        if (i7 < this.mItems.size()) {
                            viewPager$ItemInfo3 = this.mItems.get(i7);
                        }
                    } else {
                        ViewPager$ItemInfo viewPager$ItemInfoAddNewItem2 = addNewItem(i8, i7);
                        i7++;
                        f2 += viewPager$ItemInfoAddNewItem2.widthFactor;
                        viewPager$ItemInfo3 = i7 < this.mItems.size() ? this.mItems.get(i7) : null;
                    }
                }
            }
            calculatePageOffsets(viewPager$ItemInfoAddNewItem, i5, viewPager$ItemInfoInfoForPosition);
            this.mAdapter.setPrimaryItem((ViewGroup) this, this.mCurItem, viewPager$ItemInfoAddNewItem.object);
        }
        this.mAdapter.finishUpdate((ViewGroup) this);
        int childCount = getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            ViewPager$LayoutParams viewPager$LayoutParams = (ViewPager$LayoutParams) childAt.getLayoutParams();
            viewPager$LayoutParams.childIndex = i9;
            if (!viewPager$LayoutParams.isDecor && viewPager$LayoutParams.widthFactor == 0.0f && (viewPager$ItemInfoInfoForChild = infoForChild(childAt)) != null) {
                viewPager$LayoutParams.widthFactor = viewPager$ItemInfoInfoForChild.widthFactor;
                viewPager$LayoutParams.position = viewPager$ItemInfoInfoForChild.position;
            }
        }
        sortChildDrawingOrder();
        if (hasFocus()) {
            View viewFindFocus = findFocus();
            ViewPager$ItemInfo viewPager$ItemInfoInfoForAnyChild = viewFindFocus != null ? infoForAnyChild(viewFindFocus) : null;
            if (viewPager$ItemInfoInfoForAnyChild == null || viewPager$ItemInfoInfoForAnyChild.position != this.mCurItem) {
                for (int i10 = 0; i10 < getChildCount(); i10++) {
                    View childAt2 = getChildAt(i10);
                    ViewPager$ItemInfo viewPager$ItemInfoInfoForChild2 = infoForChild(childAt2);
                    if (viewPager$ItemInfoInfoForChild2 != null && viewPager$ItemInfoInfoForChild2.position == this.mCurItem && childAt2.requestFocus(2)) {
                        return;
                    }
                }
            }
        }
    }

    private void sortChildDrawingOrder() {
        if (this.mDrawingOrder != 0) {
            if (this.mDrawingOrderedChildren == null) {
                this.mDrawingOrderedChildren = new ArrayList<>();
            } else {
                this.mDrawingOrderedChildren.clear();
            }
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                this.mDrawingOrderedChildren.add(getChildAt(i));
            }
            Collections.sort(this.mDrawingOrderedChildren, sPositionComparator);
        }
    }

    private void calculatePageOffsets(ViewPager$ItemInfo viewPager$ItemInfo, int i, ViewPager$ItemInfo viewPager$ItemInfo2) {
        ViewPager$ItemInfo viewPager$ItemInfo3;
        ViewPager$ItemInfo viewPager$ItemInfo4;
        int count = this.mAdapter.getCount();
        int clientWidth = getClientWidth();
        float f = clientWidth > 0 ? this.mPageMargin / clientWidth : 0.0f;
        if (viewPager$ItemInfo2 != null) {
            int i2 = viewPager$ItemInfo2.position;
            if (i2 < viewPager$ItemInfo.position) {
                float pageWidth = viewPager$ItemInfo2.offset + viewPager$ItemInfo2.widthFactor + f;
                int i3 = i2 + 1;
                int i4 = 0;
                while (i3 <= viewPager$ItemInfo.position && i4 < this.mItems.size()) {
                    ViewPager$ItemInfo viewPager$ItemInfo5 = this.mItems.get(i4);
                    while (true) {
                        viewPager$ItemInfo4 = viewPager$ItemInfo5;
                        if (i3 <= viewPager$ItemInfo4.position || i4 >= this.mItems.size() - 1) {
                            break;
                        }
                        i4++;
                        viewPager$ItemInfo5 = this.mItems.get(i4);
                    }
                    while (i3 < viewPager$ItemInfo4.position) {
                        pageWidth += this.mAdapter.getPageWidth(i3) + f;
                        i3++;
                    }
                    viewPager$ItemInfo4.offset = pageWidth;
                    pageWidth += viewPager$ItemInfo4.widthFactor + f;
                    i3++;
                }
            } else if (i2 > viewPager$ItemInfo.position) {
                int size = this.mItems.size() - 1;
                float pageWidth2 = viewPager$ItemInfo2.offset;
                while (true) {
                    i2--;
                    if (i2 < viewPager$ItemInfo.position || size < 0) {
                        break;
                    }
                    ViewPager$ItemInfo viewPager$ItemInfo6 = this.mItems.get(size);
                    while (true) {
                        viewPager$ItemInfo3 = viewPager$ItemInfo6;
                        if (i2 >= viewPager$ItemInfo3.position || size <= 0) {
                            break;
                        }
                        size--;
                        viewPager$ItemInfo6 = this.mItems.get(size);
                    }
                    while (i2 > viewPager$ItemInfo3.position) {
                        pageWidth2 -= this.mAdapter.getPageWidth(i2) + f;
                        i2--;
                    }
                    pageWidth2 -= viewPager$ItemInfo3.widthFactor + f;
                    viewPager$ItemInfo3.offset = pageWidth2;
                }
            }
        }
        int size2 = this.mItems.size();
        float pageWidth3 = viewPager$ItemInfo.offset;
        int i5 = viewPager$ItemInfo.position - 1;
        this.mFirstOffset = viewPager$ItemInfo.position == 0 ? viewPager$ItemInfo.offset : -3.4028235E38f;
        int i6 = count - 1;
        this.mLastOffset = viewPager$ItemInfo.position == i6 ? (viewPager$ItemInfo.offset + viewPager$ItemInfo.widthFactor) - 1.0f : Float.MAX_VALUE;
        int i7 = i - 1;
        while (i7 >= 0) {
            ViewPager$ItemInfo viewPager$ItemInfo7 = this.mItems.get(i7);
            while (i5 > viewPager$ItemInfo7.position) {
                pageWidth3 -= this.mAdapter.getPageWidth(i5) + f;
                i5--;
            }
            pageWidth3 -= viewPager$ItemInfo7.widthFactor + f;
            viewPager$ItemInfo7.offset = pageWidth3;
            if (viewPager$ItemInfo7.position == 0) {
                this.mFirstOffset = pageWidth3;
            }
            i7--;
            i5--;
        }
        float pageWidth4 = viewPager$ItemInfo.offset + viewPager$ItemInfo.widthFactor + f;
        int i8 = viewPager$ItemInfo.position + 1;
        int i9 = i + 1;
        while (i9 < size2) {
            ViewPager$ItemInfo viewPager$ItemInfo8 = this.mItems.get(i9);
            while (i8 < viewPager$ItemInfo8.position) {
                pageWidth4 += this.mAdapter.getPageWidth(i8) + f;
                i8++;
            }
            if (viewPager$ItemInfo8.position == i6) {
                this.mLastOffset = (viewPager$ItemInfo8.widthFactor + pageWidth4) - 1.0f;
            }
            viewPager$ItemInfo8.offset = pageWidth4;
            pageWidth4 += viewPager$ItemInfo8.widthFactor + f;
            i9++;
            i8++;
        }
        this.mNeedCalculatePageOffsets = false;
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        ViewPager$SavedState viewPager$SavedState = new ViewPager$SavedState(super.onSaveInstanceState());
        viewPager$SavedState.position = this.mCurItem;
        if (this.mAdapter != null) {
            viewPager$SavedState.adapterState = this.mAdapter.saveState();
        }
        return viewPager$SavedState;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof ViewPager$SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        ViewPager$SavedState viewPager$SavedState = (ViewPager$SavedState) parcelable;
        super.onRestoreInstanceState(viewPager$SavedState.getSuperState());
        if (this.mAdapter != null) {
            this.mAdapter.restoreState(viewPager$SavedState.adapterState, viewPager$SavedState.loader);
            setCurrentItemInternal(viewPager$SavedState.position, false, true);
        } else {
            this.mRestoredCurItem = viewPager$SavedState.position;
            this.mRestoredAdapterState = viewPager$SavedState.adapterState;
            this.mRestoredClassLoader = viewPager$SavedState.loader;
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup$LayoutParams viewGroup$LayoutParams) {
        if (!checkLayoutParams(viewGroup$LayoutParams)) {
            viewGroup$LayoutParams = generateLayoutParams(viewGroup$LayoutParams);
        }
        ViewPager$LayoutParams viewPager$LayoutParams = (ViewPager$LayoutParams) viewGroup$LayoutParams;
        viewPager$LayoutParams.isDecor |= isDecorView(view);
        if (this.mInLayout) {
            if (viewPager$LayoutParams != null && viewPager$LayoutParams.isDecor) {
                throw new IllegalStateException("Cannot add pager decor view during layout");
            }
            viewPager$LayoutParams.needsMeasure = true;
            addViewInLayout(view, i, viewGroup$LayoutParams);
            return;
        }
        super.addView(view, i, viewGroup$LayoutParams);
    }

    private static boolean isDecorView(@NonNull View view) {
        return view.getClass().getAnnotation(ViewPager$DecorView.class) != null;
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        if (this.mInLayout) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    ViewPager$ItemInfo infoForChild(View view) {
        for (int i = 0; i < this.mItems.size(); i++) {
            ViewPager$ItemInfo viewPager$ItemInfo = this.mItems.get(i);
            if (this.mAdapter.isViewFromObject(view, viewPager$ItemInfo.object)) {
                return viewPager$ItemInfo;
            }
        }
        return null;
    }

    ViewPager$ItemInfo infoForAnyChild(View view) {
        while (true) {
            Object parent = view.getParent();
            if (parent != this) {
                if (parent == null || !(parent instanceof View)) {
                    return null;
                }
                view = (View) parent;
            } else {
                return infoForChild(view);
            }
        }
    }

    ViewPager$ItemInfo infoForPosition(int i) {
        for (int i2 = 0; i2 < this.mItems.size(); i2++) {
            ViewPager$ItemInfo viewPager$ItemInfo = this.mItems.get(i2);
            if (viewPager$ItemInfo.position == i) {
                return viewPager$ItemInfo;
            }
        }
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mFirstLayout = true;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        ViewPager$LayoutParams viewPager$LayoutParams;
        ViewPager$LayoutParams viewPager$LayoutParams2;
        int i3;
        int i4;
        int i5;
        boolean z = false;
        setMeasuredDimension(getDefaultSize(0, i), getDefaultSize(0, i2));
        int measuredWidth = getMeasuredWidth();
        this.mGutterSize = Math.min(measuredWidth / 10, this.mDefaultGutterSize);
        int paddingLeft = (measuredWidth - getPaddingLeft()) - getPaddingRight();
        int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        int childCount = getChildCount();
        int measuredHeight2 = measuredHeight;
        int measuredWidth2 = paddingLeft;
        int i6 = 0;
        while (true) {
            boolean z2 = true;
            int i7 = 1073741824;
            if (i6 >= childCount) {
                break;
            }
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8 && (viewPager$LayoutParams2 = (ViewPager$LayoutParams) childAt.getLayoutParams()) != null && viewPager$LayoutParams2.isDecor) {
                int i8 = viewPager$LayoutParams2.gravity & 7;
                int i9 = viewPager$LayoutParams2.gravity & 112;
                boolean z3 = (i9 == 48 || i9 == 80) ? true : z;
                if (i8 != 3 && i8 != 5) {
                    z2 = z;
                }
                int i10 = Integer.MIN_VALUE;
                if (z3) {
                    i3 = Integer.MIN_VALUE;
                    i10 = 1073741824;
                } else {
                    i3 = z2 ? 1073741824 : Integer.MIN_VALUE;
                }
                if (viewPager$LayoutParams2.width != -2) {
                    i4 = viewPager$LayoutParams2.width != -1 ? viewPager$LayoutParams2.width : measuredWidth2;
                    i10 = 1073741824;
                } else {
                    i4 = measuredWidth2;
                }
                if (viewPager$LayoutParams2.height != -2) {
                    i5 = viewPager$LayoutParams2.height != -1 ? viewPager$LayoutParams2.height : measuredHeight2;
                } else {
                    i5 = measuredHeight2;
                    i7 = i3;
                }
                childAt.measure(View$MeasureSpec.makeMeasureSpec(i4, i10), View$MeasureSpec.makeMeasureSpec(i5, i7));
                if (z3) {
                    measuredHeight2 -= childAt.getMeasuredHeight();
                } else if (z2) {
                    measuredWidth2 -= childAt.getMeasuredWidth();
                }
            }
            i6++;
            z = false;
        }
        this.mChildWidthMeasureSpec = View$MeasureSpec.makeMeasureSpec(measuredWidth2, 1073741824);
        this.mChildHeightMeasureSpec = View$MeasureSpec.makeMeasureSpec(measuredHeight2, 1073741824);
        this.mInLayout = true;
        populate();
        this.mInLayout = false;
        int childCount2 = getChildCount();
        for (int i11 = 0; i11 < childCount2; i11++) {
            View childAt2 = getChildAt(i11);
            if (childAt2.getVisibility() != 8 && ((viewPager$LayoutParams = (ViewPager$LayoutParams) childAt2.getLayoutParams()) == null || !viewPager$LayoutParams.isDecor)) {
                childAt2.measure(View$MeasureSpec.makeMeasureSpec((int) (measuredWidth2 * viewPager$LayoutParams.widthFactor), 1073741824), this.mChildHeightMeasureSpec);
            }
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            recomputeScrollPosition(i, i3, this.mPageMargin, this.mPageMargin);
        }
    }

    private void recomputeScrollPosition(int i, int i2, int i3, int i4) {
        if (i2 > 0 && !this.mItems.isEmpty()) {
            if (!this.mScroller.isFinished()) {
                this.mScroller.setFinalX(getCurrentItem() * getClientWidth());
                return;
            } else {
                scrollTo((int) ((getScrollX() / (((i2 - getPaddingLeft()) - getPaddingRight()) + i4)) * (((i - getPaddingLeft()) - getPaddingRight()) + i3)), getScrollY());
                return;
            }
        }
        ViewPager$ItemInfo viewPager$ItemInfoInfoForPosition = infoForPosition(this.mCurItem);
        int iMin = (int) ((viewPager$ItemInfoInfoForPosition != null ? Math.min(viewPager$ItemInfoInfoForPosition.offset, this.mLastOffset) : 0.0f) * ((i - getPaddingLeft()) - getPaddingRight()));
        if (iMin != getScrollX()) {
            completeScroll(false);
            scrollTo(iMin, getScrollY());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean z2;
        ViewPager$ItemInfo viewPager$ItemInfoInfoForChild;
        int iMax;
        int iMax2;
        int childCount = getChildCount();
        int i5 = i3 - i;
        int i6 = i4 - i2;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int scrollX = getScrollX();
        int measuredHeight = paddingBottom;
        int i7 = 0;
        int measuredHeight2 = paddingTop;
        int measuredWidth = paddingLeft;
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8) {
                ViewPager$LayoutParams viewPager$LayoutParams = (ViewPager$LayoutParams) childAt.getLayoutParams();
                if (viewPager$LayoutParams.isDecor) {
                    int i9 = viewPager$LayoutParams.gravity & 7;
                    int i10 = viewPager$LayoutParams.gravity & 112;
                    if (i9 == 1) {
                        iMax = Math.max((i5 - childAt.getMeasuredWidth()) / 2, measuredWidth);
                    } else if (i9 == 3) {
                        iMax = measuredWidth;
                        measuredWidth = childAt.getMeasuredWidth() + measuredWidth;
                    } else if (i9 != 5) {
                        iMax = measuredWidth;
                    } else {
                        iMax = (i5 - paddingRight) - childAt.getMeasuredWidth();
                        paddingRight += childAt.getMeasuredWidth();
                    }
                    if (i10 == 16) {
                        iMax2 = Math.max((i6 - childAt.getMeasuredHeight()) / 2, measuredHeight2);
                    } else if (i10 == 48) {
                        iMax2 = measuredHeight2;
                        measuredHeight2 = childAt.getMeasuredHeight() + measuredHeight2;
                    } else if (i10 != 80) {
                        iMax2 = measuredHeight2;
                    } else {
                        iMax2 = (i6 - measuredHeight) - childAt.getMeasuredHeight();
                        measuredHeight += childAt.getMeasuredHeight();
                    }
                    int i11 = iMax + scrollX;
                    childAt.layout(i11, iMax2, childAt.getMeasuredWidth() + i11, iMax2 + childAt.getMeasuredHeight());
                    i7++;
                }
            }
        }
        int i12 = (i5 - measuredWidth) - paddingRight;
        for (int i13 = 0; i13 < childCount; i13++) {
            View childAt2 = getChildAt(i13);
            if (childAt2.getVisibility() != 8) {
                ViewPager$LayoutParams viewPager$LayoutParams2 = (ViewPager$LayoutParams) childAt2.getLayoutParams();
                if (!viewPager$LayoutParams2.isDecor && (viewPager$ItemInfoInfoForChild = infoForChild(childAt2)) != null) {
                    float f = i12;
                    int i14 = ((int) (viewPager$ItemInfoInfoForChild.offset * f)) + measuredWidth;
                    if (viewPager$LayoutParams2.needsMeasure) {
                        viewPager$LayoutParams2.needsMeasure = false;
                        childAt2.measure(View$MeasureSpec.makeMeasureSpec((int) (f * viewPager$LayoutParams2.widthFactor), 1073741824), View$MeasureSpec.makeMeasureSpec((i6 - measuredHeight2) - measuredHeight, 1073741824));
                    }
                    childAt2.layout(i14, measuredHeight2, childAt2.getMeasuredWidth() + i14, childAt2.getMeasuredHeight() + measuredHeight2);
                }
            }
        }
        this.mTopPageBounds = measuredHeight2;
        this.mBottomPageBounds = i6 - measuredHeight;
        this.mDecorChildCount = i7;
        if (this.mFirstLayout) {
            z2 = false;
            scrollToItem(this.mCurItem, false, 0, false);
        } else {
            z2 = false;
        }
        this.mFirstLayout = z2;
    }

    @Override // android.view.View
    public void computeScroll() {
        this.mIsScrollStarted = true;
        if (!this.mScroller.isFinished() && this.mScroller.computeScrollOffset()) {
            int scrollX = getScrollX();
            int scrollY = getScrollY();
            int currX = this.mScroller.getCurrX();
            int currY = this.mScroller.getCurrY();
            if (scrollX != currX || scrollY != currY) {
                scrollTo(currX, currY);
                if (!pageScrolled(currX)) {
                    this.mScroller.abortAnimation();
                    scrollTo(0, currY);
                }
            }
            ViewCompat.postInvalidateOnAnimation(this);
            return;
        }
        completeScroll(true);
    }

    private boolean pageScrolled(int i) {
        if (this.mItems.size() == 0) {
            if (this.mFirstLayout) {
                return false;
            }
            this.mCalledSuper = false;
            onPageScrolled(0, 0.0f, 0);
            if (this.mCalledSuper) {
                return false;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
        ViewPager$ItemInfo viewPager$ItemInfoInfoForCurrentScrollPosition = infoForCurrentScrollPosition();
        int clientWidth = getClientWidth();
        int i2 = this.mPageMargin + clientWidth;
        float f = clientWidth;
        int i3 = viewPager$ItemInfoInfoForCurrentScrollPosition.position;
        float f2 = ((i / f) - viewPager$ItemInfoInfoForCurrentScrollPosition.offset) / (viewPager$ItemInfoInfoForCurrentScrollPosition.widthFactor + (this.mPageMargin / f));
        this.mCalledSuper = false;
        onPageScrolled(i3, f2, (int) (i2 * f2));
        if (this.mCalledSuper) {
            return true;
        }
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0066  */
    @CallSuper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onPageScrolled(int i, float f, int i2) {
        int iMax;
        int width;
        int left;
        if (this.mDecorChildCount > 0) {
            int scrollX = getScrollX();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int width2 = getWidth();
            int childCount = getChildCount();
            int measuredWidth = paddingRight;
            int i3 = paddingLeft;
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = getChildAt(i4);
                ViewPager$LayoutParams viewPager$LayoutParams = (ViewPager$LayoutParams) childAt.getLayoutParams();
                if (viewPager$LayoutParams.isDecor) {
                    int i5 = viewPager$LayoutParams.gravity & 7;
                    if (i5 == 1) {
                        iMax = Math.max((width2 - childAt.getMeasuredWidth()) / 2, i3);
                    } else {
                        if (i5 == 3) {
                            width = childAt.getWidth() + i3;
                        } else if (i5 != 5) {
                            width = i3;
                        } else {
                            iMax = (width2 - measuredWidth) - childAt.getMeasuredWidth();
                            measuredWidth += childAt.getMeasuredWidth();
                        }
                        left = (i3 + scrollX) - childAt.getLeft();
                        if (left != 0) {
                            childAt.offsetLeftAndRight(left);
                        }
                        i3 = width;
                    }
                    int i6 = iMax;
                    width = i3;
                    i3 = i6;
                    left = (i3 + scrollX) - childAt.getLeft();
                    if (left != 0) {
                    }
                    i3 = width;
                }
            }
        }
        dispatchOnPageScrolled(i, f, i2);
        if (this.mPageTransformer != null) {
            int scrollX2 = getScrollX();
            int childCount2 = getChildCount();
            for (int i7 = 0; i7 < childCount2; i7++) {
                View childAt2 = getChildAt(i7);
                if (!((ViewPager$LayoutParams) childAt2.getLayoutParams()).isDecor) {
                    this.mPageTransformer.transformPage(childAt2, (childAt2.getLeft() - scrollX2) / getClientWidth());
                }
            }
        }
        this.mCalledSuper = true;
    }

    private void dispatchOnPageScrolled(int i, float f, int i2) {
        if (this.mOnPageChangeListener != null) {
            this.mOnPageChangeListener.onPageScrolled(i, f, i2);
        }
        if (this.mOnPageChangeListeners != null) {
            int size = this.mOnPageChangeListeners.size();
            for (int i3 = 0; i3 < size; i3++) {
                ViewPager$OnPageChangeListener viewPager$OnPageChangeListener = this.mOnPageChangeListeners.get(i3);
                if (viewPager$OnPageChangeListener != null) {
                    viewPager$OnPageChangeListener.onPageScrolled(i, f, i2);
                }
            }
        }
        if (this.mInternalPageChangeListener != null) {
            this.mInternalPageChangeListener.onPageScrolled(i, f, i2);
        }
    }

    private void dispatchOnPageSelected(int i) {
        if (this.mOnPageChangeListener != null) {
            this.mOnPageChangeListener.onPageSelected(i);
        }
        if (this.mOnPageChangeListeners != null) {
            int size = this.mOnPageChangeListeners.size();
            for (int i2 = 0; i2 < size; i2++) {
                ViewPager$OnPageChangeListener viewPager$OnPageChangeListener = this.mOnPageChangeListeners.get(i2);
                if (viewPager$OnPageChangeListener != null) {
                    viewPager$OnPageChangeListener.onPageSelected(i);
                }
            }
        }
        if (this.mInternalPageChangeListener != null) {
            this.mInternalPageChangeListener.onPageSelected(i);
        }
    }

    private void dispatchOnScrollStateChanged(int i) {
        if (this.mOnPageChangeListener != null) {
            this.mOnPageChangeListener.onPageScrollStateChanged(i);
        }
        if (this.mOnPageChangeListeners != null) {
            int size = this.mOnPageChangeListeners.size();
            for (int i2 = 0; i2 < size; i2++) {
                ViewPager$OnPageChangeListener viewPager$OnPageChangeListener = this.mOnPageChangeListeners.get(i2);
                if (viewPager$OnPageChangeListener != null) {
                    viewPager$OnPageChangeListener.onPageScrollStateChanged(i);
                }
            }
        }
        if (this.mInternalPageChangeListener != null) {
            this.mInternalPageChangeListener.onPageScrollStateChanged(i);
        }
    }

    private void completeScroll(boolean z) {
        boolean z2 = this.mScrollState == 2;
        if (z2) {
            setScrollingCacheEnabled(false);
            if (!this.mScroller.isFinished()) {
                this.mScroller.abortAnimation();
                int scrollX = getScrollX();
                int scrollY = getScrollY();
                int currX = this.mScroller.getCurrX();
                int currY = this.mScroller.getCurrY();
                if (scrollX != currX || scrollY != currY) {
                    scrollTo(currX, currY);
                    if (currX != scrollX) {
                        pageScrolled(currX);
                    }
                }
            }
        }
        this.mPopulatePending = false;
        boolean z3 = z2;
        for (int i = 0; i < this.mItems.size(); i++) {
            ViewPager$ItemInfo viewPager$ItemInfo = this.mItems.get(i);
            if (viewPager$ItemInfo.scrolling) {
                viewPager$ItemInfo.scrolling = false;
                z3 = true;
            }
        }
        if (z3) {
            if (z) {
                ViewCompat.postOnAnimation(this, this.mEndScrollRunnable);
            } else {
                this.mEndScrollRunnable.run();
            }
        }
    }

    private boolean isGutterDrag(float f, float f2) {
        return (f < ((float) this.mGutterSize) && f2 > 0.0f) || (f > ((float) (getWidth() - this.mGutterSize)) && f2 < 0.0f);
    }

    private void enableLayers(boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            getChildAt(i).setLayerType(z ? this.mPageTransformerLayerType : 0, null);
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action == 3 || action == 1) {
            resetTouch();
            return false;
        }
        if (action != 0) {
            if (this.mIsBeingDragged) {
                return true;
            }
            if (this.mIsUnableToDrag) {
                return false;
            }
        }
        if (action == 0) {
            float x = motionEvent.getX();
            this.mInitialMotionX = x;
            this.mLastMotionX = x;
            float y = motionEvent.getY();
            this.mInitialMotionY = y;
            this.mLastMotionY = y;
            this.mActivePointerId = motionEvent.getPointerId(0);
            this.mIsUnableToDrag = false;
            this.mIsScrollStarted = true;
            this.mScroller.computeScrollOffset();
            if (this.mScrollState == 2 && Math.abs(this.mScroller.getFinalX() - this.mScroller.getCurrX()) > this.mCloseEnough) {
                this.mScroller.abortAnimation();
                this.mPopulatePending = false;
                populate();
                this.mIsBeingDragged = true;
                requestParentDisallowInterceptTouchEvent(true);
                setScrollState(1);
            } else {
                completeScroll(false);
                this.mIsBeingDragged = false;
            }
        } else if (action == 2) {
            int i = this.mActivePointerId;
            if (i != -1) {
                int iFindPointerIndex = motionEvent.findPointerIndex(i);
                float x2 = motionEvent.getX(iFindPointerIndex);
                float f = x2 - this.mLastMotionX;
                float fAbs = Math.abs(f);
                float y2 = motionEvent.getY(iFindPointerIndex);
                float fAbs2 = Math.abs(y2 - this.mInitialMotionY);
                if (f != 0.0f && !isGutterDrag(this.mLastMotionX, f) && canScroll(this, false, (int) f, (int) x2, (int) y2)) {
                    this.mLastMotionX = x2;
                    this.mLastMotionY = y2;
                    this.mIsUnableToDrag = true;
                    return false;
                }
                if (fAbs > this.mTouchSlop && fAbs * 0.5f > fAbs2) {
                    this.mIsBeingDragged = true;
                    requestParentDisallowInterceptTouchEvent(true);
                    setScrollState(1);
                    this.mLastMotionX = f > 0.0f ? this.mInitialMotionX + this.mTouchSlop : this.mInitialMotionX - this.mTouchSlop;
                    this.mLastMotionY = y2;
                    setScrollingCacheEnabled(true);
                } else if (fAbs2 > this.mTouchSlop) {
                    this.mIsUnableToDrag = true;
                }
                if (this.mIsBeingDragged && performDrag(x2)) {
                    ViewCompat.postInvalidateOnAnimation(this);
                }
            }
        } else if (action == 6) {
            onSecondaryPointerUp(motionEvent);
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        return this.mIsBeingDragged;
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x00d5  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.mFakeDragging) {
            return true;
        }
        boolean zResetTouch = false;
        if ((motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) || this.mAdapter == null || this.mAdapter.getCount() == 0) {
            return false;
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        switch (motionEvent.getAction() & 255) {
            case 0:
                this.mScroller.abortAnimation();
                this.mPopulatePending = false;
                populate();
                float x = motionEvent.getX();
                this.mInitialMotionX = x;
                this.mLastMotionX = x;
                float y = motionEvent.getY();
                this.mInitialMotionY = y;
                this.mLastMotionY = y;
                this.mActivePointerId = motionEvent.getPointerId(0);
                break;
            case 1:
                if (this.mIsBeingDragged) {
                    VelocityTracker velocityTracker = this.mVelocityTracker;
                    velocityTracker.computeCurrentVelocity(1000, this.mMaximumVelocity);
                    int xVelocity = (int) velocityTracker.getXVelocity(this.mActivePointerId);
                    this.mPopulatePending = true;
                    int clientWidth = getClientWidth();
                    int scrollX = getScrollX();
                    ViewPager$ItemInfo viewPager$ItemInfoInfoForCurrentScrollPosition = infoForCurrentScrollPosition();
                    float f = clientWidth;
                    setCurrentItemInternal(determineTargetPage(viewPager$ItemInfoInfoForCurrentScrollPosition.position, ((scrollX / f) - viewPager$ItemInfoInfoForCurrentScrollPosition.offset) / (viewPager$ItemInfoInfoForCurrentScrollPosition.widthFactor + (this.mPageMargin / f)), xVelocity, (int) (motionEvent.getX(motionEvent.findPointerIndex(this.mActivePointerId)) - this.mInitialMotionX)), true, true, xVelocity);
                    zResetTouch = resetTouch();
                }
                break;
            case 2:
                if (!this.mIsBeingDragged) {
                    int iFindPointerIndex = motionEvent.findPointerIndex(this.mActivePointerId);
                    if (iFindPointerIndex == -1) {
                        zResetTouch = resetTouch();
                        break;
                    } else {
                        float x2 = motionEvent.getX(iFindPointerIndex);
                        float fAbs = Math.abs(x2 - this.mLastMotionX);
                        float y2 = motionEvent.getY(iFindPointerIndex);
                        float fAbs2 = Math.abs(y2 - this.mLastMotionY);
                        if (fAbs > this.mTouchSlop && fAbs > fAbs2) {
                            this.mIsBeingDragged = true;
                            requestParentDisallowInterceptTouchEvent(true);
                            this.mLastMotionX = x2 - this.mInitialMotionX > 0.0f ? this.mInitialMotionX + this.mTouchSlop : this.mInitialMotionX - this.mTouchSlop;
                            this.mLastMotionY = y2;
                            setScrollState(1);
                            setScrollingCacheEnabled(true);
                            ViewParent parent = getParent();
                            if (parent != null) {
                                parent.requestDisallowInterceptTouchEvent(true);
                            }
                        }
                        if (this.mIsBeingDragged) {
                        }
                    }
                } else {
                    if (this.mIsBeingDragged) {
                        zResetTouch = false | performDrag(motionEvent.getX(motionEvent.findPointerIndex(this.mActivePointerId)));
                    }
                    break;
                }
                break;
            case 3:
                if (this.mIsBeingDragged) {
                    scrollToItem(this.mCurItem, true, 0, false);
                    zResetTouch = resetTouch();
                }
                break;
            case 5:
                int actionIndex = motionEvent.getActionIndex();
                this.mLastMotionX = motionEvent.getX(actionIndex);
                this.mActivePointerId = motionEvent.getPointerId(actionIndex);
                break;
            case 6:
                onSecondaryPointerUp(motionEvent);
                this.mLastMotionX = motionEvent.getX(motionEvent.findPointerIndex(this.mActivePointerId));
                break;
        }
        if (zResetTouch) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
        return true;
    }

    private boolean resetTouch() {
        this.mActivePointerId = -1;
        endDrag();
        this.mLeftEdge.onRelease();
        this.mRightEdge.onRelease();
        return this.mLeftEdge.isFinished() || this.mRightEdge.isFinished();
    }

    private void requestParentDisallowInterceptTouchEvent(boolean z) {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z);
        }
    }

    private boolean performDrag(float f) {
        boolean z;
        boolean z2;
        float f2 = this.mLastMotionX - f;
        this.mLastMotionX = f;
        float scrollX = getScrollX() + f2;
        float clientWidth = getClientWidth();
        float f3 = this.mFirstOffset * clientWidth;
        float f4 = this.mLastOffset * clientWidth;
        boolean z3 = false;
        ViewPager$ItemInfo viewPager$ItemInfo = this.mItems.get(0);
        ViewPager$ItemInfo viewPager$ItemInfo2 = this.mItems.get(this.mItems.size() - 1);
        if (viewPager$ItemInfo.position != 0) {
            f3 = viewPager$ItemInfo.offset * clientWidth;
            z = false;
        } else {
            z = true;
        }
        if (viewPager$ItemInfo2.position != this.mAdapter.getCount() - 1) {
            f4 = viewPager$ItemInfo2.offset * clientWidth;
            z2 = false;
        } else {
            z2 = true;
        }
        if (scrollX < f3) {
            if (z) {
                this.mLeftEdge.onPull(Math.abs(f3 - scrollX) / clientWidth);
                z3 = true;
            }
            scrollX = f3;
        } else if (scrollX > f4) {
            if (z2) {
                this.mRightEdge.onPull(Math.abs(scrollX - f4) / clientWidth);
                z3 = true;
            }
            scrollX = f4;
        }
        int i = (int) scrollX;
        this.mLastMotionX += scrollX - i;
        scrollTo(i, getScrollY());
        pageScrolled(i);
        return z3;
    }

    private ViewPager$ItemInfo infoForCurrentScrollPosition() {
        int i;
        int clientWidth = getClientWidth();
        float scrollX = clientWidth > 0 ? getScrollX() / clientWidth : 0.0f;
        float f = clientWidth > 0 ? this.mPageMargin / clientWidth : 0.0f;
        float f2 = 0.0f;
        float f3 = 0.0f;
        int i2 = 0;
        int i3 = -1;
        ViewPager$ItemInfo viewPager$ItemInfo = null;
        boolean z = true;
        while (i2 < this.mItems.size()) {
            ViewPager$ItemInfo viewPager$ItemInfo2 = this.mItems.get(i2);
            if (!z && viewPager$ItemInfo2.position != (i = i3 + 1)) {
                viewPager$ItemInfo2 = this.mTempItem;
                viewPager$ItemInfo2.offset = f2 + f3 + f;
                viewPager$ItemInfo2.position = i;
                viewPager$ItemInfo2.widthFactor = this.mAdapter.getPageWidth(viewPager$ItemInfo2.position);
                i2--;
            }
            f2 = viewPager$ItemInfo2.offset;
            float f4 = viewPager$ItemInfo2.widthFactor + f2 + f;
            if (!z && scrollX < f2) {
                return viewPager$ItemInfo;
            }
            if (scrollX < f4 || i2 == this.mItems.size() - 1) {
                return viewPager$ItemInfo2;
            }
            i3 = viewPager$ItemInfo2.position;
            f3 = viewPager$ItemInfo2.widthFactor;
            i2++;
            z = false;
            viewPager$ItemInfo = viewPager$ItemInfo2;
        }
        return viewPager$ItemInfo;
    }

    private int determineTargetPage(int i, float f, int i2, int i3) {
        if (Math.abs(i3) <= this.mFlingDistance || Math.abs(i2) <= this.mMinimumVelocity) {
            i += (int) (f + (i >= this.mCurItem ? 0.4f : 0.6f));
        } else if (i2 <= 0) {
            i++;
        }
        if (this.mItems.size() > 0) {
            return Math.max(this.mItems.get(0).position, Math.min(i, this.mItems.get(this.mItems.size() - 1).position));
        }
        return i;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        int overScrollMode = getOverScrollMode();
        boolean zDraw = false;
        if (overScrollMode == 0 || (overScrollMode == 1 && this.mAdapter != null && this.mAdapter.getCount() > 1)) {
            if (!this.mLeftEdge.isFinished()) {
                int iSave = canvas.save();
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                int width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate((-height) + getPaddingTop(), this.mFirstOffset * width);
                this.mLeftEdge.setSize(height, width);
                zDraw = false | this.mLeftEdge.draw(canvas);
                canvas.restoreToCount(iSave);
            }
            if (!this.mRightEdge.isFinished()) {
                int iSave2 = canvas.save();
                int width2 = getWidth();
                int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate(-getPaddingTop(), (-(this.mLastOffset + 1.0f)) * width2);
                this.mRightEdge.setSize(height2, width2);
                zDraw |= this.mRightEdge.draw(canvas);
                canvas.restoreToCount(iSave2);
            }
        } else {
            this.mLeftEdge.finish();
            this.mRightEdge.finish();
        }
        if (zDraw) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f;
        float f2;
        super.onDraw(canvas);
        if (this.mPageMargin <= 0 || this.mMarginDrawable == null || this.mItems.size() <= 0 || this.mAdapter == null) {
            return;
        }
        int scrollX = getScrollX();
        float width = getWidth();
        float f3 = this.mPageMargin / width;
        int i = 0;
        ViewPager$ItemInfo viewPager$ItemInfo = this.mItems.get(0);
        float f4 = viewPager$ItemInfo.offset;
        int size = this.mItems.size();
        int i2 = viewPager$ItemInfo.position;
        int i3 = this.mItems.get(size - 1).position;
        while (i2 < i3) {
            while (i2 > viewPager$ItemInfo.position && i < size) {
                i++;
                viewPager$ItemInfo = this.mItems.get(i);
            }
            if (i2 == viewPager$ItemInfo.position) {
                f = (viewPager$ItemInfo.offset + viewPager$ItemInfo.widthFactor) * width;
                f4 = viewPager$ItemInfo.offset + viewPager$ItemInfo.widthFactor + f3;
            } else {
                float pageWidth = this.mAdapter.getPageWidth(i2);
                f = (f4 + pageWidth) * width;
                f4 += pageWidth + f3;
            }
            if (this.mPageMargin + f > scrollX) {
                f2 = f3;
                this.mMarginDrawable.setBounds(Math.round(f), this.mTopPageBounds, Math.round(this.mPageMargin + f), this.mBottomPageBounds);
                this.mMarginDrawable.draw(canvas);
            } else {
                f2 = f3;
            }
            if (f > scrollX + r2) {
                return;
            }
            i2++;
            f3 = f2;
        }
    }

    public boolean beginFakeDrag() {
        if (this.mIsBeingDragged) {
            return false;
        }
        this.mFakeDragging = true;
        setScrollState(1);
        this.mLastMotionX = 0.0f;
        this.mInitialMotionX = 0.0f;
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        } else {
            this.mVelocityTracker.clear();
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 0, 0.0f, 0.0f, 0);
        this.mVelocityTracker.addMovement(motionEventObtain);
        motionEventObtain.recycle();
        this.mFakeDragBeginTime = jUptimeMillis;
        return true;
    }

    public void endFakeDrag() {
        if (!this.mFakeDragging) {
            throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
        }
        if (this.mAdapter != null) {
            VelocityTracker velocityTracker = this.mVelocityTracker;
            velocityTracker.computeCurrentVelocity(1000, this.mMaximumVelocity);
            int xVelocity = (int) velocityTracker.getXVelocity(this.mActivePointerId);
            this.mPopulatePending = true;
            int clientWidth = getClientWidth();
            int scrollX = getScrollX();
            ViewPager$ItemInfo viewPager$ItemInfoInfoForCurrentScrollPosition = infoForCurrentScrollPosition();
            setCurrentItemInternal(determineTargetPage(viewPager$ItemInfoInfoForCurrentScrollPosition.position, ((scrollX / clientWidth) - viewPager$ItemInfoInfoForCurrentScrollPosition.offset) / viewPager$ItemInfoInfoForCurrentScrollPosition.widthFactor, xVelocity, (int) (this.mLastMotionX - this.mInitialMotionX)), true, true, xVelocity);
        }
        endDrag();
        this.mFakeDragging = false;
    }

    public void fakeDragBy(float f) {
        if (!this.mFakeDragging) {
            throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
        }
        if (this.mAdapter == null) {
            return;
        }
        this.mLastMotionX += f;
        float scrollX = getScrollX() - f;
        float clientWidth = getClientWidth();
        float f2 = this.mFirstOffset * clientWidth;
        float f3 = this.mLastOffset * clientWidth;
        ViewPager$ItemInfo viewPager$ItemInfo = this.mItems.get(0);
        ViewPager$ItemInfo viewPager$ItemInfo2 = this.mItems.get(this.mItems.size() - 1);
        if (viewPager$ItemInfo.position != 0) {
            f2 = viewPager$ItemInfo.offset * clientWidth;
        }
        if (viewPager$ItemInfo2.position != this.mAdapter.getCount() - 1) {
            f3 = viewPager$ItemInfo2.offset * clientWidth;
        }
        if (scrollX < f2) {
            scrollX = f2;
        } else if (scrollX > f3) {
            scrollX = f3;
        }
        int i = (int) scrollX;
        this.mLastMotionX += scrollX - i;
        scrollTo(i, getScrollY());
        pageScrolled(i);
        MotionEvent motionEventObtain = MotionEvent.obtain(this.mFakeDragBeginTime, SystemClock.uptimeMillis(), 2, this.mLastMotionX, 0.0f, 0);
        this.mVelocityTracker.addMovement(motionEventObtain);
        motionEventObtain.recycle();
    }

    public boolean isFakeDragging() {
        return this.mFakeDragging;
    }

    private void onSecondaryPointerUp(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.mActivePointerId) {
            int i = actionIndex == 0 ? 1 : 0;
            this.mLastMotionX = motionEvent.getX(i);
            this.mActivePointerId = motionEvent.getPointerId(i);
            if (this.mVelocityTracker != null) {
                this.mVelocityTracker.clear();
            }
        }
    }

    private void endDrag() {
        this.mIsBeingDragged = false;
        this.mIsUnableToDrag = false;
        if (this.mVelocityTracker != null) {
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    private void setScrollingCacheEnabled(boolean z) {
        if (this.mScrollingCacheEnabled != z) {
            this.mScrollingCacheEnabled = z;
        }
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i) {
        if (this.mAdapter == null) {
            return false;
        }
        int clientWidth = getClientWidth();
        int scrollX = getScrollX();
        return i < 0 ? scrollX > ((int) (((float) clientWidth) * this.mFirstOffset)) : i > 0 && scrollX < ((int) (((float) clientWidth) * this.mLastOffset));
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
        return z && view.canScrollHorizontally(-i);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || executeKeyEvent(keyEvent);
    }

    public boolean executeKeyEvent(@NonNull KeyEvent keyEvent) {
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode != 61) {
                switch (keyCode) {
                    case 21:
                        if (keyEvent.hasModifiers(2)) {
                            return pageLeft();
                        }
                        return arrowScroll(17);
                    case 22:
                        if (keyEvent.hasModifiers(2)) {
                            return pageRight();
                        }
                        return arrowScroll(66);
                }
            }
            if (keyEvent.hasNoModifiers()) {
                return arrowScroll(2);
            }
            if (keyEvent.hasModifiers(1)) {
                return arrowScroll(1);
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0068  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean arrowScroll(int i) {
        boolean zRequestFocus;
        boolean z;
        View viewFindFocus = findFocus();
        boolean zPageLeft = false;
        View view = null;
        if (viewFindFocus != this) {
            if (viewFindFocus != null) {
                ViewParent parent = viewFindFocus.getParent();
                while (true) {
                    if (!(parent instanceof ViewGroup)) {
                        z = false;
                        break;
                    }
                    if (parent == this) {
                        z = true;
                        break;
                    }
                    parent = parent.getParent();
                }
                if (z) {
                    view = viewFindFocus;
                } else {
                    StringBuilder sb = new StringBuilder();
                    sb.append(viewFindFocus.getClass().getSimpleName());
                    for (ViewParent parent2 = viewFindFocus.getParent(); parent2 instanceof ViewGroup; parent2 = parent2.getParent()) {
                        sb.append(" => ");
                        sb.append(parent2.getClass().getSimpleName());
                    }
                    Log.e("ViewPager", "arrowScroll tried to find focus based on non-child current focused view " + sb.toString());
                }
            }
        }
        View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, view, i);
        if (viewFindNextFocus != null && viewFindNextFocus != view) {
            if (i == 17) {
                int i2 = getChildRectInPagerCoordinates(this.mTempRect, viewFindNextFocus).left;
                int i3 = getChildRectInPagerCoordinates(this.mTempRect, view).left;
                if (view != null && i2 >= i3) {
                    zRequestFocus = pageLeft();
                } else {
                    zRequestFocus = viewFindNextFocus.requestFocus();
                }
            } else if (i == 66) {
                int i4 = getChildRectInPagerCoordinates(this.mTempRect, viewFindNextFocus).left;
                int i5 = getChildRectInPagerCoordinates(this.mTempRect, view).left;
                if (view != null && i4 <= i5) {
                    zRequestFocus = pageRight();
                } else {
                    zRequestFocus = viewFindNextFocus.requestFocus();
                }
            }
            zPageLeft = zRequestFocus;
        } else if (i == 17 || i == 1) {
            zPageLeft = pageLeft();
        } else if (i == 66 || i == 2) {
            zPageLeft = pageRight();
        }
        if (zPageLeft) {
            playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i));
        }
        return zPageLeft;
    }

    private Rect getChildRectInPagerCoordinates(Rect rect, View view) {
        if (rect == null) {
            rect = new Rect();
        }
        if (view == null) {
            rect.set(0, 0, 0, 0);
            return rect;
        }
        rect.left = view.getLeft();
        rect.right = view.getRight();
        rect.top = view.getTop();
        rect.bottom = view.getBottom();
        ViewParent parent = view.getParent();
        while ((parent instanceof ViewGroup) && parent != this) {
            ViewGroup viewGroup = (ViewGroup) parent;
            rect.left += viewGroup.getLeft();
            rect.right += viewGroup.getRight();
            rect.top += viewGroup.getTop();
            rect.bottom += viewGroup.getBottom();
            parent = viewGroup.getParent();
        }
        return rect;
    }

    boolean pageLeft() {
        if (this.mCurItem <= 0) {
            return false;
        }
        setCurrentItem(this.mCurItem - 1, true);
        return true;
    }

    boolean pageRight() {
        if (this.mAdapter == null || this.mCurItem >= this.mAdapter.getCount() - 1) {
            return false;
        }
        setCurrentItem(this.mCurItem + 1, true);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        ViewPager$ItemInfo viewPager$ItemInfoInfoForChild;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i3 = 0; i3 < getChildCount(); i3++) {
                View childAt = getChildAt(i3);
                if (childAt.getVisibility() == 0 && (viewPager$ItemInfoInfoForChild = infoForChild(childAt)) != null && viewPager$ItemInfoInfoForChild.position == this.mCurItem) {
                    childAt.addFocusables(arrayList, i, i2);
                }
            }
        }
        if ((descendantFocusability != 262144 || size == arrayList.size()) && isFocusable()) {
            if (((i2 & 1) == 1 && isInTouchMode() && !isFocusableInTouchMode()) || arrayList == null) {
                return;
            }
            arrayList.add(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addTouchables(ArrayList<View> arrayList) {
        ViewPager$ItemInfo viewPager$ItemInfoInfoForChild;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (viewPager$ItemInfoInfoForChild = infoForChild(childAt)) != null && viewPager$ItemInfoInfoForChild.position == this.mCurItem) {
                childAt.addTouchables(arrayList);
            }
        }
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i, Rect rect) {
        int i2;
        int i3;
        ViewPager$ItemInfo viewPager$ItemInfoInfoForChild;
        int childCount = getChildCount();
        int i4 = -1;
        if ((i & 2) != 0) {
            i4 = childCount;
            i2 = 0;
            i3 = 1;
        } else {
            i2 = childCount - 1;
            i3 = -1;
        }
        while (i2 != i4) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 0 && (viewPager$ItemInfoInfoForChild = infoForChild(childAt)) != null && viewPager$ItemInfoInfoForChild.position == this.mCurItem && childAt.requestFocus(i, rect)) {
                return true;
            }
            i2 += i3;
        }
        return false;
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        ViewPager$ItemInfo viewPager$ItemInfoInfoForChild;
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (viewPager$ItemInfoInfoForChild = infoForChild(childAt)) != null && viewPager$ItemInfoInfoForChild.position == this.mCurItem && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup$LayoutParams generateDefaultLayoutParams() {
        return new ViewPager$LayoutParams();
    }

    @Override // android.view.ViewGroup
    protected ViewGroup$LayoutParams generateLayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return generateDefaultLayoutParams();
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return (viewGroup$LayoutParams instanceof ViewPager$LayoutParams) && super.checkLayoutParams(viewGroup$LayoutParams);
    }

    @Override // android.view.ViewGroup
    public ViewGroup$LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewPager$LayoutParams(getContext(), attributeSet);
    }
}
