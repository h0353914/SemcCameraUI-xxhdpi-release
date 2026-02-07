package android.support.v7.widget;

import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build$VERSION;
import android.os.Parcelable;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.support.v4.view.NestedScrollingParent;
import android.support.v4.view.NestedScrollingParentHelper;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R$attr;
import android.support.v7.appcompat.R$id;
import android.support.v7.view.menu.MenuPresenter$Callback;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup$LayoutParams;
import android.view.ViewPropertyAnimator;
import android.view.Window$Callback;
import android.widget.OverScroller;

/* JADX INFO: loaded from: classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
public class ActionBarOverlayLayout extends ViewGroup implements DecorContentParent, NestedScrollingParent {
    private static final int ACTION_BAR_ANIMATE_DELAY = 600;
    static final int[] ATTRS = {R$attr.actionBarSize, 16842841};
    private static final String TAG = "ActionBarOverlayLayout";
    private int mActionBarHeight;
    ActionBarContainer mActionBarTop;
    private ActionBarOverlayLayout$ActionBarVisibilityCallback mActionBarVisibilityCallback;
    private final Runnable mAddActionBarHideOffset;
    boolean mAnimatingForFling;
    private final Rect mBaseContentInsets;
    private final Rect mBaseInnerInsets;
    private ContentFrameLayout mContent;
    private final Rect mContentInsets;
    ViewPropertyAnimator mCurrentActionBarTopAnimator;
    private DecorToolbar mDecorToolbar;
    private OverScroller mFlingEstimator;
    private boolean mHasNonEmbeddedTabs;
    private boolean mHideOnContentScroll;
    private int mHideOnContentScrollReference;
    private boolean mIgnoreWindowContentOverlay;
    private final Rect mInnerInsets;
    private final Rect mLastBaseContentInsets;
    private final Rect mLastBaseInnerInsets;
    private final Rect mLastInnerInsets;
    private int mLastSystemUiVisibility;
    private boolean mOverlayMode;
    private final NestedScrollingParentHelper mParentHelper;
    private final Runnable mRemoveActionBarHideOffset;
    final AnimatorListenerAdapter mTopAnimatorListener;
    private Drawable mWindowContentOverlay;
    private int mWindowVisibility;

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public boolean onNestedPreFling(View view, float f, float f2) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
    }

    public void setShowingForActionMode(boolean z) {
    }

    @Override // android.support.v7.widget.DecorContentParent
    public void setUiOptions(int i) {
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

    public ActionBarOverlayLayout(Context context) {
        this(context, null);
    }

    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mWindowVisibility = 0;
        this.mBaseContentInsets = new Rect();
        this.mLastBaseContentInsets = new Rect();
        this.mContentInsets = new Rect();
        this.mBaseInnerInsets = new Rect();
        this.mLastBaseInnerInsets = new Rect();
        this.mInnerInsets = new Rect();
        this.mLastInnerInsets = new Rect();
        this.mTopAnimatorListener = new ActionBarOverlayLayout$1(this);
        this.mRemoveActionBarHideOffset = new ActionBarOverlayLayout$2(this);
        this.mAddActionBarHideOffset = new ActionBarOverlayLayout$3(this);
        init(context);
        this.mParentHelper = new NestedScrollingParentHelper(this);
    }

    private void init(Context context) {
        TypedArray typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(ATTRS);
        this.mActionBarHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.mWindowContentOverlay = typedArrayObtainStyledAttributes.getDrawable(1);
        setWillNotDraw(this.mWindowContentOverlay == null);
        typedArrayObtainStyledAttributes.recycle();
        this.mIgnoreWindowContentOverlay = context.getApplicationInfo().targetSdkVersion < 19;
        this.mFlingEstimator = new OverScroller(context);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        haltActionBarHideOffsetAnimations();
    }

    public void setActionBarVisibilityCallback(ActionBarOverlayLayout$ActionBarVisibilityCallback actionBarOverlayLayout$ActionBarVisibilityCallback) {
        this.mActionBarVisibilityCallback = actionBarOverlayLayout$ActionBarVisibilityCallback;
        if (getWindowToken() != null) {
            this.mActionBarVisibilityCallback.onWindowVisibilityChanged(this.mWindowVisibility);
            if (this.mLastSystemUiVisibility != 0) {
                onWindowSystemUiVisibilityChanged(this.mLastSystemUiVisibility);
                ViewCompat.requestApplyInsets(this);
            }
        }
    }

    public void setOverlayMode(boolean z) {
        this.mOverlayMode = z;
        this.mIgnoreWindowContentOverlay = z && getContext().getApplicationInfo().targetSdkVersion < 19;
    }

    public boolean isInOverlayMode() {
        return this.mOverlayMode;
    }

    public void setHasNonEmbeddedTabs(boolean z) {
        this.mHasNonEmbeddedTabs = z;
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        init(getContext());
        ViewCompat.requestApplyInsets(this);
    }

    @Override // android.view.View
    public void onWindowSystemUiVisibilityChanged(int i) {
        if (Build$VERSION.SDK_INT >= 16) {
            super.onWindowSystemUiVisibilityChanged(i);
        }
        pullChildren();
        int i2 = this.mLastSystemUiVisibility ^ i;
        this.mLastSystemUiVisibility = i;
        boolean z = (i & 4) == 0;
        boolean z2 = (i & 256) != 0;
        if (this.mActionBarVisibilityCallback != null) {
            this.mActionBarVisibilityCallback.enableContentAnimations(!z2);
            if (z || !z2) {
                this.mActionBarVisibilityCallback.showForSystem();
            } else {
                this.mActionBarVisibilityCallback.hideForSystem();
            }
        }
        if ((i2 & 256) == 0 || this.mActionBarVisibilityCallback == null) {
            return;
        }
        ViewCompat.requestApplyInsets(this);
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        this.mWindowVisibility = i;
        if (this.mActionBarVisibilityCallback != null) {
            this.mActionBarVisibilityCallback.onWindowVisibilityChanged(i);
        }
    }

    private boolean applyInsets(View view, Rect rect, boolean z, boolean z2, boolean z3, boolean z4) {
        boolean z5;
        ActionBarOverlayLayout$LayoutParams actionBarOverlayLayout$LayoutParams = (ActionBarOverlayLayout$LayoutParams) view.getLayoutParams();
        if (!z || actionBarOverlayLayout$LayoutParams.leftMargin == rect.left) {
            z5 = false;
        } else {
            actionBarOverlayLayout$LayoutParams.leftMargin = rect.left;
            z5 = true;
        }
        if (z2 && actionBarOverlayLayout$LayoutParams.topMargin != rect.top) {
            actionBarOverlayLayout$LayoutParams.topMargin = rect.top;
            z5 = true;
        }
        if (z4 && actionBarOverlayLayout$LayoutParams.rightMargin != rect.right) {
            actionBarOverlayLayout$LayoutParams.rightMargin = rect.right;
            z5 = true;
        }
        if (!z3 || actionBarOverlayLayout$LayoutParams.bottomMargin == rect.bottom) {
            return z5;
        }
        actionBarOverlayLayout$LayoutParams.bottomMargin = rect.bottom;
        return true;
    }

    @Override // android.view.View
    protected boolean fitSystemWindows(Rect rect) {
        pullChildren();
        int windowSystemUiVisibility = ViewCompat.getWindowSystemUiVisibility(this) & 256;
        boolean zApplyInsets = applyInsets(this.mActionBarTop, rect, true, true, false, true);
        this.mBaseInnerInsets.set(rect);
        ViewUtils.computeFitSystemWindows(this, this.mBaseInnerInsets, this.mBaseContentInsets);
        if (!this.mLastBaseInnerInsets.equals(this.mBaseInnerInsets)) {
            this.mLastBaseInnerInsets.set(this.mBaseInnerInsets);
            zApplyInsets = true;
        }
        if (!this.mLastBaseContentInsets.equals(this.mBaseContentInsets)) {
            this.mLastBaseContentInsets.set(this.mBaseContentInsets);
            zApplyInsets = true;
        }
        if (zApplyInsets) {
            requestLayout();
        }
        return true;
    }

    @Override // android.view.ViewGroup
    protected ActionBarOverlayLayout$LayoutParams generateDefaultLayoutParams() {
        return new ActionBarOverlayLayout$LayoutParams(-1, -1);
    }

    @Override // android.view.ViewGroup
    public ActionBarOverlayLayout$LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ActionBarOverlayLayout$LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup$LayoutParams generateLayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return new ActionBarOverlayLayout$LayoutParams(viewGroup$LayoutParams);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return viewGroup$LayoutParams instanceof ActionBarOverlayLayout$LayoutParams;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int measuredHeight;
        pullChildren();
        measureChildWithMargins(this.mActionBarTop, i, 0, i2, 0);
        ActionBarOverlayLayout$LayoutParams actionBarOverlayLayout$LayoutParams = (ActionBarOverlayLayout$LayoutParams) this.mActionBarTop.getLayoutParams();
        int iMax = Math.max(0, this.mActionBarTop.getMeasuredWidth() + actionBarOverlayLayout$LayoutParams.leftMargin + actionBarOverlayLayout$LayoutParams.rightMargin);
        int iMax2 = Math.max(0, this.mActionBarTop.getMeasuredHeight() + actionBarOverlayLayout$LayoutParams.topMargin + actionBarOverlayLayout$LayoutParams.bottomMargin);
        int iCombineMeasuredStates = View.combineMeasuredStates(0, this.mActionBarTop.getMeasuredState());
        boolean z = (ViewCompat.getWindowSystemUiVisibility(this) & 256) != 0;
        if (z) {
            measuredHeight = this.mActionBarHeight;
            if (this.mHasNonEmbeddedTabs && this.mActionBarTop.getTabContainer() != null) {
                measuredHeight += this.mActionBarHeight;
            }
        } else {
            measuredHeight = this.mActionBarTop.getVisibility() != 8 ? this.mActionBarTop.getMeasuredHeight() : 0;
        }
        this.mContentInsets.set(this.mBaseContentInsets);
        this.mInnerInsets.set(this.mBaseInnerInsets);
        if (!this.mOverlayMode && !z) {
            this.mContentInsets.top += measuredHeight;
            this.mContentInsets.bottom += 0;
        } else {
            this.mInnerInsets.top += measuredHeight;
            this.mInnerInsets.bottom += 0;
        }
        applyInsets(this.mContent, this.mContentInsets, true, true, true, true);
        if (!this.mLastInnerInsets.equals(this.mInnerInsets)) {
            this.mLastInnerInsets.set(this.mInnerInsets);
            this.mContent.dispatchFitSystemWindows(this.mInnerInsets);
        }
        measureChildWithMargins(this.mContent, i, 0, i2, 0);
        ActionBarOverlayLayout$LayoutParams actionBarOverlayLayout$LayoutParams2 = (ActionBarOverlayLayout$LayoutParams) this.mContent.getLayoutParams();
        int iMax3 = Math.max(iMax, this.mContent.getMeasuredWidth() + actionBarOverlayLayout$LayoutParams2.leftMargin + actionBarOverlayLayout$LayoutParams2.rightMargin);
        int iMax4 = Math.max(iMax2, this.mContent.getMeasuredHeight() + actionBarOverlayLayout$LayoutParams2.topMargin + actionBarOverlayLayout$LayoutParams2.bottomMargin);
        int iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates, this.mContent.getMeasuredState());
        setMeasuredDimension(View.resolveSizeAndState(Math.max(iMax3 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i, iCombineMeasuredStates2), View.resolveSizeAndState(Math.max(iMax4 + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i2, iCombineMeasuredStates2 << 16));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        getPaddingRight();
        int paddingTop = getPaddingTop();
        getPaddingBottom();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                ActionBarOverlayLayout$LayoutParams actionBarOverlayLayout$LayoutParams = (ActionBarOverlayLayout$LayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i6 = actionBarOverlayLayout$LayoutParams.leftMargin + paddingLeft;
                int i7 = actionBarOverlayLayout$LayoutParams.topMargin + paddingTop;
                childAt.layout(i6, i7, measuredWidth + i6, measuredHeight + i7);
            }
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.mWindowContentOverlay == null || this.mIgnoreWindowContentOverlay) {
            return;
        }
        int bottom = this.mActionBarTop.getVisibility() == 0 ? (int) (this.mActionBarTop.getBottom() + this.mActionBarTop.getTranslationY() + 0.5f) : 0;
        this.mWindowContentOverlay.setBounds(0, bottom, getWidth(), this.mWindowContentOverlay.getIntrinsicHeight() + bottom);
        this.mWindowContentOverlay.draw(canvas);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public boolean onStartNestedScroll(View view, View view2, int i) {
        if ((i & 2) == 0 || this.mActionBarTop.getVisibility() != 0) {
            return false;
        }
        return this.mHideOnContentScroll;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public void onNestedScrollAccepted(View view, View view2, int i) {
        this.mParentHelper.onNestedScrollAccepted(view, view2, i);
        this.mHideOnContentScrollReference = getActionBarHideOffset();
        haltActionBarHideOffsetAnimations();
        if (this.mActionBarVisibilityCallback != null) {
            this.mActionBarVisibilityCallback.onContentScrollStarted();
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        this.mHideOnContentScrollReference += i2;
        setActionBarHideOffset(this.mHideOnContentScrollReference);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public void onStopNestedScroll(View view) {
        if (this.mHideOnContentScroll && !this.mAnimatingForFling) {
            if (this.mHideOnContentScrollReference <= this.mActionBarTop.getHeight()) {
                postRemoveActionBarHideOffset();
            } else {
                postAddActionBarHideOffset();
            }
        }
        if (this.mActionBarVisibilityCallback != null) {
            this.mActionBarVisibilityCallback.onContentScrollStopped();
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        if (!this.mHideOnContentScroll || !z) {
            return false;
        }
        if (shouldHideActionBarOnFling(f, f2)) {
            addActionBarHideOffset();
        } else {
            removeActionBarHideOffset();
        }
        this.mAnimatingForFling = true;
        return true;
    }

    @Override // android.view.ViewGroup, android.support.v4.view.NestedScrollingParent
    public int getNestedScrollAxes() {
        return this.mParentHelper.getNestedScrollAxes();
    }

    void pullChildren() {
        if (this.mContent == null) {
            this.mContent = (ContentFrameLayout) findViewById(R$id.action_bar_activity_content);
            this.mActionBarTop = (ActionBarContainer) findViewById(R$id.action_bar_container);
            this.mDecorToolbar = getDecorToolbar(findViewById(R$id.action_bar));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private DecorToolbar getDecorToolbar(View view) {
        if (view instanceof DecorToolbar) {
            return (DecorToolbar) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getWrapper();
        }
        throw new IllegalStateException("Can't make a decor toolbar out of " + view.getClass().getSimpleName());
    }

    public void setHideOnContentScrollEnabled(boolean z) {
        if (z != this.mHideOnContentScroll) {
            this.mHideOnContentScroll = z;
            if (z) {
                return;
            }
            haltActionBarHideOffsetAnimations();
            setActionBarHideOffset(0);
        }
    }

    public boolean isHideOnContentScrollEnabled() {
        return this.mHideOnContentScroll;
    }

    public int getActionBarHideOffset() {
        if (this.mActionBarTop != null) {
            return -((int) this.mActionBarTop.getTranslationY());
        }
        return 0;
    }

    public void setActionBarHideOffset(int i) {
        haltActionBarHideOffsetAnimations();
        this.mActionBarTop.setTranslationY(-Math.max(0, Math.min(i, this.mActionBarTop.getHeight())));
    }

    void haltActionBarHideOffsetAnimations() {
        removeCallbacks(this.mRemoveActionBarHideOffset);
        removeCallbacks(this.mAddActionBarHideOffset);
        if (this.mCurrentActionBarTopAnimator != null) {
            this.mCurrentActionBarTopAnimator.cancel();
        }
    }

    private void postRemoveActionBarHideOffset() {
        haltActionBarHideOffsetAnimations();
        postDelayed(this.mRemoveActionBarHideOffset, 600L);
    }

    private void postAddActionBarHideOffset() {
        haltActionBarHideOffsetAnimations();
        postDelayed(this.mAddActionBarHideOffset, 600L);
    }

    private void removeActionBarHideOffset() {
        haltActionBarHideOffsetAnimations();
        this.mRemoveActionBarHideOffset.run();
    }

    private void addActionBarHideOffset() {
        haltActionBarHideOffsetAnimations();
        this.mAddActionBarHideOffset.run();
    }

    private boolean shouldHideActionBarOnFling(float f, float f2) {
        this.mFlingEstimator.fling(0, 0, 0, (int) f2, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE);
        return this.mFlingEstimator.getFinalY() > this.mActionBarTop.getHeight();
    }

    @Override // android.support.v7.widget.DecorContentParent
    public void setWindowCallback(Window$Callback window$Callback) {
        pullChildren();
        this.mDecorToolbar.setWindowCallback(window$Callback);
    }

    @Override // android.support.v7.widget.DecorContentParent
    public void setWindowTitle(CharSequence charSequence) {
        pullChildren();
        this.mDecorToolbar.setWindowTitle(charSequence);
    }

    @Override // android.support.v7.widget.DecorContentParent
    public CharSequence getTitle() {
        pullChildren();
        return this.mDecorToolbar.getTitle();
    }

    @Override // android.support.v7.widget.DecorContentParent
    public void initFeature(int i) {
        pullChildren();
        if (i == 2) {
            this.mDecorToolbar.initProgress();
        } else if (i == 5) {
            this.mDecorToolbar.initIndeterminateProgress();
        } else {
            if (i != 109) {
                return;
            }
            setOverlayMode(true);
        }
    }

    @Override // android.support.v7.widget.DecorContentParent
    public boolean hasIcon() {
        pullChildren();
        return this.mDecorToolbar.hasIcon();
    }

    @Override // android.support.v7.widget.DecorContentParent
    public boolean hasLogo() {
        pullChildren();
        return this.mDecorToolbar.hasLogo();
    }

    @Override // android.support.v7.widget.DecorContentParent
    public void setIcon(int i) {
        pullChildren();
        this.mDecorToolbar.setIcon(i);
    }

    @Override // android.support.v7.widget.DecorContentParent
    public void setIcon(Drawable drawable) {
        pullChildren();
        this.mDecorToolbar.setIcon(drawable);
    }

    @Override // android.support.v7.widget.DecorContentParent
    public void setLogo(int i) {
        pullChildren();
        this.mDecorToolbar.setLogo(i);
    }

    @Override // android.support.v7.widget.DecorContentParent
    public boolean canShowOverflowMenu() {
        pullChildren();
        return this.mDecorToolbar.canShowOverflowMenu();
    }

    @Override // android.support.v7.widget.DecorContentParent
    public boolean isOverflowMenuShowing() {
        pullChildren();
        return this.mDecorToolbar.isOverflowMenuShowing();
    }

    @Override // android.support.v7.widget.DecorContentParent
    public boolean isOverflowMenuShowPending() {
        pullChildren();
        return this.mDecorToolbar.isOverflowMenuShowPending();
    }

    @Override // android.support.v7.widget.DecorContentParent
    public boolean showOverflowMenu() {
        pullChildren();
        return this.mDecorToolbar.showOverflowMenu();
    }

    @Override // android.support.v7.widget.DecorContentParent
    public boolean hideOverflowMenu() {
        pullChildren();
        return this.mDecorToolbar.hideOverflowMenu();
    }

    @Override // android.support.v7.widget.DecorContentParent
    public void setMenuPrepared() {
        pullChildren();
        this.mDecorToolbar.setMenuPrepared();
    }

    @Override // android.support.v7.widget.DecorContentParent
    public void setMenu(Menu menu, MenuPresenter$Callback menuPresenter$Callback) {
        pullChildren();
        this.mDecorToolbar.setMenu(menu, menuPresenter$Callback);
    }

    @Override // android.support.v7.widget.DecorContentParent
    public void saveToolbarHierarchyState(SparseArray<Parcelable> sparseArray) {
        pullChildren();
        this.mDecorToolbar.saveHierarchyState(sparseArray);
    }

    @Override // android.support.v7.widget.DecorContentParent
    public void restoreToolbarHierarchyState(SparseArray<Parcelable> sparseArray) {
        pullChildren();
        this.mDecorToolbar.restoreHierarchyState(sparseArray);
    }

    @Override // android.support.v7.widget.DecorContentParent
    public void dismissPopups() {
        pullChildren();
        this.mDecorToolbar.dismissPopupMenus();
    }
}
