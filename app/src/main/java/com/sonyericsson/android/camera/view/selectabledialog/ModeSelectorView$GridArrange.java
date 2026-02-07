package com.sonyericsson.android.camera.view.selectabledialog;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.LinearLayout$LayoutParams;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.view.baselayout.LayoutDependencyResolver;
import com.sonyericsson.android.camera.view.modeselector.view.CapturingModePanelAttributes;

/* JADX INFO: loaded from: classes.dex */
protected class ModeSelectorView$GridArrange extends AbsDialogScrollView$ContentArrange {
    private int mItemMargin;
    final /* synthetic */ ModeSelectorView this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    protected ModeSelectorView$GridArrange(ModeSelectorView modeSelectorView, ArrayAdapter arrayAdapter) {
        super(arrayAdapter);
        this.this$0 = modeSelectorView;
        setup();
        fetchItems();
    }

    @Override // com.sonyericsson.android.camera.view.selectabledialog.AbsDialogScrollView$ContentArrange
    protected void setup() {
        this.container = new FrameLayout(this.this$0.getContext());
        this.container.setPadding(0, this.this$0.dimenToPixel(2131165448), 0, 0);
        LinearLayout linearLayout = new LinearLayout(this.this$0.getContext());
        this.container.addView(linearLayout);
        linearLayout.getLayoutParams().width = -1;
        linearLayout.getLayoutParams().height = -2;
        if (this.this$0.mParams.panelBackgroundColor != 0) {
            this.container.setBackgroundColor(this.this$0.mParams.panelBackgroundColor);
        }
        linearLayout.setOrientation(1);
        this.mRowItems = new LinearLayout(this.this$0.getContext());
        this.mRowItems.setMotionEventSplittingEnabled(false);
        linearLayout.addView(this.mRowItems);
        this.mRowItems.setOrientation(1);
        this.mRowItems.getLayoutParams().width = -1;
        this.mRowItems.getLayoutParams().height = -2;
        int navigationBarMargin = this.this$0.getLayoutParams().width;
        if (!this.this$0.isPortrait()) {
            navigationBarMargin -= LayoutDependencyResolver.getNavigationBarMargin(this.this$0.getContext());
        }
        this.mItemMargin = (navigationBarMargin - (this.this$0.mParams.itemWidth * 3)) / 4;
    }

    @Override // com.sonyericsson.android.camera.view.selectabledialog.AbsDialogScrollView$ContentArrange
    protected int computeHeight() {
        if (!this.this$0.mIsExpandedWhenOpened) {
            return this.this$0.getScrolledHeight();
        }
        return this.this$0.getScrollableContentLength();
    }

    @Override // com.sonyericsson.android.camera.view.selectabledialog.AbsDialogScrollView$ContentArrange
    protected int computeArrangeHeight() {
        return (this.this$0.mParams.itemHeight * ((int) Math.ceil(((double) getItemCount()) / 3.0d))) + this.container.getPaddingTop();
    }

    @Override // com.sonyericsson.android.camera.view.selectabledialog.AbsDialogScrollView$ContentArrange
    protected void fetchItems() {
        this.mRowItems.removeAllViews();
        for (int i = 0; i < this.mAdapter.getCount(); i++) {
            addItemView(this.mAdapter.getView(i, null, getPositionItemContainerView(i)), i);
            if (CamLog.VERBOSE) {
                CamLog.d("Add new item, size:" + this.mRowItems.getChildCount());
            }
        }
        int count = this.mAdapter.getCount();
        LinearLayout lastRowContainer = getLastRowContainer();
        int childCount = lastRowContainer.getChildCount();
        int i2 = count % 3;
        if (i2 == 0 || childCount <= i2) {
            return;
        }
        lastRowContainer.removeViews(childCount, -(childCount - i2));
    }

    @Override // com.sonyericsson.android.camera.view.selectabledialog.AbsDialogScrollView$ContentArrange
    protected void addItemView(View view, int i) {
        view.setTag(this.mAdapter.getItem(i));
        view.setBackgroundResource(2131231546);
        view.setOnClickListener(ModeSelectorView.access$000(this.this$0));
        LinearLayout linearLayout = null;
        if (this.mRowItems.getChildCount() > 0) {
            LinearLayout lastRowContainer = getLastRowContainer();
            if (3 > lastRowContainer.getChildCount()) {
                linearLayout = lastRowContainer;
            }
        }
        if (linearLayout == null) {
            linearLayout = new LinearLayout(this.this$0.getContext());
            linearLayout.setMotionEventSplittingEnabled(false);
            linearLayout.setGravity(3);
            this.mRowItems.addView(linearLayout);
            linearLayout.getLayoutParams().width = -1;
            linearLayout.getLayoutParams().height = -2;
        }
        ((LinearLayout$LayoutParams) view.getLayoutParams()).leftMargin = this.mItemMargin;
        linearLayout.addView(view);
    }

    @Override // com.sonyericsson.android.camera.view.selectabledialog.AbsDialogScrollView$ContentArrange
    protected View getPositionItemView(int i) {
        return getPositionItemContainerView(i).getChildAt(getPositionItemsColumnNum(i) - 1);
    }

    @Override // com.sonyericsson.android.camera.view.selectabledialog.AbsDialogScrollView$ContentArrange
    protected View findViewWithTag(Object obj) {
        for (int i = 0; i < this.mRowItems.getChildCount(); i++) {
            LinearLayout rowContainer = getRowContainer(i);
            for (int i2 = 0; i2 < rowContainer.getChildCount(); i2++) {
                View childAt = rowContainer.getChildAt(i2);
                if ((childAt.getTag() instanceof CapturingModePanelAttributes) && ((CapturingModePanelAttributes) childAt.getTag()).getModeName().equals(obj)) {
                    return childAt;
                }
            }
        }
        return null;
    }

    @Override // com.sonyericsson.android.camera.view.selectabledialog.AbsDialogScrollView$ContentArrange
    protected ViewGroup getPositionItemContainerView(int i) {
        return getRowContainer(getPositionItemsRowCount(i) - 1);
    }

    private int getPositionItemsRowCount(int i) {
        return (int) Math.ceil(((double) (i + 1)) / 3.0d);
    }

    private int getPositionItemsColumnNum(int i) {
        return (i + 1) - ((getPositionItemsRowCount(i) - 1) * 3);
    }

    private LinearLayout getRowContainer(int i) {
        return (LinearLayout) this.mRowItems.getChildAt(i);
    }

    private LinearLayout getLastRowContainer() {
        return getRowContainer(this.mRowItems.getChildCount() - 1);
    }
}
