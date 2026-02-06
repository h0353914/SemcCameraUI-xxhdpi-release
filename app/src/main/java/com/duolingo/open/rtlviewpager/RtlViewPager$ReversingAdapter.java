package com.duolingo.open.rtlviewpager;

import android.support.annotation.NonNull;
import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;

class RtlViewPager$ReversingAdapter extends DelegatingPagerAdapter {
    final /* synthetic */ RtlViewPager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RtlViewPager$ReversingAdapter(@NonNull RtlViewPager rtlViewPager, PagerAdapter pagerAdapter) {
        super(pagerAdapter);
        this.this$0 = rtlViewPager;
    }

    @Override // com.duolingo.open.rtlviewpager.DelegatingPagerAdapter, android.support.v4.view.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        if (RtlViewPager.access$500(this.this$0)) {
            i = (getCount() - i) - 1;
        }
        super.destroyItem(viewGroup, i, obj);
    }

    @Override // com.duolingo.open.rtlviewpager.DelegatingPagerAdapter, android.support.v4.view.PagerAdapter
    public void destroyItem(View view, int i, Object obj) {
        if (RtlViewPager.access$500(this.this$0)) {
            i = (getCount() - i) - 1;
        }
        super.destroyItem(view, i, obj);
    }

    @Override // com.duolingo.open.rtlviewpager.DelegatingPagerAdapter, android.support.v4.view.PagerAdapter
    public int getItemPosition(Object obj) {
        int itemPosition = super.getItemPosition(obj);
        if (!RtlViewPager.access$500(this.this$0)) {
            return itemPosition;
        }
        if (itemPosition == -1 || itemPosition == -2) {
            return -2;
        }
        return (getCount() - itemPosition) - 1;
    }

    @Override // com.duolingo.open.rtlviewpager.DelegatingPagerAdapter, android.support.v4.view.PagerAdapter
    public CharSequence getPageTitle(int i) {
        if (RtlViewPager.access$500(this.this$0)) {
            i = (getCount() - i) - 1;
        }
        return super.getPageTitle(i);
    }

    @Override // com.duolingo.open.rtlviewpager.DelegatingPagerAdapter, android.support.v4.view.PagerAdapter
    public float getPageWidth(int i) {
        if (RtlViewPager.access$500(this.this$0)) {
            i = (getCount() - i) - 1;
        }
        return super.getPageWidth(i);
    }

    @Override // com.duolingo.open.rtlviewpager.DelegatingPagerAdapter, android.support.v4.view.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, int i) {
        if (RtlViewPager.access$500(this.this$0)) {
            i = (getCount() - i) - 1;
        }
        return super.instantiateItem(viewGroup, i);
    }

    @Override // com.duolingo.open.rtlviewpager.DelegatingPagerAdapter, android.support.v4.view.PagerAdapter
    public Object instantiateItem(View view, int i) {
        if (RtlViewPager.access$500(this.this$0)) {
            i = (getCount() - i) - 1;
        }
        return super.instantiateItem(view, i);
    }

    @Override // com.duolingo.open.rtlviewpager.DelegatingPagerAdapter, android.support.v4.view.PagerAdapter
    public void setPrimaryItem(View view, int i, Object obj) {
        if (RtlViewPager.access$500(this.this$0)) {
            i = (getCount() - i) - 1;
        }
        super.setPrimaryItem(view, i, obj);
    }

    @Override // com.duolingo.open.rtlviewpager.DelegatingPagerAdapter, android.support.v4.view.PagerAdapter
    public void setPrimaryItem(ViewGroup viewGroup, int i, Object obj) {
        if (RtlViewPager.access$500(this.this$0)) {
            i = (getCount() - i) - 1;
        }
        super.setPrimaryItem(viewGroup, i, obj);
    }
}
