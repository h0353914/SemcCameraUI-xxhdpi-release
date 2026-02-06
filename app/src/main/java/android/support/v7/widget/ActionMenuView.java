package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.support.annotation.StyleRes;
import android.support.v7.view.menu.ActionMenuItemView;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuBuilder$Callback;
import android.support.v7.view.menu.MenuBuilder$ItemInvoker;
import android.support.v7.view.menu.MenuItemImpl;
import android.support.v7.view.menu.MenuPresenter$Callback;
import android.support.v7.view.menu.MenuView;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent$Callback;
import android.view.Menu;
import android.view.View;
import android.view.View$MeasureSpec;
import android.view.ViewGroup$LayoutParams;
import android.view.accessibility.AccessibilityEvent;

public class ActionMenuView extends LinearLayoutCompat implements MenuBuilder$ItemInvoker, MenuView {
    static final int GENERATED_ITEM_PADDING = 4;
    static final int MIN_CELL_SIZE = 56;
    private static final String TAG = "ActionMenuView";
    private MenuPresenter$Callback mActionMenuPresenterCallback;
    private boolean mFormatItems;
    private int mFormatItemsWidth;
    private int mGeneratedItemPadding;
    private MenuBuilder mMenu;
    MenuBuilder$Callback mMenuBuilderCallback;
    private int mMinCellSize;
    ActionMenuView$OnMenuItemClickListener mOnMenuItemClickListener;
    private Context mPopupContext;
    private int mPopupTheme;
    private ActionMenuPresenter mPresenter;
    private boolean mReserveOverflow;

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    @Override // android.support.v7.view.menu.MenuView
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public int getWindowAnimations() {
        return 0;
    }

    @Override // android.support.v7.widget.LinearLayoutCompat, android.view.ViewGroup
    protected /* bridge */ /* synthetic */ LinearLayoutCompat$LayoutParams generateDefaultLayoutParams() {
        return generateDefaultLayoutParams();
    }

    @Override // android.support.v7.widget.LinearLayoutCompat, android.view.ViewGroup
    protected /* bridge */ /* synthetic */ ViewGroup$LayoutParams generateDefaultLayoutParams() {
        return generateDefaultLayoutParams();
    }

