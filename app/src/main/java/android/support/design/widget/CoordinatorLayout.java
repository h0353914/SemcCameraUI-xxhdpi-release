package android.support.design.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Region$Op;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build$VERSION;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.annotation.AttrRes;
import android.support.annotation.ColorInt;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.support.annotation.VisibleForTesting;
import android.support.coordinatorlayout.R$attr;
import android.support.coordinatorlayout.R$style;
import android.support.coordinatorlayout.R$styleable;
import android.support.v4.content.ContextCompat;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.util.ObjectsCompat;
import android.support.v4.util.Pools$Pool;
import android.support.v4.util.Pools$SynchronizedPool;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.NestedScrollingParent2;
import android.support.v4.view.NestedScrollingParentHelper;
import android.support.v4.view.OnApplyWindowInsetsListener;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.WindowInsetsCompat;
import android.support.v4.widget.DirectedAcyclicGraph;
import android.support.v4.widget.ViewGroupUtils;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.View$MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup$LayoutParams;
import android.view.ViewGroup$MarginLayoutParams;
import android.view.ViewGroup$OnHierarchyChangeListener;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class CoordinatorLayout extends ViewGroup implements NestedScrollingParent2 {
    static final Class<?>[] CONSTRUCTOR_PARAMS;
    static final int EVENT_NESTED_SCROLL = 1;
    static final int EVENT_PRE_DRAW = 0;
    static final int EVENT_VIEW_REMOVED = 2;
    static final String TAG = "CoordinatorLayout";
    static final Comparator<View> TOP_SORTED_CHILDREN_COMPARATOR;
    private static final int TYPE_ON_INTERCEPT = 0;
    private static final int TYPE_ON_TOUCH = 1;
    static final String WIDGET_PACKAGE_NAME;
    static final ThreadLocal<Map<String, Constructor<CoordinatorLayout$Behavior>>> sConstructors;
    private static final Pools$Pool<Rect> sRectPool;
    private OnApplyWindowInsetsListener mApplyWindowInsetsListener;
    private View mBehaviorTouchView;
    private final DirectedAcyclicGraph<View> mChildDag;
    private final List<View> mDependencySortedChildren;
    private boolean mDisallowInterceptReset;
    private boolean mDrawStatusBarBackground;
    private boolean mIsAttachedToWindow;
    private int[] mKeylines;
    private WindowInsetsCompat mLastInsets;
    private boolean mNeedsPreDrawListener;
    private final NestedScrollingParentHelper mNestedScrollingParentHelper;
    private View mNestedScrollingTarget;
    ViewGroup$OnHierarchyChangeListener mOnHierarchyChangeListener;
    private CoordinatorLayout$OnPreDrawListener mOnPreDrawListener;
    private Paint mScrimPaint;
    private Drawable mStatusBarBackground;
    private final List<View> mTempDependenciesList;
    private final int[] mTempIntPair;
    private final List<View> mTempList1;

    private static int clamp(int i, int i2, int i3) {
        return i < i2 ? i2 : i > i3 ? i3 : i;
    }

    private static int resolveAnchoredChildGravity(int i) {
        if (i == 0) {
            return 17;
        }
        return i;
    }

    private static int resolveGravity(int i) {
        if ((i & 7) == 0) {
            i |= 8388611;
        }
        return (i & 112) == 0 ? i | 48 : i;
    }

    private static int resolveKeylineGravity(int i) {
        if (i == 0) {
            return 8388661;
        }
        return i;
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

    static {
        Package r0 = CoordinatorLayout.class.getPackage();
        WIDGET_PACKAGE_NAME = r0 != null ? r0.getName() : null;
        if (Build$VERSION.SDK_INT >= 21) {
            TOP_SORTED_CHILDREN_COMPARATOR = new CoordinatorLayout$ViewElevationComparator();
        } else {
            TOP_SORTED_CHILDREN_COMPARATOR = null;
        }
        CONSTRUCTOR_PARAMS = new Class[]{Context.class, AttributeSet.class};
        sConstructors = new ThreadLocal<>();
        sRectPool = new Pools$SynchronizedPool(12);
    }

    @NonNull
    private static Rect acquireTempRect() {
        Rect rectAcquire = sRectPool.acquire();
        return rectAcquire == null ? new Rect() : rectAcquire;
    }

    private static void releaseTempRect(@NonNull Rect rect) {
        rect.setEmpty();
        sRectPool.release(rect);
    }

    public CoordinatorLayout(@NonNull Context context) {
        this(context, null);
    }

    public CoordinatorLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.coordinatorLayoutStyle);
    }

    public CoordinatorLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i) {
        TypedArray typedArrayObtainStyledAttributes;
        super(context, attributeSet, i);
        this.mDependencySortedChildren = new ArrayList();
        this.mChildDag = new DirectedAcyclicGraph<>();
        this.mTempList1 = new ArrayList();
        this.mTempDependenciesList = new ArrayList();
        this.mTempIntPair = new int[2];
        this.mNestedScrollingParentHelper = new NestedScrollingParentHelper(this);
        if (i == 0) {
            typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.CoordinatorLayout, 0, R$style.Widget_Support_CoordinatorLayout);
        } else {
            typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.CoordinatorLayout, i, 0);
        }
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.CoordinatorLayout_keylines, 0);
        if (resourceId != 0) {
            Resources resources = context.getResources();
            this.mKeylines = resources.getIntArray(resourceId);
            float f = resources.getDisplayMetrics().density;
            int length = this.mKeylines.length;
            for (int i2 = 0; i2 < length; i2++) {
                this.mKeylines[i2] = (int) (this.mKeylines[i2] * f);
            }
        }
        this.mStatusBarBackground = typedArrayObtainStyledAttributes.getDrawable(R$styleable.CoordinatorLayout_statusBarBackground);
        typedArrayObtainStyledAttributes.recycle();
        setupForInsets();
        super.setOnHierarchyChangeListener(new CoordinatorLayout$HierarchyChangeListener(this));
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup$OnHierarchyChangeListener viewGroup$OnHierarchyChangeListener) {
        this.mOnHierarchyChangeListener = viewGroup$OnHierarchyChangeListener;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        resetTouchBehaviors(false);
        if (this.mNeedsPreDrawListener) {
            if (this.mOnPreDrawListener == null) {
                this.mOnPreDrawListener = new CoordinatorLayout$OnPreDrawListener(this);
            }
            getViewTreeObserver().addOnPreDrawListener(this.mOnPreDrawListener);
        }
        if (this.mLastInsets == null && ViewCompat.getFitsSystemWindows(this)) {
            ViewCompat.requestApplyInsets(this);
        }
        this.mIsAttachedToWindow = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        resetTouchBehaviors(false);
        if (this.mNeedsPreDrawListener && this.mOnPreDrawListener != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.mOnPreDrawListener);
        }
        if (this.mNestedScrollingTarget != null) {
            onStopNestedScroll(this.mNestedScrollingTarget);
        }
        this.mIsAttachedToWindow = false;
    }

    public void setStatusBarBackground(@Nullable Drawable drawable) {
        if (this.mStatusBarBackground != drawable) {
            if (this.mStatusBarBackground != null) {
                this.mStatusBarBackground.setCallback(null);
            }
            this.mStatusBarBackground = drawable != null ? drawable.mutate() : null;
            if (this.mStatusBarBackground != null) {
                if (this.mStatusBarBackground.isStateful()) {
                    this.mStatusBarBackground.setState(getDrawableState());
                }
                DrawableCompat.setLayoutDirection(this.mStatusBarBackground, ViewCompat.getLayoutDirection(this));
                this.mStatusBarBackground.setVisible(getVisibility() == 0, false);
                this.mStatusBarBackground.setCallback(this);
            }
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    @Nullable
    public Drawable getStatusBarBackground() {
        return this.mStatusBarBackground;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.mStatusBarBackground;
        boolean state = false;
        if (drawable != null && drawable.isStateful()) {
            state = false | drawable.setState(drawableState);
        }
        if (state) {
            invalidate();
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.mStatusBarBackground;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        if (this.mStatusBarBackground == null || this.mStatusBarBackground.isVisible() == z) {
            return;
        }
        this.mStatusBarBackground.setVisible(z, false);
    }

    public void setStatusBarBackgroundResource(@DrawableRes int i) {
        setStatusBarBackground(i != 0 ? ContextCompat.getDrawable(getContext(), i) : null);
    }

    public void setStatusBarBackgroundColor(@ColorInt int i) {
        setStatusBarBackground(new ColorDrawable(i));
    }

    final WindowInsetsCompat setWindowInsets(WindowInsetsCompat windowInsetsCompat) {
        if (ObjectsCompat.equals(this.mLastInsets, windowInsetsCompat)) {
            return windowInsetsCompat;
        }
        this.mLastInsets = windowInsetsCompat;
        boolean z = false;
        this.mDrawStatusBarBackground = windowInsetsCompat != null && windowInsetsCompat.getSystemWindowInsetTop() > 0;
        if (!this.mDrawStatusBarBackground && getBackground() == null) {
            z = true;
        }
        setWillNotDraw(z);
        WindowInsetsCompat windowInsetsCompatDispatchApplyWindowInsetsToBehaviors = dispatchApplyWindowInsetsToBehaviors(windowInsetsCompat);
        requestLayout();
        return windowInsetsCompatDispatchApplyWindowInsetsToBehaviors;
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public final WindowInsetsCompat getLastWindowInsets() {
        return this.mLastInsets;
    }

    private void resetTouchBehaviors(boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            CoordinatorLayout$Behavior behavior = ((CoordinatorLayout$LayoutParams) childAt.getLayoutParams()).getBehavior();
            if (behavior != null) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                if (z) {
                    behavior.onInterceptTouchEvent(this, childAt, motionEventObtain);
                } else {
                    behavior.onTouchEvent(this, childAt, motionEventObtain);
                }
                motionEventObtain.recycle();
            }
        }
        for (int i2 = 0; i2 < childCount; i2++) {
            ((CoordinatorLayout$LayoutParams) getChildAt(i2).getLayoutParams()).resetTouchBehaviorTracking();
        }
        this.mBehaviorTouchView = null;
        this.mDisallowInterceptReset = false;
    }

    private void getTopSortedChildren(List<View> list) {
        list.clear();
        boolean zIsChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
        int childCount = getChildCount();
        for (int i = childCount - 1; i >= 0; i--) {
            list.add(getChildAt(zIsChildrenDrawingOrderEnabled ? getChildDrawingOrder(childCount, i) : i));
        }
        if (TOP_SORTED_CHILDREN_COMPARATOR != null) {
            Collections.sort(list, TOP_SORTED_CHILDREN_COMPARATOR);
        }
    }

    private boolean performIntercept(MotionEvent motionEvent, int i) {
        int actionMasked = motionEvent.getActionMasked();
        List<View> list = this.mTempList1;
        getTopSortedChildren(list);
        int size = list.size();
        boolean zOnInterceptTouchEvent = false;
        boolean z = false;
        MotionEvent motionEventObtain = null;
        for (int i2 = 0; i2 < size; i2++) {
            View view = list.get(i2);
            CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams) view.getLayoutParams();
            CoordinatorLayout$Behavior behavior = coordinatorLayout$LayoutParams.getBehavior();
            if (!(zOnInterceptTouchEvent || z) || actionMasked == 0) {
                if (!zOnInterceptTouchEvent && behavior != null) {
                    switch (i) {
                        case 0:
                            zOnInterceptTouchEvent = behavior.onInterceptTouchEvent(this, view, motionEvent);
                            break;
                        case 1:
                            zOnInterceptTouchEvent = behavior.onTouchEvent(this, view, motionEvent);
                            break;
                    }
                    if (zOnInterceptTouchEvent) {
                        this.mBehaviorTouchView = view;
                    }
                }
                boolean zDidBlockInteraction = coordinatorLayout$LayoutParams.didBlockInteraction();
                boolean zIsBlockingInteractionBelow = coordinatorLayout$LayoutParams.isBlockingInteractionBelow(this, view);
                z = zIsBlockingInteractionBelow && !zDidBlockInteraction;
                if (zIsBlockingInteractionBelow && !z) {
                    list.clear();
                    return zOnInterceptTouchEvent;
                }
            } else if (behavior != null) {
                if (motionEventObtain == null) {
                    long jUptimeMillis = SystemClock.uptimeMillis();
                    motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                }
                switch (i) {
                    case 0:
                        behavior.onInterceptTouchEvent(this, view, motionEventObtain);
                        break;
                    case 1:
                        behavior.onTouchEvent(this, view, motionEventObtain);
                        break;
                }
            }
        }
        list.clear();
        return zOnInterceptTouchEvent;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            resetTouchBehaviors(true);
        }
        boolean zPerformIntercept = performIntercept(motionEvent, 0);
        if (actionMasked == 1 || actionMasked == 3) {
            resetTouchBehaviors(true);
        }
        return zPerformIntercept;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0015 A[PHI: r3
      0x0015: PHI (r3v4 boolean) = (r3v2 boolean), (r3v5 boolean) binds: [B:10:0x0024, B:5:0x0012] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zPerformIntercept;
        boolean zOnTouchEvent;
        MotionEvent motionEventObtain;
        int actionMasked = motionEvent.getActionMasked();
        if (this.mBehaviorTouchView == null) {
            zPerformIntercept = performIntercept(motionEvent, 1);
            if (!zPerformIntercept) {
                zOnTouchEvent = false;
            }
            motionEventObtain = null;
            if (this.mBehaviorTouchView != null) {
                zOnTouchEvent |= super.onTouchEvent(motionEvent);
            } else if (zPerformIntercept) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                super.onTouchEvent(motionEventObtain);
            }
            if (motionEventObtain != null) {
                motionEventObtain.recycle();
            }
            if (actionMasked != 1 || actionMasked == 3) {
                resetTouchBehaviors(false);
            }
            return zOnTouchEvent;
        }
        zPerformIntercept = false;
        CoordinatorLayout$Behavior behavior = ((CoordinatorLayout$LayoutParams) this.mBehaviorTouchView.getLayoutParams()).getBehavior();
        if (behavior != null) {
            zOnTouchEvent = behavior.onTouchEvent(this, this.mBehaviorTouchView, motionEvent);
        }
        motionEventObtain = null;
        if (this.mBehaviorTouchView != null) {
        }
        if (motionEventObtain != null) {
        }
        if (actionMasked != 1) {
            resetTouchBehaviors(false);
        }
        return zOnTouchEvent;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        if (!z || this.mDisallowInterceptReset) {
            return;
        }
        resetTouchBehaviors(false);
        this.mDisallowInterceptReset = true;
    }

    private int getKeyline(int i) {
        if (this.mKeylines == null) {
            Log.e("CoordinatorLayout", "No keylines defined for " + this + " - attempted index lookup " + i);
            return 0;
        }
        if (i < 0 || i >= this.mKeylines.length) {
            Log.e("CoordinatorLayout", "Keyline index " + i + " out of range for " + this);
            return 0;
        }
        return this.mKeylines[i];
    }

    /* JADX WARN: Multi-variable type inference failed */
    static CoordinatorLayout$Behavior parseBehavior(Context context, AttributeSet attributeSet, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.startsWith(".")) {
            str = context.getPackageName() + str;
        } else if (str.indexOf(46) < 0 && !TextUtils.isEmpty(WIDGET_PACKAGE_NAME)) {
            str = WIDGET_PACKAGE_NAME + '.' + str;
        }
        try {
            Map map = sConstructors.get();
            if (map == null) {
                map = new HashMap();
                sConstructors.set(map);
            }
            Constructor<?> constructor = (Constructor) map.get(str);
            if (constructor == null) {
                constructor = context.getClassLoader().loadClass(str).getConstructor(CONSTRUCTOR_PARAMS);
                constructor.setAccessible(true);
                map.put(str, constructor);
            }
            return (CoordinatorLayout$Behavior) constructor.newInstance(context, attributeSet);
        } catch (Exception e) {
            throw new RuntimeException("Could not inflate Behavior subclass " + str, e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    CoordinatorLayout$LayoutParams getResolvedLayoutParams(View view) {
        CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams) view.getLayoutParams();
        if (!coordinatorLayout$LayoutParams.mBehaviorResolved) {
            if (view instanceof CoordinatorLayout$AttachedBehavior) {
                CoordinatorLayout$Behavior behavior = ((CoordinatorLayout$AttachedBehavior) view).getBehavior();
                if (behavior == null) {
                    Log.e("CoordinatorLayout", "Attached behavior class is null");
                }
                coordinatorLayout$LayoutParams.setBehavior(behavior);
                coordinatorLayout$LayoutParams.mBehaviorResolved = true;
            } else {
                CoordinatorLayout$DefaultBehavior coordinatorLayout$DefaultBehavior = null;
                for (Class<?> superclass = view.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
                    coordinatorLayout$DefaultBehavior = (CoordinatorLayout$DefaultBehavior) superclass.getAnnotation(CoordinatorLayout$DefaultBehavior.class);
                    if (coordinatorLayout$DefaultBehavior != null) {
                        break;
                    }
                }
                if (coordinatorLayout$DefaultBehavior != null) {
                    try {
                        coordinatorLayout$LayoutParams.setBehavior(coordinatorLayout$DefaultBehavior.value().getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
                    } catch (Exception e) {
                        Log.e("CoordinatorLayout", "Default behavior class " + coordinatorLayout$DefaultBehavior.value().getName() + " could not be instantiated. Did you forget a default constructor?", e);
                    }
                }
                coordinatorLayout$LayoutParams.mBehaviorResolved = true;
            }
        }
        return coordinatorLayout$LayoutParams;
    }

    private void prepareChildren() {
        this.mDependencySortedChildren.clear();
        this.mChildDag.clear();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            CoordinatorLayout$LayoutParams resolvedLayoutParams = getResolvedLayoutParams(childAt);
            resolvedLayoutParams.findAnchorView(this, childAt);
            this.mChildDag.addNode(childAt);
            for (int i2 = 0; i2 < childCount; i2++) {
                if (i2 != i) {
                    View childAt2 = getChildAt(i2);
                    if (resolvedLayoutParams.dependsOn(this, childAt, childAt2)) {
                        if (!this.mChildDag.contains(childAt2)) {
                            this.mChildDag.addNode(childAt2);
                        }
                        this.mChildDag.addEdge(childAt2, childAt);
                    }
                }
            }
        }
        this.mDependencySortedChildren.addAll(this.mChildDag.getSortedList());
        Collections.reverse(this.mDependencySortedChildren);
    }

    void getDescendantRect(View view, Rect rect) {
        ViewGroupUtils.getDescendantRect(this, view, rect);
    }

    @Override // android.view.View
    protected int getSuggestedMinimumWidth() {
        return Math.max(super.getSuggestedMinimumWidth(), getPaddingLeft() + getPaddingRight());
    }

    @Override // android.view.View
    protected int getSuggestedMinimumHeight() {
        return Math.max(super.getSuggestedMinimumHeight(), getPaddingTop() + getPaddingBottom());
    }

    public void onMeasureChild(View view, int i, int i2, int i3, int i4) {
        measureChildWithMargins(view, i, i2, i3, i4);
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0126  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int iMax;
        int iMakeMeasureSpec;
        int iMakeMeasureSpec2;
        CoordinatorLayout$Behavior behavior;
        View view;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        prepareChildren();
        ensurePreDrawListener();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        boolean z = layoutDirection == 1;
        int mode = View$MeasureSpec.getMode(i);
        int size = View$MeasureSpec.getSize(i);
        int mode2 = View$MeasureSpec.getMode(i2);
        int size2 = View$MeasureSpec.getSize(i2);
        int i10 = paddingLeft + paddingRight;
        int i11 = paddingTop + paddingBottom;
        int suggestedMinimumWidth = getSuggestedMinimumWidth();
        int suggestedMinimumHeight = getSuggestedMinimumHeight();
        boolean z2 = this.mLastInsets != null && ViewCompat.getFitsSystemWindows(this);
        int size3 = this.mDependencySortedChildren.size();
        int i12 = suggestedMinimumWidth;
        int iMax2 = suggestedMinimumHeight;
        int iCombineMeasuredStates = 0;
        int i13 = 0;
        while (i13 < size3) {
            View view2 = this.mDependencySortedChildren.get(i13);
            if (view2.getVisibility() == 8) {
                i9 = i13;
                i6 = size3;
            } else {
                CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams) view2.getLayoutParams();
                if (coordinatorLayout$LayoutParams.keyline < 0 || mode == 0) {
                    i3 = iMax2;
                    i4 = iCombineMeasuredStates;
                } else {
                    int keyline = getKeyline(coordinatorLayout$LayoutParams.keyline);
                    i3 = iMax2;
                    int absoluteGravity = GravityCompat.getAbsoluteGravity(resolveKeylineGravity(coordinatorLayout$LayoutParams.gravity), layoutDirection) & 7;
                    i4 = iCombineMeasuredStates;
                    if ((absoluteGravity == 3 && !z) || (absoluteGravity == 5 && z)) {
                        iMax = Math.max(0, (size - paddingRight) - keyline);
                    } else if ((absoluteGravity == 5 && !z) || (absoluteGravity == 3 && z)) {
                        iMax = Math.max(0, keyline - paddingLeft);
                    }
                    if (z2 || ViewCompat.getFitsSystemWindows(view2)) {
                        iMakeMeasureSpec = i;
                        iMakeMeasureSpec2 = i2;
                    } else {
                        int systemWindowInsetLeft = this.mLastInsets.getSystemWindowInsetLeft() + this.mLastInsets.getSystemWindowInsetRight();
                        int systemWindowInsetTop = this.mLastInsets.getSystemWindowInsetTop() + this.mLastInsets.getSystemWindowInsetBottom();
                        iMakeMeasureSpec = View$MeasureSpec.makeMeasureSpec(size - systemWindowInsetLeft, mode);
                        iMakeMeasureSpec2 = View$MeasureSpec.makeMeasureSpec(size2 - systemWindowInsetTop, mode2);
                    }
                    behavior = coordinatorLayout$LayoutParams.getBehavior();
                    if (behavior == null) {
                        i7 = i3;
                        view = view2;
                        i8 = i4;
                        i5 = i12;
                        i9 = i13;
                        i6 = size3;
                        if (!behavior.onMeasureChild(this, view2, iMakeMeasureSpec, iMax, iMakeMeasureSpec2, 0)) {
                        }
                        View view3 = view;
                        int iMax3 = Math.max(i5, i10 + view3.getMeasuredWidth() + coordinatorLayout$LayoutParams.leftMargin + coordinatorLayout$LayoutParams.rightMargin);
                        iMax2 = Math.max(i7, i11 + view3.getMeasuredHeight() + coordinatorLayout$LayoutParams.topMargin + coordinatorLayout$LayoutParams.bottomMargin);
                        iCombineMeasuredStates = View.combineMeasuredStates(i8, view3.getMeasuredState());
                        i12 = iMax3;
                    } else {
                        view = view2;
                        i5 = i12;
                        i6 = size3;
                        i7 = i3;
                        i8 = i4;
                        i9 = i13;
                    }
                    onMeasureChild(view, iMakeMeasureSpec, iMax, iMakeMeasureSpec2, 0);
                    View view32 = view;
                    int iMax32 = Math.max(i5, i10 + view32.getMeasuredWidth() + coordinatorLayout$LayoutParams.leftMargin + coordinatorLayout$LayoutParams.rightMargin);
                    iMax2 = Math.max(i7, i11 + view32.getMeasuredHeight() + coordinatorLayout$LayoutParams.topMargin + coordinatorLayout$LayoutParams.bottomMargin);
                    iCombineMeasuredStates = View.combineMeasuredStates(i8, view32.getMeasuredState());
                    i12 = iMax32;
                }
                iMax = 0;
                if (z2) {
                    iMakeMeasureSpec = i;
                    iMakeMeasureSpec2 = i2;
                    behavior = coordinatorLayout$LayoutParams.getBehavior();
                    if (behavior == null) {
                    }
                    onMeasureChild(view, iMakeMeasureSpec, iMax, iMakeMeasureSpec2, 0);
                    View view322 = view;
                    int iMax322 = Math.max(i5, i10 + view322.getMeasuredWidth() + coordinatorLayout$LayoutParams.leftMargin + coordinatorLayout$LayoutParams.rightMargin);
                    iMax2 = Math.max(i7, i11 + view322.getMeasuredHeight() + coordinatorLayout$LayoutParams.topMargin + coordinatorLayout$LayoutParams.bottomMargin);
                    iCombineMeasuredStates = View.combineMeasuredStates(i8, view322.getMeasuredState());
                    i12 = iMax322;
                }
            }
            i13 = i9 + 1;
            size3 = i6;
        }
        int i14 = iCombineMeasuredStates;
        setMeasuredDimension(View.resolveSizeAndState(i12, i, (-16777216) & i14), View.resolveSizeAndState(iMax2, i2, i14 << 16));
    }

    private WindowInsetsCompat dispatchApplyWindowInsetsToBehaviors(WindowInsetsCompat windowInsetsCompat) {
        CoordinatorLayout$Behavior behavior;
        if (windowInsetsCompat.isConsumed()) {
            return windowInsetsCompat;
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (ViewCompat.getFitsSystemWindows(childAt) && (behavior = ((CoordinatorLayout$LayoutParams) childAt.getLayoutParams()).getBehavior()) != null) {
                windowInsetsCompat = behavior.onApplyWindowInsets(this, childAt, windowInsetsCompat);
                if (windowInsetsCompat.isConsumed()) {
                    break;
                }
            }
        }
        return windowInsetsCompat;
    }

    public void onLayoutChild(@NonNull View view, int i) {
        CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams) view.getLayoutParams();
        if (coordinatorLayout$LayoutParams.checkAnchorChanged()) {
            throw new IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
        }
        if (coordinatorLayout$LayoutParams.mAnchorView != null) {
            layoutChildWithAnchor(view, coordinatorLayout$LayoutParams.mAnchorView, i);
        } else if (coordinatorLayout$LayoutParams.keyline >= 0) {
            layoutChildWithKeyline(view, coordinatorLayout$LayoutParams.keyline, i);
        } else {
            layoutChild(view, i);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        CoordinatorLayout$Behavior behavior;
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        int size = this.mDependencySortedChildren.size();
        for (int i5 = 0; i5 < size; i5++) {
            View view = this.mDependencySortedChildren.get(i5);
            if (view.getVisibility() != 8 && ((behavior = ((CoordinatorLayout$LayoutParams) view.getLayoutParams()).getBehavior()) == null || !behavior.onLayoutChild(this, view, layoutDirection))) {
                onLayoutChild(view, layoutDirection);
            }
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.mDrawStatusBarBackground || this.mStatusBarBackground == null) {
            return;
        }
        int systemWindowInsetTop = this.mLastInsets != null ? this.mLastInsets.getSystemWindowInsetTop() : 0;
        if (systemWindowInsetTop > 0) {
            this.mStatusBarBackground.setBounds(0, 0, getWidth(), systemWindowInsetTop);
            this.mStatusBarBackground.draw(canvas);
        }
    }

    @Override // android.view.View
    public void setFitsSystemWindows(boolean z) {
        super.setFitsSystemWindows(z);
        setupForInsets();
    }

    void recordLastChildRect(View view, Rect rect) {
        ((CoordinatorLayout$LayoutParams) view.getLayoutParams()).setLastChildRect(rect);
    }

    void getLastChildRect(View view, Rect rect) {
        rect.set(((CoordinatorLayout$LayoutParams) view.getLayoutParams()).getLastChildRect());
    }

    void getChildRect(View view, boolean z, Rect rect) {
        if (view.isLayoutRequested() || view.getVisibility() == 8) {
            rect.setEmpty();
        } else if (z) {
            getDescendantRect(view, rect);
        } else {
            rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    private void getDesiredAnchoredChildRectWithoutConstraints(View view, int i, Rect rect, Rect rect2, CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams, int i2, int i3) {
        int iWidth;
        int iHeight;
        int absoluteGravity = GravityCompat.getAbsoluteGravity(resolveAnchoredChildGravity(coordinatorLayout$LayoutParams.gravity), i);
        int absoluteGravity2 = GravityCompat.getAbsoluteGravity(resolveGravity(coordinatorLayout$LayoutParams.anchorGravity), i);
        int i4 = absoluteGravity & 7;
        int i5 = absoluteGravity & 112;
        int i6 = absoluteGravity2 & 7;
        int i7 = absoluteGravity2 & 112;
        if (i6 == 1) {
            iWidth = rect.left + (rect.width() / 2);
        } else if (i6 != 5) {
            iWidth = rect.left;
        } else {
            iWidth = rect.right;
        }
        if (i7 == 16) {
            iHeight = rect.top + (rect.height() / 2);
        } else if (i7 != 80) {
            iHeight = rect.top;
        } else {
            iHeight = rect.bottom;
        }
        if (i4 == 1) {
            iWidth -= i2 / 2;
        } else if (i4 != 5) {
            iWidth -= i2;
        }
        if (i5 == 16) {
            iHeight -= i3 / 2;
        } else if (i5 != 80) {
            iHeight -= i3;
        }
        rect2.set(iWidth, iHeight, i2 + iWidth, i3 + iHeight);
    }

    private void constrainChildRect(CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams, Rect rect, int i, int i2) {
        int width = getWidth();
        int height = getHeight();
        int iMax = Math.max(getPaddingLeft() + coordinatorLayout$LayoutParams.leftMargin, Math.min(rect.left, ((width - getPaddingRight()) - i) - coordinatorLayout$LayoutParams.rightMargin));
        int iMax2 = Math.max(getPaddingTop() + coordinatorLayout$LayoutParams.topMargin, Math.min(rect.top, ((height - getPaddingBottom()) - i2) - coordinatorLayout$LayoutParams.bottomMargin));
        rect.set(iMax, iMax2, i + iMax, i2 + iMax2);
    }

    void getDesiredAnchoredChildRect(View view, int i, Rect rect, Rect rect2) {
        CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams) view.getLayoutParams();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        getDesiredAnchoredChildRectWithoutConstraints(view, i, rect, rect2, coordinatorLayout$LayoutParams, measuredWidth, measuredHeight);
        constrainChildRect(coordinatorLayout$LayoutParams, rect2, measuredWidth, measuredHeight);
    }

    private void layoutChildWithAnchor(View view, View view2, int i) {
        Rect rectAcquireTempRect = acquireTempRect();
        Rect rectAcquireTempRect2 = acquireTempRect();
        try {
            getDescendantRect(view2, rectAcquireTempRect);
            getDesiredAnchoredChildRect(view, i, rectAcquireTempRect, rectAcquireTempRect2);
            view.layout(rectAcquireTempRect2.left, rectAcquireTempRect2.top, rectAcquireTempRect2.right, rectAcquireTempRect2.bottom);
        } finally {
            releaseTempRect(rectAcquireTempRect);
            releaseTempRect(rectAcquireTempRect2);
        }
    }

    private void layoutChildWithKeyline(View view, int i, int i2) {
        CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams) view.getLayoutParams();
        int absoluteGravity = GravityCompat.getAbsoluteGravity(resolveKeylineGravity(coordinatorLayout$LayoutParams.gravity), i2);
        int i3 = absoluteGravity & 7;
        int i4 = absoluteGravity & 112;
        int width = getWidth();
        int height = getHeight();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        if (i2 == 1) {
            i = width - i;
        }
        int keyline = getKeyline(i) - measuredWidth;
        int i5 = 0;
        if (i3 == 1) {
            keyline += measuredWidth / 2;
        } else if (i3 == 5) {
            keyline += measuredWidth;
        }
        if (i4 == 16) {
            i5 = 0 + (measuredHeight / 2);
        } else if (i4 == 80) {
            i5 = 0 + measuredHeight;
        }
        int iMax = Math.max(getPaddingLeft() + coordinatorLayout$LayoutParams.leftMargin, Math.min(keyline, ((width - getPaddingRight()) - measuredWidth) - coordinatorLayout$LayoutParams.rightMargin));
        int iMax2 = Math.max(getPaddingTop() + coordinatorLayout$LayoutParams.topMargin, Math.min(i5, ((height - getPaddingBottom()) - measuredHeight) - coordinatorLayout$LayoutParams.bottomMargin));
        view.layout(iMax, iMax2, measuredWidth + iMax, measuredHeight + iMax2);
    }

    private void layoutChild(View view, int i) {
        CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams) view.getLayoutParams();
        Rect rectAcquireTempRect = acquireTempRect();
        rectAcquireTempRect.set(getPaddingLeft() + coordinatorLayout$LayoutParams.leftMargin, getPaddingTop() + coordinatorLayout$LayoutParams.topMargin, (getWidth() - getPaddingRight()) - coordinatorLayout$LayoutParams.rightMargin, (getHeight() - getPaddingBottom()) - coordinatorLayout$LayoutParams.bottomMargin);
        if (this.mLastInsets != null && ViewCompat.getFitsSystemWindows(this) && !ViewCompat.getFitsSystemWindows(view)) {
            rectAcquireTempRect.left += this.mLastInsets.getSystemWindowInsetLeft();
            rectAcquireTempRect.top += this.mLastInsets.getSystemWindowInsetTop();
            rectAcquireTempRect.right -= this.mLastInsets.getSystemWindowInsetRight();
            rectAcquireTempRect.bottom -= this.mLastInsets.getSystemWindowInsetBottom();
        }
        Rect rectAcquireTempRect2 = acquireTempRect();
        GravityCompat.apply(resolveGravity(coordinatorLayout$LayoutParams.gravity), view.getMeasuredWidth(), view.getMeasuredHeight(), rectAcquireTempRect, rectAcquireTempRect2, i);
        view.layout(rectAcquireTempRect2.left, rectAcquireTempRect2.top, rectAcquireTempRect2.right, rectAcquireTempRect2.bottom);
        releaseTempRect(rectAcquireTempRect);
        releaseTempRect(rectAcquireTempRect2);
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams) view.getLayoutParams();
        if (coordinatorLayout$LayoutParams.mBehavior != null) {
            float scrimOpacity = coordinatorLayout$LayoutParams.mBehavior.getScrimOpacity(this, view);
            if (scrimOpacity > 0.0f) {
                if (this.mScrimPaint == null) {
                    this.mScrimPaint = new Paint();
                }
                this.mScrimPaint.setColor(coordinatorLayout$LayoutParams.mBehavior.getScrimColor(this, view));
                this.mScrimPaint.setAlpha(clamp(Math.round(255.0f * scrimOpacity), 0, 255));
                int iSave = canvas.save();
                if (view.isOpaque()) {
                    canvas.clipRect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom(), Region$Op.DIFFERENCE);
                }
                canvas.drawRect(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom(), this.mScrimPaint);
                canvas.restoreToCount(iSave);
            }
        }
        return super.drawChild(canvas, view, j);
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00ca  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    final void onChildViewsChanged(int i) {
        int i2;
        boolean zOnDependentViewChanged;
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        int size = this.mDependencySortedChildren.size();
        Rect rectAcquireTempRect = acquireTempRect();
        Rect rectAcquireTempRect2 = acquireTempRect();
        Rect rectAcquireTempRect3 = acquireTempRect();
        for (int i3 = 0; i3 < size; i3++) {
            View view = this.mDependencySortedChildren.get(i3);
            CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams) view.getLayoutParams();
            if (i != 0 || view.getVisibility() != 8) {
                for (int i4 = 0; i4 < i3; i4++) {
                    if (coordinatorLayout$LayoutParams.mAnchorDirectChild == this.mDependencySortedChildren.get(i4)) {
                        offsetChildToAnchor(view, layoutDirection);
                    }
                }
                getChildRect(view, true, rectAcquireTempRect2);
                if (coordinatorLayout$LayoutParams.insetEdge != 0 && !rectAcquireTempRect2.isEmpty()) {
                    int absoluteGravity = GravityCompat.getAbsoluteGravity(coordinatorLayout$LayoutParams.insetEdge, layoutDirection);
                    int i5 = absoluteGravity & 112;
                    if (i5 == 48) {
                        rectAcquireTempRect.top = Math.max(rectAcquireTempRect.top, rectAcquireTempRect2.bottom);
                    } else if (i5 == 80) {
                        rectAcquireTempRect.bottom = Math.max(rectAcquireTempRect.bottom, getHeight() - rectAcquireTempRect2.top);
                    }
                    int i6 = absoluteGravity & 7;
                    if (i6 == 3) {
                        rectAcquireTempRect.left = Math.max(rectAcquireTempRect.left, rectAcquireTempRect2.right);
                    } else if (i6 == 5) {
                        rectAcquireTempRect.right = Math.max(rectAcquireTempRect.right, getWidth() - rectAcquireTempRect2.left);
                    }
                }
                if (coordinatorLayout$LayoutParams.dodgeInsetEdges != 0 && view.getVisibility() == 0) {
                    offsetChildByInset(view, rectAcquireTempRect, layoutDirection);
                }
                if (i != 2) {
                    getLastChildRect(view, rectAcquireTempRect3);
                    if (!rectAcquireTempRect3.equals(rectAcquireTempRect2)) {
                        recordLastChildRect(view, rectAcquireTempRect2);
                        for (i2 = i3 + 1; i2 < size; i2++) {
                            View view2 = this.mDependencySortedChildren.get(i2);
                            CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams2 = (CoordinatorLayout$LayoutParams) view2.getLayoutParams();
                            CoordinatorLayout$Behavior behavior = coordinatorLayout$LayoutParams2.getBehavior();
                            if (behavior != null && behavior.layoutDependsOn(this, view2, view)) {
                                if (i == 0 && coordinatorLayout$LayoutParams2.getChangedAfterNestedScroll()) {
                                    coordinatorLayout$LayoutParams2.resetChangedAfterNestedScroll();
                                } else {
                                    if (i == 2) {
                                        behavior.onDependentViewRemoved(this, view2, view);
                                        zOnDependentViewChanged = true;
                                    } else {
                                        zOnDependentViewChanged = behavior.onDependentViewChanged(this, view2, view);
                                    }
                                    if (i == 1) {
                                        coordinatorLayout$LayoutParams2.setChangedAfterNestedScroll(zOnDependentViewChanged);
                                    }
                                }
                            }
                        }
                    }
                } else {
                    while (i2 < size) {
                    }
                }
            }
        }
        releaseTempRect(rectAcquireTempRect);
        releaseTempRect(rectAcquireTempRect2);
        releaseTempRect(rectAcquireTempRect3);
    }

    private void offsetChildByInset(View view, Rect rect, int i) {
        boolean z;
        boolean z2;
        int width;
        int i2;
        int height;
        int i3;
        if (ViewCompat.isLaidOut(view) && view.getWidth() > 0 && view.getHeight() > 0) {
            CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams) view.getLayoutParams();
            CoordinatorLayout$Behavior behavior = coordinatorLayout$LayoutParams.getBehavior();
            Rect rectAcquireTempRect = acquireTempRect();
            Rect rectAcquireTempRect2 = acquireTempRect();
            rectAcquireTempRect2.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            if (behavior != null && behavior.getInsetDodgeRect(this, view, rectAcquireTempRect)) {
                if (!rectAcquireTempRect2.contains(rectAcquireTempRect)) {
                    throw new IllegalArgumentException("Rect should be within the child's bounds. Rect:" + rectAcquireTempRect.toShortString() + " | Bounds:" + rectAcquireTempRect2.toShortString());
                }
            } else {
                rectAcquireTempRect.set(rectAcquireTempRect2);
            }
            releaseTempRect(rectAcquireTempRect2);
            if (rectAcquireTempRect.isEmpty()) {
                releaseTempRect(rectAcquireTempRect);
                return;
            }
            int absoluteGravity = GravityCompat.getAbsoluteGravity(coordinatorLayout$LayoutParams.dodgeInsetEdges, i);
            if ((absoluteGravity & 48) != 48 || (i3 = (rectAcquireTempRect.top - coordinatorLayout$LayoutParams.topMargin) - coordinatorLayout$LayoutParams.mInsetOffsetY) >= rect.top) {
                z = false;
            } else {
                setInsetOffsetY(view, rect.top - i3);
                z = true;
            }
            if ((absoluteGravity & 80) == 80 && (height = ((getHeight() - rectAcquireTempRect.bottom) - coordinatorLayout$LayoutParams.bottomMargin) + coordinatorLayout$LayoutParams.mInsetOffsetY) < rect.bottom) {
                setInsetOffsetY(view, height - rect.bottom);
                z = true;
            }
            if (!z) {
                setInsetOffsetY(view, 0);
            }
            if ((absoluteGravity & 3) != 3 || (i2 = (rectAcquireTempRect.left - coordinatorLayout$LayoutParams.leftMargin) - coordinatorLayout$LayoutParams.mInsetOffsetX) >= rect.left) {
                z2 = false;
            } else {
                setInsetOffsetX(view, rect.left - i2);
                z2 = true;
            }
            if ((absoluteGravity & 5) == 5 && (width = ((getWidth() - rectAcquireTempRect.right) - coordinatorLayout$LayoutParams.rightMargin) + coordinatorLayout$LayoutParams.mInsetOffsetX) < rect.right) {
                setInsetOffsetX(view, width - rect.right);
                z2 = true;
            }
            if (!z2) {
                setInsetOffsetX(view, 0);
            }
            releaseTempRect(rectAcquireTempRect);
        }
    }

    private void setInsetOffsetX(View view, int i) {
        CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams) view.getLayoutParams();
        if (coordinatorLayout$LayoutParams.mInsetOffsetX != i) {
            ViewCompat.offsetLeftAndRight(view, i - coordinatorLayout$LayoutParams.mInsetOffsetX);
            coordinatorLayout$LayoutParams.mInsetOffsetX = i;
        }
    }

    private void setInsetOffsetY(View view, int i) {
        CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams) view.getLayoutParams();
        if (coordinatorLayout$LayoutParams.mInsetOffsetY != i) {
            ViewCompat.offsetTopAndBottom(view, i - coordinatorLayout$LayoutParams.mInsetOffsetY);
            coordinatorLayout$LayoutParams.mInsetOffsetY = i;
        }
    }

    public void dispatchDependentViewsChanged(@NonNull View view) {
        List incomingEdges = this.mChildDag.getIncomingEdges(view);
        if (incomingEdges == null || incomingEdges.isEmpty()) {
            return;
        }
        for (int i = 0; i < incomingEdges.size(); i++) {
            View view2 = (View) incomingEdges.get(i);
            CoordinatorLayout$Behavior behavior = ((CoordinatorLayout$LayoutParams) view2.getLayoutParams()).getBehavior();
            if (behavior != null) {
                behavior.onDependentViewChanged(this, view2, view);
            }
        }
    }

    @NonNull
    public List<View> getDependencies(@NonNull View view) {
        List<View> outgoingEdges = this.mChildDag.getOutgoingEdges(view);
        this.mTempDependenciesList.clear();
        if (outgoingEdges != null) {
            this.mTempDependenciesList.addAll(outgoingEdges);
        }
        return this.mTempDependenciesList;
    }

    @NonNull
    public List<View> getDependents(@NonNull View view) {
        List incomingEdges = this.mChildDag.getIncomingEdges(view);
        this.mTempDependenciesList.clear();
        if (incomingEdges != null) {
            this.mTempDependenciesList.addAll(incomingEdges);
        }
        return this.mTempDependenciesList;
    }

    @VisibleForTesting
    final List<View> getDependencySortedChildren() {
        prepareChildren();
        return Collections.unmodifiableList(this.mDependencySortedChildren);
    }

    void ensurePreDrawListener() {
        int childCount = getChildCount();
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= childCount) {
                break;
            }
            if (hasDependencies(getChildAt(i))) {
                z = true;
                break;
            }
            i++;
        }
        if (z != this.mNeedsPreDrawListener) {
            if (z) {
                addPreDrawListener();
            } else {
                removePreDrawListener();
            }
        }
    }

    private boolean hasDependencies(View view) {
        return this.mChildDag.hasOutgoingEdges(view);
    }

    void addPreDrawListener() {
        if (this.mIsAttachedToWindow) {
            if (this.mOnPreDrawListener == null) {
                this.mOnPreDrawListener = new CoordinatorLayout$OnPreDrawListener(this);
            }
            getViewTreeObserver().addOnPreDrawListener(this.mOnPreDrawListener);
        }
        this.mNeedsPreDrawListener = true;
    }

    void removePreDrawListener() {
        if (this.mIsAttachedToWindow && this.mOnPreDrawListener != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.mOnPreDrawListener);
        }
        this.mNeedsPreDrawListener = false;
    }

    void offsetChildToAnchor(View view, int i) {
        CoordinatorLayout$Behavior behavior;
        CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams) view.getLayoutParams();
        if (coordinatorLayout$LayoutParams.mAnchorView != null) {
            Rect rectAcquireTempRect = acquireTempRect();
            Rect rectAcquireTempRect2 = acquireTempRect();
            Rect rectAcquireTempRect3 = acquireTempRect();
            getDescendantRect(coordinatorLayout$LayoutParams.mAnchorView, rectAcquireTempRect);
            getChildRect(view, false, rectAcquireTempRect2);
            int measuredWidth = view.getMeasuredWidth();
            int measuredHeight = view.getMeasuredHeight();
            getDesiredAnchoredChildRectWithoutConstraints(view, i, rectAcquireTempRect, rectAcquireTempRect3, coordinatorLayout$LayoutParams, measuredWidth, measuredHeight);
            boolean z = (rectAcquireTempRect3.left == rectAcquireTempRect2.left && rectAcquireTempRect3.top == rectAcquireTempRect2.top) ? false : true;
            constrainChildRect(coordinatorLayout$LayoutParams, rectAcquireTempRect3, measuredWidth, measuredHeight);
            int i2 = rectAcquireTempRect3.left - rectAcquireTempRect2.left;
            int i3 = rectAcquireTempRect3.top - rectAcquireTempRect2.top;
            if (i2 != 0) {
                ViewCompat.offsetLeftAndRight(view, i2);
            }
            if (i3 != 0) {
                ViewCompat.offsetTopAndBottom(view, i3);
            }
            if (z && (behavior = coordinatorLayout$LayoutParams.getBehavior()) != null) {
                behavior.onDependentViewChanged(this, view, coordinatorLayout$LayoutParams.mAnchorView);
            }
            releaseTempRect(rectAcquireTempRect);
            releaseTempRect(rectAcquireTempRect2);
            releaseTempRect(rectAcquireTempRect3);
        }
    }

    public boolean isPointInChildBounds(@NonNull View view, int i, int i2) {
        Rect rectAcquireTempRect = acquireTempRect();
        getDescendantRect(view, rectAcquireTempRect);
        try {
            return rectAcquireTempRect.contains(i, i2);
        } finally {
            releaseTempRect(rectAcquireTempRect);
        }
    }

    public boolean doViewsOverlap(@NonNull View view, @NonNull View view2) {
        boolean z = false;
        if (view.getVisibility() != 0 || view2.getVisibility() != 0) {
            return false;
        }
        Rect rectAcquireTempRect = acquireTempRect();
        getChildRect(view, view.getParent() != this, rectAcquireTempRect);
        Rect rectAcquireTempRect2 = acquireTempRect();
        getChildRect(view2, view2.getParent() != this, rectAcquireTempRect2);
        try {
            if (rectAcquireTempRect.left <= rectAcquireTempRect2.right && rectAcquireTempRect.top <= rectAcquireTempRect2.bottom && rectAcquireTempRect.right >= rectAcquireTempRect2.left) {
                if (rectAcquireTempRect.bottom >= rectAcquireTempRect2.top) {
                    z = true;
                }
            }
            return z;
        } finally {
            releaseTempRect(rectAcquireTempRect);
            releaseTempRect(rectAcquireTempRect2);
        }
    }

    @Override // android.view.ViewGroup
    public CoordinatorLayout$LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new CoordinatorLayout$LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected CoordinatorLayout$LayoutParams generateLayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        if (viewGroup$LayoutParams instanceof CoordinatorLayout$LayoutParams) {
            return new CoordinatorLayout$LayoutParams((CoordinatorLayout$LayoutParams) viewGroup$LayoutParams);
        }
        if (viewGroup$LayoutParams instanceof ViewGroup$MarginLayoutParams) {
            return new CoordinatorLayout$LayoutParams((ViewGroup$MarginLayoutParams) viewGroup$LayoutParams);
        }
        return new CoordinatorLayout$LayoutParams(viewGroup$LayoutParams);
    }

    @Override // android.view.ViewGroup
    protected CoordinatorLayout$LayoutParams generateDefaultLayoutParams() {
        return new CoordinatorLayout$LayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return (viewGroup$LayoutParams instanceof CoordinatorLayout$LayoutParams) && super.checkLayoutParams(viewGroup$LayoutParams);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public boolean onStartNestedScroll(View view, View view2, int i) {
        return onStartNestedScroll(view, view2, i, 0);
    }

    @Override // android.support.v4.view.NestedScrollingParent2
    public boolean onStartNestedScroll(View view, View view2, int i, int i2) {
        int childCount = getChildCount();
        boolean z = false;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams) childAt.getLayoutParams();
                CoordinatorLayout$Behavior behavior = coordinatorLayout$LayoutParams.getBehavior();
                if (behavior != null) {
                    boolean zOnStartNestedScroll = behavior.onStartNestedScroll(this, childAt, view, view2, i, i2);
                    coordinatorLayout$LayoutParams.setNestedScrollAccepted(i2, zOnStartNestedScroll);
                    z |= zOnStartNestedScroll;
                } else {
                    coordinatorLayout$LayoutParams.setNestedScrollAccepted(i2, false);
                }
            }
        }
        return z;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public void onNestedScrollAccepted(View view, View view2, int i) {
        onNestedScrollAccepted(view, view2, i, 0);
    }

    @Override // android.support.v4.view.NestedScrollingParent2
    public void onNestedScrollAccepted(View view, View view2, int i, int i2) {
        CoordinatorLayout$Behavior behavior;
        this.mNestedScrollingParentHelper.onNestedScrollAccepted(view, view2, i, i2);
        this.mNestedScrollingTarget = view2;
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams) childAt.getLayoutParams();
            if (coordinatorLayout$LayoutParams.isNestedScrollAccepted(i2) && (behavior = coordinatorLayout$LayoutParams.getBehavior()) != null) {
                behavior.onNestedScrollAccepted(this, childAt, view, view2, i, i2);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public void onStopNestedScroll(View view) {
        onStopNestedScroll(view, 0);
    }

    @Override // android.support.v4.view.NestedScrollingParent2
    public void onStopNestedScroll(View view, int i) {
        this.mNestedScrollingParentHelper.onStopNestedScroll(view, i);
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams) childAt.getLayoutParams();
            if (coordinatorLayout$LayoutParams.isNestedScrollAccepted(i)) {
                CoordinatorLayout$Behavior behavior = coordinatorLayout$LayoutParams.getBehavior();
                if (behavior != null) {
                    behavior.onStopNestedScroll(this, childAt, view, i);
                }
                coordinatorLayout$LayoutParams.resetNestedScroll(i);
                coordinatorLayout$LayoutParams.resetChangedAfterNestedScroll();
            }
        }
        this.mNestedScrollingTarget = null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        onNestedScroll(view, i, i2, i3, i4, 0);
    }

    @Override // android.support.v4.view.NestedScrollingParent2
    public void onNestedScroll(View view, int i, int i2, int i3, int i4, int i5) {
        CoordinatorLayout$Behavior behavior;
        int childCount = getChildCount();
        boolean z = false;
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8) {
                CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams) childAt.getLayoutParams();
                if (coordinatorLayout$LayoutParams.isNestedScrollAccepted(i5) && (behavior = coordinatorLayout$LayoutParams.getBehavior()) != null) {
                    behavior.onNestedScroll(this, childAt, view, i, i2, i3, i4, i5);
                    z = true;
                }
            }
        }
        if (z) {
            onChildViewsChanged(1);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        onNestedPreScroll(view, i, i2, iArr, 0);
    }

    @Override // android.support.v4.view.NestedScrollingParent2
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr, int i3) {
        CoordinatorLayout$Behavior behavior;
        int iMin;
        int iMin2;
        int childCount = getChildCount();
        boolean z = false;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8) {
                CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams) childAt.getLayoutParams();
                if (coordinatorLayout$LayoutParams.isNestedScrollAccepted(i3) && (behavior = coordinatorLayout$LayoutParams.getBehavior()) != null) {
                    int[] iArr2 = this.mTempIntPair;
                    this.mTempIntPair[1] = 0;
                    iArr2[0] = 0;
                    behavior.onNestedPreScroll(this, childAt, view, i, i2, this.mTempIntPair, i3);
                    if (i > 0) {
                        iMin = Math.max(i4, this.mTempIntPair[0]);
                    } else {
                        iMin = Math.min(i4, this.mTempIntPair[0]);
                    }
                    if (i2 > 0) {
                        iMin2 = Math.max(i5, this.mTempIntPair[1]);
                    } else {
                        iMin2 = Math.min(i5, this.mTempIntPair[1]);
                    }
                    i4 = iMin;
                    i5 = iMin2;
                    z = true;
                }
            }
        }
        iArr[0] = i4;
        iArr[1] = i5;
        if (z) {
            onChildViewsChanged(1);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        CoordinatorLayout$Behavior behavior;
        int childCount = getChildCount();
        boolean zOnNestedFling = false;
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() != 8) {
                CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams) childAt.getLayoutParams();
                if (coordinatorLayout$LayoutParams.isNestedScrollAccepted(0) && (behavior = coordinatorLayout$LayoutParams.getBehavior()) != null) {
                    zOnNestedFling |= behavior.onNestedFling(this, childAt, view, f, f2, z);
                }
            }
        }
        if (zOnNestedFling) {
            onChildViewsChanged(1);
        }
        return zOnNestedFling;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public boolean onNestedPreFling(View view, float f, float f2) {
        CoordinatorLayout$Behavior behavior;
        int childCount = getChildCount();
        boolean zOnNestedPreFling = false;
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() != 8) {
                CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams) childAt.getLayoutParams();
                if (coordinatorLayout$LayoutParams.isNestedScrollAccepted(0) && (behavior = coordinatorLayout$LayoutParams.getBehavior()) != null) {
                    zOnNestedPreFling |= behavior.onNestedPreFling(this, childAt, view, f, f2);
                }
            }
        }
        return zOnNestedPreFling;
    }

    @Override // android.view.ViewGroup, android.support.v4.view.NestedScrollingParent
    public int getNestedScrollAxes() {
        return this.mNestedScrollingParentHelper.getNestedScrollAxes();
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof CoordinatorLayout$SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        CoordinatorLayout$SavedState coordinatorLayout$SavedState = (CoordinatorLayout$SavedState) parcelable;
        super.onRestoreInstanceState(coordinatorLayout$SavedState.getSuperState());
        SparseArray<Parcelable> sparseArray = coordinatorLayout$SavedState.behaviorStates;
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int id = childAt.getId();
            CoordinatorLayout$Behavior behavior = getResolvedLayoutParams(childAt).getBehavior();
            if (id != -1 && behavior != null && (parcelable2 = sparseArray.get(id)) != null) {
                behavior.onRestoreInstanceState(this, childAt, parcelable2);
            }
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState;
        CoordinatorLayout$SavedState coordinatorLayout$SavedState = new CoordinatorLayout$SavedState(super.onSaveInstanceState());
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int id = childAt.getId();
            CoordinatorLayout$Behavior behavior = ((CoordinatorLayout$LayoutParams) childAt.getLayoutParams()).getBehavior();
            if (id != -1 && behavior != null && (parcelableOnSaveInstanceState = behavior.onSaveInstanceState(this, childAt)) != null) {
                sparseArray.append(id, parcelableOnSaveInstanceState);
            }
        }
        coordinatorLayout$SavedState.behaviorStates = sparseArray;
        return coordinatorLayout$SavedState;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        CoordinatorLayout$Behavior behavior = ((CoordinatorLayout$LayoutParams) view.getLayoutParams()).getBehavior();
        if (behavior == null || !behavior.onRequestChildRectangleOnScreen(this, view, rect, z)) {
            return super.requestChildRectangleOnScreen(view, rect, z);
        }
        return true;
    }

    private void setupForInsets() {
        if (Build$VERSION.SDK_INT < 21) {
            return;
        }
        if (ViewCompat.getFitsSystemWindows(this)) {
            if (this.mApplyWindowInsetsListener == null) {
                this.mApplyWindowInsetsListener = new CoordinatorLayout$1(this);
            }
            ViewCompat.setOnApplyWindowInsetsListener(this, this.mApplyWindowInsetsListener);
            setSystemUiVisibility(1280);
            return;
        }
        ViewCompat.setOnApplyWindowInsetsListener(this, null);
    }
}
