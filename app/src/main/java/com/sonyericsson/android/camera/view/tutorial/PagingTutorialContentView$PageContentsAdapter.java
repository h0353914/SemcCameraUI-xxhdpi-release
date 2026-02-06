package com.sonyericsson.android.camera.view.tutorial;

import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;

final class PagingTutorialContentView$PageContentsAdapter extends PagerAdapter {
    private PagingTutorialContentView$PagingTutorialContent mContent;

    public PagingTutorialContentView$PageContentsAdapter(PagingTutorialContentView$PagingTutorialContent pagingTutorialContentView$PagingTutorialContent) {
        this.mContent = pagingTutorialContentView$PagingTutorialContent;
    }

    @Override // android.support.v4.view.PagerAdapter
    public int getCount() {
        return this.mContent.mPageResources.size();
    }

    @Override // android.support.v4.view.PagerAdapter
    public boolean isViewFromObject(View view, Object obj) {
        return view.equals(obj);
    }

    @Override // android.support.v4.view.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, int i) {
        ViewGroup pageContentView = this.mContent.getPageContentView(viewGroup.getContext(), i);
        viewGroup.addView(pageContentView);
        return pageContentView;
    }

    @Override // android.support.v4.view.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        viewGroup.removeView((View) obj);
    }
}