    @Override // android.support.v7.widget.LinearLayoutCompat, android.view.ViewGroup
    public /* bridge */ /* synthetic */ LinearLayoutCompat$LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateLayoutParams(attributeSet);
    }

    @Override // android.support.v7.widget.LinearLayoutCompat, android.view.ViewGroup
    protected /* bridge */ /* synthetic */ LinearLayoutCompat$LayoutParams generateLayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return generateLayoutParams(viewGroup$LayoutParams);
    }

    @Override // android.support.v7.widget.LinearLayoutCompat, android.view.ViewGroup
    public /* bridge */ /* synthetic */ ViewGroup$LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateLayoutParams(attributeSet);
    }

    @Override // android.support.v7.widget.LinearLayoutCompat, android.view.ViewGroup
    protected /* bridge */ /* synthetic */ ViewGroup$LayoutParams generateLayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return generateLayoutParams(viewGroup$LayoutParams);
    }

    public ActionMenuView(Context context) {
        this(context, null);
    }

    public ActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setBaselineAligned(false);
        float f = context.getResources().getDisplayMetrics().density;
        this.mMinCellSize = (int) (56.0f * f);
        this.mGeneratedItemPadding = (int) (4.0f * f);
        this.mPopupContext = context;
        this.mPopupTheme = 0;
    }

    public void setPopupTheme(@StyleRes int i) {
        if (this.mPopupTheme != i) {
            this.mPopupTheme = i;
            if (i == 0) {
                this.mPopupContext = getContext();
            } else {
                this.mPopupContext = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public int getPopupTheme() {
        return this.mPopupTheme;
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public void setPresenter(ActionMenuPresenter actionMenuPresenter) {
        this.mPresenter = actionMenuPresenter;
        this.mPresenter.setMenuView(this);
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.mPresenter != null) {
            this.mPresenter.updateMenuView(false);
            if (this.mPresenter.isOverflowMenuShowing()) {
                this.mPresenter.hideOverflowMenu();
                this.mPresenter.showOverflowMenu();
            }
        }
    }

    public void setOnMenuItemClickListener(ActionMenuView$OnMenuItemClickListener actionMenuView$OnMenuItemClickListener) {
        this.mOnMenuItemClickListener = actionMenuView$OnMenuItemClickListener;
    }

    @Override // android.support.v7.widget.LinearLayoutCompat, android.view.View
    protected void onMeasure(int i, int i2) {
        boolean z = this.mFormatItems;
        this.mFormatItems = View$MeasureSpec.getMode(i) == 1073741824;
        if (z != this.mFormatItems) {
            this.mFormatItemsWidth = 0;
        }
        int size = View$MeasureSpec.getSize(i);
        if (this.mFormatItems && this.mMenu != null && size != this.mFormatItemsWidth) {
            this.mFormatItemsWidth = size;
            this.mMenu.onItemsChanged(true);
        }
        int childCount = getChildCount();
        if (this.mFormatItems && childCount > 0) {
            onMeasureExactFormat(i, i2);
            return;
        }
        for (int i3 = 0; i3 < childCount; i3++) {
            ActionMenuView$LayoutParams actionMenuView$LayoutParams = (ActionMenuView$LayoutParams) getChildAt(i3).getLayoutParams();
            actionMenuView$LayoutParams.rightMargin = 0;
            actionMenuView$LayoutParams.leftMargin = 0;
        }
        super.onMeasure(i, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:135:0x0241  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x024a A[ADDED_TO_REGION, LOOP:5: B:138:0x024a->B:143:0x026c, LOOP_START, PHI: r5 r32
      0x024a: PHI (r5v7 int) = (r5v6 int), (r5v8 int) binds: [B:137:0x0248, B:143:0x026c] A[DONT_GENERATE, DONT_INLINE]
      0x024a: PHI (r32v1 int) = (r32v0 int), (r32v2 int) binds: [B:137:0x0248, B:143:0x026c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0273  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0278  */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v20, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r2v35 */
    /* JADX WARN: Type inference failed for: r6v19 */
    /* JADX WARN: Type inference failed for: r6v20, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r6v22 */
    /* JADX WARN: Type inference failed for: r6v24 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void onMeasureExactFormat(int i, int i2) {
        boolean z;
        int i3;
        int i4;
        int i5;
        boolean z2;
        int i6;
        int i7;
        int i8;
        ?? r6;
        int i9;
        int i10;
        ?? r2;
        int i11;
        int mode = View$MeasureSpec.getMode(i2);
        int size = View$MeasureSpec.getSize(i);
        int size2 = View$MeasureSpec.getSize(i2);
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int childMeasureSpec = getChildMeasureSpec(i2, paddingTop, -2);
        int i12 = size - paddingLeft;
        int i13 = i12 / this.mMinCellSize;
        int i14 = i12 % this.mMinCellSize;
        if (i13 == 0) {
            setMeasuredDimension(i12, 0);
            return;
        }
        int i15 = this.mMinCellSize + (i14 / i13);
        int childCount = getChildCount();
        int i16 = i13;
        int i17 = 0;
        int iMax = 0;
        boolean z3 = false;
        int i18 = 0;
        int i19 = 0;
        int i20 = 0;
        long j = 0;
        while (i17 < childCount) {
            View childAt = getChildAt(i17);
            int i21 = size2;
            if (childAt.getVisibility() == 8) {
                i9 = i12;
            } else {
                boolean z4 = childAt instanceof ActionMenuItemView;
                int i22 = i18 + 1;
                if (z4) {
                    i10 = i22;
                    i9 = i12;
                    r2 = 0;
                    childAt.setPadding(this.mGeneratedItemPadding, 0, this.mGeneratedItemPadding, 0);
                } else {
                    i9 = i12;
                    i10 = i22;
                    r2 = 0;
                }
                ActionMenuView$LayoutParams actionMenuView$LayoutParams = (ActionMenuView$LayoutParams) childAt.getLayoutParams();
                actionMenuView$LayoutParams.expanded = r2;
                actionMenuView$LayoutParams.extraPixels = r2;
                actionMenuView$LayoutParams.cellsUsed = r2;
                actionMenuView$LayoutParams.expandable = r2;
                actionMenuView$LayoutParams.leftMargin = r2;
                actionMenuView$LayoutParams.rightMargin = r2;
                actionMenuView$LayoutParams.preventEdgeOffset = z4 && ((ActionMenuItemView) childAt).hasText();
                int iMeasureChildForCells = measureChildForCells(childAt, i15, actionMenuView$LayoutParams.isOverflowButton ? 1 : i16, childMeasureSpec, paddingTop);
                int iMax2 = Math.max(i19, iMeasureChildForCells);
                if (actionMenuView$LayoutParams.expandable) {
                    i20++;
                }
                if (actionMenuView$LayoutParams.isOverflowButton) {
                    z3 = true;
                }
                i16 -= iMeasureChildForCells;
                iMax = Math.max(iMax, childAt.getMeasuredHeight());
                if (iMeasureChildForCells == 1) {
                    i11 = iMax2;
                    j |= (long) (1 << i17);
                } else {
                    i11 = iMax2;
                }
                i18 = i10;
                i19 = i11;
            }
            i17++;
            size2 = i21;
            i12 = i9;
        }
        int i23 = i12;
        int i24 = size2;
        boolean z5 = z3 && i18 == 2;
        boolean z6 = false;
        while (i20 > 0 && i16 > 0) {
            int i25 = Integer.MAX_VALUE;
            int i26 = 0;
            int i27 = 0;
            long j2 = 0;
            while (i26 < childCount) {
                ActionMenuView$LayoutParams actionMenuView$LayoutParams2 = (ActionMenuView$LayoutParams) getChildAt(i26).getLayoutParams();
                boolean z7 = z6;
                if (actionMenuView$LayoutParams2.expandable) {
                    if (actionMenuView$LayoutParams2.cellsUsed < i25) {
                        j2 = 1 << i26;
                        i25 = actionMenuView$LayoutParams2.cellsUsed;
                        i27 = 1;
                    } else if (actionMenuView$LayoutParams2.cellsUsed == i25) {
                        j2 |= 1 << i26;
                        i27++;
                    }
                }
                i26++;
                z6 = z7;
            }
            z = z6;
            j |= j2;
            if (i27 > i16) {
                break;
            }
            int i28 = i25 + 1;
            int i29 = 0;
            while (i29 < childCount) {
                View childAt2 = getChildAt(i29);
                ActionMenuView$LayoutParams actionMenuView$LayoutParams3 = (ActionMenuView$LayoutParams) childAt2.getLayoutParams();
                int i30 = iMax;
                int i31 = childMeasureSpec;
                int i32 = childCount;
                long j3 = 1 << i29;
                if ((j2 & j3) == 0) {
                    if (actionMenuView$LayoutParams3.cellsUsed == i28) {
                        j |= j3;
                    }
                } else {
                    if (z5 && actionMenuView$LayoutParams3.preventEdgeOffset) {
                        r6 = 1;
                        r6 = 1;
                        if (i16 == 1) {
                            childAt2.setPadding(this.mGeneratedItemPadding + i15, 0, this.mGeneratedItemPadding, 0);
                        }
                    } else {
                        r6 = 1;
                    }
                    actionMenuView$LayoutParams3.cellsUsed += r6;
                    actionMenuView$LayoutParams3.expanded = r6;
                    i16--;
                }
                i29++;
                iMax = i30;
                childMeasureSpec = i31;
                childCount = i32;
            }
            z6 = true;
        }
        z = z6;
        int i33 = childMeasureSpec;
        int i34 = childCount;
        int i35 = iMax;
        long j4 = j;
        if (!z3) {
            i3 = 1;
            boolean z8 = i18 == 1;
            if (i16 > 0 || j4 == 0 || (i16 >= i18 - i3 && !z8 && i19 <= i3)) {
                i4 = i34;
                i5 = 0;
                z2 = z;
            } else {
                float fBitCount = Long.bitCount(j4);
                if (z8) {
                    i5 = 0;
                } else {
                    if ((j4 & 1) != 0) {
                        i5 = 0;
                        if (!((ActionMenuView$LayoutParams) getChildAt(0).getLayoutParams()).preventEdgeOffset) {
                            fBitCount -= 0.5f;
                        }
                    } else {
                        i5 = 0;
                    }
                    int i36 = i34 - 1;
                    if ((((long) (1 << i36)) & j4) != 0 && !((ActionMenuView$LayoutParams) getChildAt(i36).getLayoutParams()).preventEdgeOffset) {
                        fBitCount -= 0.5f;
                    }
                }
                int i37 = fBitCount > 0.0f ? (int) ((i16 * i15) / fBitCount) : i5;
                z2 = z;
                i4 = i34;
                for (int i38 = i5; i38 < i4; i38++) {
                    if ((((long) (1 << i38)) & j4) != 0) {
                        View childAt3 = getChildAt(i38);
                        ActionMenuView$LayoutParams actionMenuView$LayoutParams4 = (ActionMenuView$LayoutParams) childAt3.getLayoutParams();
                        if (childAt3 instanceof ActionMenuItemView) {
                            actionMenuView$LayoutParams4.extraPixels = i37;
                            actionMenuView$LayoutParams4.expanded = true;
                            if (i38 == 0 && !actionMenuView$LayoutParams4.preventEdgeOffset) {
                                actionMenuView$LayoutParams4.leftMargin = (-i37) / 2;
                            }
                            z2 = true;
                        } else if (actionMenuView$LayoutParams4.isOverflowButton) {
                            actionMenuView$LayoutParams4.extraPixels = i37;
                            actionMenuView$LayoutParams4.expanded = true;
                            actionMenuView$LayoutParams4.rightMargin = (-i37) / 2;
                            z2 = true;
                        } else {
                            if (i38 != 0) {
                                actionMenuView$LayoutParams4.leftMargin = i37 / 2;
                            }
                            if (i38 != i4 - 1) {
                                actionMenuView$LayoutParams4.rightMargin = i37 / 2;
                            }
                        }
                    }
                }
            }
            if (z2) {
                while (i5 < i4) {
                    View childAt4 = getChildAt(i5);
                    ActionMenuView$LayoutParams actionMenuView$LayoutParams5 = (ActionMenuView$LayoutParams) childAt4.getLayoutParams();
                    if (actionMenuView$LayoutParams5.expanded) {
                        i8 = i33;
                        childAt4.measure(View$MeasureSpec.makeMeasureSpec((actionMenuView$LayoutParams5.cellsUsed * i15) + actionMenuView$LayoutParams5.extraPixels, 1073741824), i8);
                    } else {
                        i8 = i33;
                    }
                    i5++;
                    i33 = i8;
                }
            }
            if (mode == 1073741824) {
                i7 = i23;
                i6 = i35;
            } else {
                i6 = i24;
                i7 = i23;
            }
            setMeasuredDimension(i7, i6);
        }
        i3 = 1;
        if (i16 > 0) {
            i4 = i34;
            i5 = 0;
            z2 = z;
        }
        if (z2) {
        }
        if (mode == 1073741824) {
        }
        setMeasuredDimension(i7, i6);
    }

    static int measureChildForCells(View view, int i, int i2, int i3, int i4) {
        ActionMenuView$LayoutParams actionMenuView$LayoutParams = (ActionMenuView$LayoutParams) view.getLayoutParams();
        int iMakeMeasureSpec = View$MeasureSpec.makeMeasureSpec(View$MeasureSpec.getSize(i3) - i4, View$MeasureSpec.getMode(i3));
        ActionMenuItemView actionMenuItemView = view instanceof ActionMenuItemView ? (ActionMenuItemView) view : null;
        boolean z = false;
        boolean z2 = actionMenuItemView != null && actionMenuItemView.hasText();
        int i5 = 2;
        if (i2 <= 0 || (z2 && i2 < 2)) {
            i5 = 0;
        } else {
            view.measure(View$MeasureSpec.makeMeasureSpec(i2 * i, Integer.MIN_VALUE), iMakeMeasureSpec);
            int measuredWidth = view.getMeasuredWidth();
            int i6 = measuredWidth / i;
            if (measuredWidth % i != 0) {
                i6++;
            }
            if (!z2 || i6 >= 2) {
                i5 = i6;
            }
        }
        if (!actionMenuView$LayoutParams.isOverflowButton && z2) {
            z = true;
        }
        actionMenuView$LayoutParams.expandable = z;
        actionMenuView$LayoutParams.cellsUsed = i5;
        view.measure(View$MeasureSpec.makeMeasureSpec(i * i5, 1073741824), iMakeMeasureSpec);
        return i5;
    }

    @Override // android.support.v7.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int width;
        int paddingLeft;
        if (!this.mFormatItems) {
            super.onLayout(z, i, i2, i3, i4);
            return;
        }
        int childCount = getChildCount();
        int i7 = (i4 - i2) / 2;
        int dividerWidth = getDividerWidth();
        int i8 = i3 - i;
        int paddingRight = (i8 - getPaddingRight()) - getPaddingLeft();
        boolean zIsLayoutRtl = ViewUtils.isLayoutRtl(this);
        int measuredWidth = paddingRight;
        int i9 = 0;
        int i10 = 0;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8) {
                ActionMenuView$LayoutParams actionMenuView$LayoutParams = (ActionMenuView$LayoutParams) childAt.getLayoutParams();
                if (actionMenuView$LayoutParams.isOverflowButton) {
                    int measuredWidth2 = childAt.getMeasuredWidth();
                    if (hasSupportDividerBeforeChildAt(i11)) {
                        measuredWidth2 += dividerWidth;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (zIsLayoutRtl) {
                        paddingLeft = getPaddingLeft() + actionMenuView$LayoutParams.leftMargin;
                        width = paddingLeft + measuredWidth2;
                    } else {
                        width = (getWidth() - getPaddingRight()) - actionMenuView$LayoutParams.rightMargin;
                        paddingLeft = width - measuredWidth2;
                    }
                    int i12 = i7 - (measuredHeight / 2);
                    childAt.layout(paddingLeft, i12, width, measuredHeight + i12);
                    measuredWidth -= measuredWidth2;
                    i9 = 1;
                } else {
                    measuredWidth -= (childAt.getMeasuredWidth() + actionMenuView$LayoutParams.leftMargin) + actionMenuView$LayoutParams.rightMargin;
                    hasSupportDividerBeforeChildAt(i11);
                    i10++;
                }
            }
        }
        if (childCount == 1 && i9 == 0) {
            View childAt2 = getChildAt(0);
            int measuredWidth3 = childAt2.getMeasuredWidth();
            int measuredHeight2 = childAt2.getMeasuredHeight();
            int i13 = (i8 / 2) - (measuredWidth3 / 2);
            int i14 = i7 - (measuredHeight2 / 2);
            childAt2.layout(i13, i14, measuredWidth3 + i13, measuredHeight2 + i14);
            return;
        }
        int i15 = i10 - (i9 ^ 1);
        if (i15 > 0) {
            i6 = measuredWidth / i15;
            i5 = 0;
        } else {
            i5 = 0;
            i6 = 0;
        }
        int iMax = Math.max(i5, i6);
        if (zIsLayoutRtl) {
            int width2 = getWidth() - getPaddingRight();
            while (i5 < childCount) {
                View childAt3 = getChildAt(i5);
                ActionMenuView$LayoutParams actionMenuView$LayoutParams2 = (ActionMenuView$LayoutParams) childAt3.getLayoutParams();
                if (childAt3.getVisibility() != 8 && !actionMenuView$LayoutParams2.isOverflowButton) {
                    int i16 = width2 - actionMenuView$LayoutParams2.rightMargin;
                    int measuredWidth4 = childAt3.getMeasuredWidth();
                    int measuredHeight3 = childAt3.getMeasuredHeight();
                    int i17 = i7 - (measuredHeight3 / 2);
                    childAt3.layout(i16 - measuredWidth4, i17, i16, measuredHeight3 + i17);
                    width2 = i16 - ((measuredWidth4 + actionMenuView$LayoutParams2.leftMargin) + iMax);
                }
                i5++;
            }
            return;
        }
        int paddingLeft2 = getPaddingLeft();
        while (i5 < childCount) {
            View childAt4 = getChildAt(i5);
            ActionMenuView$LayoutParams actionMenuView$LayoutParams3 = (ActionMenuView$LayoutParams) childAt4.getLayoutParams();
            if (childAt4.getVisibility() != 8 && !actionMenuView$LayoutParams3.isOverflowButton) {
                int i18 = paddingLeft2 + actionMenuView$LayoutParams3.leftMargin;
                int measuredWidth5 = childAt4.getMeasuredWidth();
                int measuredHeight4 = childAt4.getMeasuredHeight();
                int i19 = i7 - (measuredHeight4 / 2);
                childAt4.layout(i18, i19, i18 + measuredWidth5, measuredHeight4 + i19);
                paddingLeft2 = i18 + measuredWidth5 + actionMenuView$LayoutParams3.rightMargin + iMax;
            }
            i5++;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        dismissPopupMenus();
    }

    public void setOverflowIcon(@Nullable Drawable drawable) {
        getMenu();
        this.mPresenter.setOverflowIcon(drawable);
    }

    @Nullable
    public Drawable getOverflowIcon() {
        getMenu();
        return this.mPresenter.getOverflowIcon();
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public boolean isOverflowReserved() {
        return this.mReserveOverflow;
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public void setOverflowReserved(boolean z) {
        this.mReserveOverflow = z;
    }

    @Override // android.support.v7.widget.LinearLayoutCompat, android.view.ViewGroup
    protected ActionMenuView$LayoutParams generateDefaultLayoutParams() {
        ActionMenuView$LayoutParams actionMenuView$LayoutParams = new ActionMenuView$LayoutParams(-2, -2);
        actionMenuView$LayoutParams.gravity = 16;
        return actionMenuView$LayoutParams;
    }

    @Override // android.support.v7.widget.LinearLayoutCompat, android.view.ViewGroup
    public ActionMenuView$LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ActionMenuView$LayoutParams(getContext(), attributeSet);
    }

    @Override // android.support.v7.widget.LinearLayoutCompat, android.view.ViewGroup
    protected ActionMenuView$LayoutParams generateLayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        if (viewGroup$LayoutParams != null) {
            ActionMenuView$LayoutParams actionMenuView$LayoutParams = viewGroup$LayoutParams instanceof ActionMenuView$LayoutParams ? new ActionMenuView$LayoutParams((ActionMenuView$LayoutParams) viewGroup$LayoutParams) : new ActionMenuView$LayoutParams(viewGroup$LayoutParams);
            if (actionMenuView$LayoutParams.gravity <= 0) {
                actionMenuView$LayoutParams.gravity = 16;
            }
            return actionMenuView$LayoutParams;
        }
        return generateDefaultLayoutParams();
    }

    @Override // android.support.v7.widget.LinearLayoutCompat, android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return viewGroup$LayoutParams != null && (viewGroup$LayoutParams instanceof ActionMenuView$LayoutParams);
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public ActionMenuView$LayoutParams generateOverflowButtonLayoutParams() {
        ActionMenuView$LayoutParams actionMenuView$LayoutParamsGenerateDefaultLayoutParams = generateDefaultLayoutParams();
        actionMenuView$LayoutParamsGenerateDefaultLayoutParams.isOverflowButton = true;
        return actionMenuView$LayoutParamsGenerateDefaultLayoutParams;
    }

    @Override // android.support.v7.view.menu.MenuBuilder$ItemInvoker
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public boolean invokeItem(MenuItemImpl menuItemImpl) {
        return this.mMenu.performItemAction(menuItemImpl, 0);
    }

    @Override // android.support.v7.view.menu.MenuView
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public void initialize(MenuBuilder menuBuilder) {
        this.mMenu = menuBuilder;
    }

    public Menu getMenu() {
        if (this.mMenu == null) {
            Context context = getContext();
            this.mMenu = new MenuBuilder(context);
            this.mMenu.setCallback(new ActionMenuView$MenuBuilderCallback(this));
            this.mPresenter = new ActionMenuPresenter(context);
            this.mPresenter.setReserveOverflow(true);
            this.mPresenter.setCallback(this.mActionMenuPresenterCallback != null ? this.mActionMenuPresenterCallback : new ActionMenuView$ActionMenuPresenterCallback());
            this.mMenu.addMenuPresenter(this.mPresenter, this.mPopupContext);
            this.mPresenter.setMenuView(this);
        }
        return this.mMenu;
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public void setMenuCallbacks(MenuPresenter$Callback menuPresenter$Callback, MenuBuilder$Callback menuBuilder$Callback) {
        this.mActionMenuPresenterCallback = menuPresenter$Callback;
        this.mMenuBuilderCallback = menuBuilder$Callback;
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public MenuBuilder peekMenu() {
        return this.mMenu;
    }

    public boolean showOverflowMenu() {
        return this.mPresenter != null && this.mPresenter.showOverflowMenu();
    }

    public boolean hideOverflowMenu() {
        return this.mPresenter != null && this.mPresenter.hideOverflowMenu();
    }

    public boolean isOverflowMenuShowing() {
        return this.mPresenter != null && this.mPresenter.isOverflowMenuShowing();
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public boolean isOverflowMenuShowPending() {
        return this.mPresenter != null && this.mPresenter.isOverflowMenuShowPending();
    }

    public void dismissPopupMenus() {
        if (this.mPresenter != null) {
            this.mPresenter.dismissPopupMenus();
        }
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    protected boolean hasSupportDividerBeforeChildAt(int i) {
        boolean zNeedsDividerAfter = false;
        if (i == 0) {
            return false;
        }
        KeyEvent$Callback childAt = getChildAt(i - 1);
        KeyEvent$Callback childAt2 = getChildAt(i);
        if (i < getChildCount() && (childAt instanceof ActionMenuView$ActionMenuChildView)) {
            zNeedsDividerAfter = false | ((ActionMenuView$ActionMenuChildView) childAt).needsDividerAfter();
        }
        return (i <= 0 || !(childAt2 instanceof ActionMenuView$ActionMenuChildView)) ? zNeedsDividerAfter : zNeedsDividerAfter | ((ActionMenuView$ActionMenuChildView) childAt2).needsDividerBefore();
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public void setExpandedActionViewsExclusive(boolean z) {
        this.mPresenter.setExpandedActionViewsExclusive(z);
    }
}
