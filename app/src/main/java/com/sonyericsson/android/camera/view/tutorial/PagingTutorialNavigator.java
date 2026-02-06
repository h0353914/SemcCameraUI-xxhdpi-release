package com.sonyericsson.android.camera.view.tutorial;

import android.content.Context;
import android.support.v4.view.ViewPager$OnPageChangeListener;
import android.util.AttributeSet;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.FrameLayout;

public abstract class PagingTutorialNavigator extends FrameLayout implements ViewPager$OnPageChangeListener {
    private PagingTutorialContentView$PagingTutorialController mController;
    protected final View$OnClickListener mOnClickListener;

    protected abstract void doFirstPage();

    protected abstract void doLastPage();

    protected abstract void doMiddlePage();

    protected abstract void doSingleContent();

    protected abstract int getPageCount();

    @Override // android.support.v4.view.ViewPager$OnPageChangeListener
    public void onPageScrollStateChanged(int i) {
    }

    @Override // android.support.v4.view.ViewPager$OnPageChangeListener
    public void onPageScrolled(int i, float f, int i2) {
    }

    protected abstract void setPageSize(int i);

    protected void updatePageSelected(int i) {
    }

    static /* synthetic */ PagingTutorialContentView$PagingTutorialController access$000(PagingTutorialNavigator pagingTutorialNavigator) {
        return pagingTutorialNavigator.mController;
    }

    public PagingTutorialNavigator(Context context) {
        super(context);
        this.mOnClickListener = new PagingTutorialNavigator$1(this);
    }

    public PagingTutorialNavigator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mOnClickListener = new PagingTutorialNavigator$1(this);
    }

    public PagingTutorialNavigator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mOnClickListener = new PagingTutorialNavigator$1(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        setMotionEventSplittingEnabled(false);
    }

    protected void setViewController(PagingTutorialContentView$PagingTutorialController pagingTutorialContentView$PagingTutorialController) {
        this.mController = pagingTutorialContentView$PagingTutorialController;
    }

    @Override // android.support.v4.view.ViewPager$OnPageChangeListener
    public void onPageSelected(int i) {
        if (getPageCount() == 1) {
            doSingleContent();
            return;
        }
        updatePageSelected(i);
        if (i == 0) {
            doFirstPage();
        } else if (i == getPageCount() - 1) {
            doLastPage();
        } else {
            doMiddlePage();
        }
    }

    protected void updateClickEventListener(View view) {
        view.setOnClickListener(view.getVisibility() == 0 ? this.mOnClickListener : null);
    }
}
