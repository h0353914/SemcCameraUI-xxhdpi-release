package com.sonyericsson.android.camera.view.selectabledialog;

import android.content.Context;
import android.support.annotation.NonNull;
import android.view.View$OnClickListener;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.FrameLayout$LayoutParams;
import com.sonyericsson.android.camera.view.baselayout.LayoutDependencyResolver;
import com.sonyericsson.cameracommon.utility.RotationUtil;

public class ModeSelectorView extends AbsDialogScrollView {
    private static final int COLUMN_NUM = 3;
    private View$OnClickListener mOnItemClickListener;

    @Override // com.sonyericsson.android.camera.view.selectabledialog.AbsDialogScrollView
    protected void onInitializeScroll() {
    }

    static /* synthetic */ View$OnClickListener access$000(ModeSelectorView modeSelectorView) {
        return modeSelectorView.mOnItemClickListener;
    }

    public ModeSelectorView(@NonNull Context context) {
        super(context);
    }

    protected void setOnItemClickListener(View$OnClickListener view$OnClickListener) {
        this.mOnItemClickListener = view$OnClickListener;
    }

    @Override // com.sonyericsson.android.camera.view.selectabledialog.AbsDialogScrollView
    protected void addContent(String str, ArrayAdapter arrayAdapter) {
        if (this.mArranges.isEmpty()) {
            ModeSelectorView$GridArrange modeSelectorView$GridArrange = new ModeSelectorView$GridArrange(this, arrayAdapter);
            this.mArranges.add(modeSelectorView$GridArrange);
            addContentView(modeSelectorView$GridArrange.getView());
            modeSelectorView$GridArrange.getView().getLayoutParams().width = -1;
            modeSelectorView$GridArrange.getView().getLayoutParams().height = -1;
            return;
        }
        this.mArranges.get(0).updateItems(arrayAdapter);
    }

    @Override // com.sonyericsson.android.camera.view.selectabledialog.AbsDialogScrollView
    protected int getInitialDisplayHeight() {
        if (isPortrait()) {
            return calculateInitialDisplayHeight(2131165441);
        }
        return this.mParams.maxHeightLandscape;
    }

    @Override // com.sonyericsson.android.camera.view.selectabledialog.AbsDialogScrollView
    protected int getScrollableContentLength() {
        int initialDisplayHeight;
        if (this.mArranges.isEmpty()) {
            return 0;
        }
        int iComputeArrangeHeight = this.mArranges.get(0).computeArrangeHeight();
        return (!isPortrait() && (initialDisplayHeight = getInitialDisplayHeight()) > iComputeArrangeHeight) ? initialDisplayHeight : iComputeArrangeHeight;
    }

    @Override // com.sonyericsson.android.camera.view.selectabledialog.AbsDialogScrollView
    public void updateDefaultScrollPosition() {
        if (getScrollStatus() == ScrollContainer$Status.CLOSING) {
            return;
        }
        super.updateDefaultScrollPosition();
    }

    @Override // com.sonyericsson.android.camera.view.selectabledialog.AbsDialogScrollView
    public void updateRotatableLayout(ViewGroup viewGroup, int i, int i2) {
        FrameLayout$LayoutParams frameLayout$LayoutParams = (FrameLayout$LayoutParams) this.mSomcScroller.getLayoutParams();
        if (isPortrait()) {
            frameLayout$LayoutParams.height = this.mParams.maxHeightPortrait;
        } else {
            frameLayout$LayoutParams.height = this.mParams.maxHeightLandscape;
        }
        FrameLayout$LayoutParams frameLayout$LayoutParams2 = (FrameLayout$LayoutParams) getLayoutParams();
        if (isPortrait()) {
            frameLayout$LayoutParams2.width = viewGroup.getMeasuredHeight();
        } else {
            frameLayout$LayoutParams2.width = viewGroup.getMeasuredHeight() + LayoutDependencyResolver.getNavigationBarMargin(getContext());
        }
        int i3 = frameLayout$LayoutParams2.height;
        int i4 = i3 - (isPortrait() ? this.mParams.maxHeightPortrait : this.mParams.maxHeightLandscape);
        int iMax = Math.max(0, Math.min(this.mBottomMarginHint, i3 - (i2 + i4)));
        if (isPortrait()) {
            frameLayout$LayoutParams2.setMargins(this.mParams.leftMarginPortrait, 0, this.mParams.rightMarginPortrait, this.mParams.bottomMarginPortrait);
            this.mSomcScroller.setViewMargin((this.mParams.maxHeightPortrait - getInitialDisplayHeight()) + i4 + iMax);
        } else {
            frameLayout$LayoutParams2.setMargins(this.mParams.leftMarginLandscape, 0, 0, this.mParams.bottomMarginLandscape);
            this.mSomcScroller.setViewMargin(this.mParams.maxHeightLandscape - getInitialDisplayHeight());
        }
        setPivotX(getLayoutParams().width / 2.0f);
        setPivotY(getLayoutParams().height - (getLayoutParams().width / 2.0f));
        setRotation(RotationUtil.getAngle(this.mOrientation));
        getLayoutParams().height = Math.max(viewGroup.getMeasuredWidth(), viewGroup.getMeasuredHeight());
        ((FrameLayout$LayoutParams) getLayoutParams()).gravity = 80 | this.mParams.horizontalGavity.value;
        requestLayout();
    }
}
