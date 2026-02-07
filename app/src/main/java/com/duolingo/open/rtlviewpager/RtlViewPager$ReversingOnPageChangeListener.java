package com.duolingo.open.rtlviewpager;

import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager$OnPageChangeListener;

/* JADX INFO: loaded from: classes.dex */
class RtlViewPager$ReversingOnPageChangeListener implements ViewPager$OnPageChangeListener {
    private final ViewPager$OnPageChangeListener mListener;
    final /* synthetic */ RtlViewPager this$0;

    public RtlViewPager$ReversingOnPageChangeListener(RtlViewPager rtlViewPager, ViewPager$OnPageChangeListener viewPager$OnPageChangeListener) {
        this.this$0 = rtlViewPager;
        this.mListener = viewPager$OnPageChangeListener;
    }

    @Override // android.support.v4.view.ViewPager$OnPageChangeListener
    public void onPageScrolled(int i, float f, int i2) {
        int width = this.this$0.getWidth();
        PagerAdapter pagerAdapterAccess$401 = RtlViewPager.access$401(this.this$0);
        if (RtlViewPager.access$500(this.this$0) && pagerAdapterAccess$401 != null) {
            int count = pagerAdapterAccess$401.getCount();
            float f2 = width;
            int pageWidth = ((int) ((1.0f - pagerAdapterAccess$401.getPageWidth(i)) * f2)) + i2;
            while (i < count && pageWidth > 0) {
                i++;
                pageWidth -= (int) (pagerAdapterAccess$401.getPageWidth(i) * f2);
            }
            i = (count - i) - 1;
            i2 = -pageWidth;
            f = i2 / (f2 * pagerAdapterAccess$401.getPageWidth(i));
        }
        this.mListener.onPageScrolled(i, f, i2);
    }

    @Override // android.support.v4.view.ViewPager$OnPageChangeListener
    public void onPageSelected(int i) {
        PagerAdapter pagerAdapterAccess$601 = RtlViewPager.access$601(this.this$0);
        if (RtlViewPager.access$500(this.this$0) && pagerAdapterAccess$601 != null) {
            i = (pagerAdapterAccess$601.getCount() - i) - 1;
        }
        this.mListener.onPageSelected(i);
    }

    @Override // android.support.v4.view.ViewPager$OnPageChangeListener
    public void onPageScrollStateChanged(int i) {
        this.mListener.onPageScrollStateChanged(i);
    }
}
