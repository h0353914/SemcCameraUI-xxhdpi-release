package com.duolingo.open.rtlviewpager;

import android.content.Context;
import android.os.Parcelable;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager$OnPageChangeListener;
import android.util.AttributeSet;
import android.view.View;
import android.view.View$MeasureSpec;
import java.util.HashMap;

public class RtlViewPager extends ViewPager {
    private int mLayoutDirection;
    private HashMap<ViewPager$OnPageChangeListener, RtlViewPager$ReversingOnPageChangeListener> mPageChangeListeners;

    static /* synthetic */ PagerAdapter access$401(RtlViewPager rtlViewPager) {
        return super.getAdapter();
    }

    static /* synthetic */ boolean access$500(RtlViewPager rtlViewPager) {
        return rtlViewPager.isRtl();
    }

    static /* synthetic */ PagerAdapter access$601(RtlViewPager rtlViewPager) {
        return super.getAdapter();
    }

    public RtlViewPager(Context context) {
        super(context);
        this.mLayoutDirection = 0;
        this.mPageChangeListeners = new HashMap<>();
    }

    public RtlViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mLayoutDirection = 0;
        this.mPageChangeListeners = new HashMap<>();
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        int i2 = i != 1 ? 0 : 1;
        if (i2 != this.mLayoutDirection) {
            PagerAdapter adapter = super.getAdapter();
            int currentItem = adapter != null ? getCurrentItem() : 0;
            this.mLayoutDirection = i2;
            if (adapter != null) {
                adapter.notifyDataSetChanged();
                setCurrentItem(currentItem);
            }
        }
    }

    @Override // android.support.v4.view.ViewPager
    public void setAdapter(PagerAdapter pagerAdapter) {
        if (pagerAdapter != null) {
            pagerAdapter = new RtlViewPager$ReversingAdapter(this, pagerAdapter);
        }
        super.setAdapter(pagerAdapter);
        setCurrentItem(0);
    }

    @Override // android.support.v4.view.ViewPager
    public PagerAdapter getAdapter() {
        RtlViewPager$ReversingAdapter rtlViewPager$ReversingAdapter = (RtlViewPager$ReversingAdapter) super.getAdapter();
        if (rtlViewPager$ReversingAdapter == null) {
            return null;
        }
        return rtlViewPager$ReversingAdapter.getDelegate();
    }

    private boolean isRtl() {
        return this.mLayoutDirection == 1;
    }

    @Override // android.support.v4.view.ViewPager
    public int getCurrentItem() {
        int currentItem = super.getCurrentItem();
        return (super.getAdapter() == null || !isRtl()) ? currentItem : (r1.getCount() - currentItem) - 1;
    }

    @Override // android.support.v4.view.ViewPager
    public void setCurrentItem(int i, boolean z) {
        PagerAdapter adapter = super.getAdapter();
        if (adapter != null && isRtl()) {
            i = (adapter.getCount() - i) - 1;
        }
        super.setCurrentItem(i, z);
    }

    @Override // android.support.v4.view.ViewPager
    public void setCurrentItem(int i) {
        PagerAdapter adapter = super.getAdapter();
        if (adapter != null && isRtl()) {
            i = (adapter.getCount() - i) - 1;
        }
        super.setCurrentItem(i);
    }

    @Override // android.support.v4.view.ViewPager, android.view.View
    public Parcelable onSaveInstanceState() {
        return new RtlViewPager$SavedState(super.onSaveInstanceState(), this.mLayoutDirection, (RtlViewPager$1) null);
    }

    @Override // android.support.v4.view.ViewPager, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof RtlViewPager$SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        RtlViewPager$SavedState rtlViewPager$SavedState = (RtlViewPager$SavedState) parcelable;
        this.mLayoutDirection = RtlViewPager$SavedState.access$200(rtlViewPager$SavedState);
        super.onRestoreInstanceState(RtlViewPager$SavedState.access$300(rtlViewPager$SavedState));
    }

    @Override // android.support.v4.view.ViewPager
    public void setOnPageChangeListener(ViewPager$OnPageChangeListener viewPager$OnPageChangeListener) {
        super.setOnPageChangeListener(new RtlViewPager$ReversingOnPageChangeListener(this, viewPager$OnPageChangeListener));
    }

    @Override // android.support.v4.view.ViewPager
    public void addOnPageChangeListener(ViewPager$OnPageChangeListener viewPager$OnPageChangeListener) {
        RtlViewPager$ReversingOnPageChangeListener rtlViewPager$ReversingOnPageChangeListener = new RtlViewPager$ReversingOnPageChangeListener(this, viewPager$OnPageChangeListener);
        this.mPageChangeListeners.put(viewPager$OnPageChangeListener, rtlViewPager$ReversingOnPageChangeListener);
        super.addOnPageChangeListener(rtlViewPager$ReversingOnPageChangeListener);
    }

    @Override // android.support.v4.view.ViewPager
    public void removeOnPageChangeListener(ViewPager$OnPageChangeListener viewPager$OnPageChangeListener) {
        RtlViewPager$ReversingOnPageChangeListener rtlViewPager$ReversingOnPageChangeListenerRemove = this.mPageChangeListeners.remove(viewPager$OnPageChangeListener);
        if (rtlViewPager$ReversingOnPageChangeListenerRemove != null) {
            super.removeOnPageChangeListener(rtlViewPager$ReversingOnPageChangeListenerRemove);
        }
    }

    @Override // android.support.v4.view.ViewPager
    public void clearOnPageChangeListeners() {
        super.clearOnPageChangeListeners();
        this.mPageChangeListeners.clear();
    }

    @Override // android.support.v4.view.ViewPager, android.view.View
    protected void onMeasure(int i, int i2) {
        if (View$MeasureSpec.getMode(i2) == 0) {
            int i3 = 0;
            for (int i4 = 0; i4 < getChildCount(); i4++) {
                View childAt = getChildAt(i4);
                childAt.measure(i, View$MeasureSpec.makeMeasureSpec(0, 0));
                int measuredHeight = childAt.getMeasuredHeight();
                if (measuredHeight > i3) {
                    i3 = measuredHeight;
                }
            }
            i2 = View$MeasureSpec.makeMeasureSpec(i3, 1073741824);
        }
        super.onMeasure(i, i2);
    }
}
